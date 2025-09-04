package filters

import (
	"context"
	"io"
	"log/slog"
	"os"
	"time"

	"github.com/danielsiegl/gitsqlite/internal/logging"
	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// Clean reads a binary SQLite DB from 'in', dumps SQL via sqlite engine using
// selective table dumping to exclude sqlite_sequence, and writes SQL to 'out'.
// using temporary file for robustness, pipelining would be more efficient - but it has to survive ~500mb files
// If dataOnly is true, only data (INSERT statements) are output to 'out'.
// If schemaOutput is not empty, schema is saved to that file.
func Clean(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer, floatPrecision int, dataOnly bool, schemaOutput string) error {
	startTime := time.Now()
	slog.Info("Starting clean operation")

	tmp, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		slog.Error("Failed to create temp file", "error", err)
		return err
	}
	defer os.Remove(tmp.Name())

	copyStart := time.Now()
	if _, err := io.Copy(tmp, in); err != nil {
		_ = tmp.Close()
		slog.Error("Failed to copy input to temp file", "error", err)
		return err
	}
	copyDuration := time.Since(copyStart)
	slog.Info("Copied input to temp file", "duration", logging.FormatDuration(copyDuration))

	if err := tmp.Close(); err != nil {
		slog.Error("Failed to close temp file", "error", err)
		return err
	}

	// Use SQLite native selective dumping instead of post-processing filter
	dumpStart := time.Now()

	// Create a cancelable context for the dump operation
	dumpCtx, dumpCancel := context.WithTimeout(ctx, 60*time.Second)
	defer dumpCancel()

	slog.Info("Starting SQLite selective dump", "dbPath", tmp.Name())

	// Save schema to separate file if requested
	if schemaOutput != "" {
		schemaFile, err := os.Create(schemaOutput)
		if err != nil {
			slog.Error("Failed to create schema output file", "file", schemaOutput, "error", err)
			return err
		}
		defer schemaFile.Close()

		if err := DumpSchema(dumpCtx, eng, tmp.Name(), schemaFile); err != nil {
			slog.Error("Schema dump failed", "error", err)
			return err
		}
		slog.Info("Schema saved to file", "file", schemaOutput)
	}

	// Use the new selective dumping method that excludes sqlite_sequence natively
	// This now uses the logical filtering function from the filters package
	// When schema is saved to a separate file, only output data to stdout
	outputDataOnly := dataOnly || (schemaOutput != "")
	if err := DumpTables(dumpCtx, eng, tmp.Name(), out, floatPrecision, outputDataOnly); err != nil {
		slog.Error("SQLite selective dump failed", "error", err)
		return err
	}

	dumpDuration := time.Since(dumpStart)
	totalDuration := time.Since(startTime)

	slog.Info("Clean operation completed",
		"totalDuration", logging.FormatDuration(totalDuration),
		"copyDuration", logging.FormatDuration(copyDuration),
		"dumpDuration", logging.FormatDuration(dumpDuration))

	return nil
}

package filters

import (
	"context"
	"io"
	"log/slog"
	"os"
	"time"

	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// Diff streams a binary SQLite DB from 'in' directly into sqlite3 .dump and writes SQL to 'out'.
// No temp file is created; input is piped to sqlite3 and output is streamed to stdout.
// If dataOnly is true, only data (INSERT statements) are output.
// If schemaOutput is not empty, schema is saved to that file.
func Diff(ctx context.Context, eng *sqlite.Engine, dbFile string, out io.Writer, dataOnly bool, schemaOutput string) error {
	startTime := time.Now()
	slog.Info("Starting diff operation")

	// Save schema to separate file if requested
	if schemaOutput != "" {
		schemaFile, err := os.Create(schemaOutput)
		if err != nil {
			slog.Error("Failed to create schema output file", "file", schemaOutput, "error", err)
			return err
		}
		defer schemaFile.Close()

		if err := DumpSchema(ctx, eng, dbFile, schemaFile); err != nil {
			slog.Error("Schema dump failed", "error", err)
			return err
		}
		slog.Info("Schema saved to file", "file", schemaOutput)
	}

	// For data output, use DumpTables with filtering
	// When schema is saved to a separate file, only output data to stdout
	outputDataOnly := dataOnly || (schemaOutput != "")
	if err := DumpTables(ctx, eng, dbFile, out, 9, outputDataOnly); err != nil {
		slog.Error("Diff dump failed", "error", err)
		return err
	}

	slog.Info("Diff operation completed", "duration", time.Since(startTime))
	return nil
}

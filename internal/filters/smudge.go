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

// Smudge reads SQL from 'in', restores into a temporary SQLite DB using the engine,
// then streams the resulting DB bytes to 'out'.
// If schemaFile is not empty and the file exists, schema is read from that file 
// and combined with data from 'in'.
func Smudge(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer, schemaFile string) error {
	startTime := time.Now()
	slog.Info("Starting smudge operation")

	tmp, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		slog.Error("Failed to create temp file", "error", err)
		return err
	}
	tmpPath := tmp.Name()
	_ = tmp.Close()
	defer os.Remove(tmpPath)

	restoreStart := time.Now()
	
	// If schema file is specified and exists, combine schema + data
	if schemaFile != "" {
		if _, err := os.Stat(schemaFile); err == nil {
			slog.Info("Combining schema from file with data from stdin", "schemaFile", schemaFile)
			
			// Create a combined reader: schema first, then data
			schemaFileReader, err := os.Open(schemaFile)
			if err != nil {
				slog.Error("Failed to open schema file", "file", schemaFile, "error", err)
				return err
			}
			defer schemaFileReader.Close()
			
			// Combine schema and data streams
			combinedReader := io.MultiReader(schemaFileReader, in)
			
			if err := eng.Restore(ctx, tmpPath, combinedReader); err != nil {
				slog.Error("SQLite restore with schema file failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
				return err
			}
		} else {
			slog.Info("Schema file not found, proceeding with data-only restore", "schemaFile", schemaFile)
			if err := eng.Restore(ctx, tmpPath, in); err != nil {
				slog.Error("SQLite restore failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
				return err
			}
		}
	} else {
		// Normal restore without schema file
		if err := eng.Restore(ctx, tmpPath, in); err != nil {
			slog.Error("SQLite restore failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
			return err
		}
	}
	restoreDuration := time.Since(restoreStart)
	slog.Info("SQLite restore completed", "duration", logging.FormatDuration(restoreDuration))

	copyStart := time.Now()
	f, err := os.Open(tmpPath)
	if err != nil {
		slog.Error("Failed to open restored database", "error", err)
		return err
	}
	defer f.Close()

	// Read the entire database into memory for chunked writing
	dbData, err := io.ReadAll(f)
	if err != nil {
		slog.Error("Failed to read restored database", "error", err)
		return err
	}

	// Use chunked writing with timeout protection for smudge output
	err = eng.WriteWithTimeoutAndChunking(out, dbData, "smudge")
	copyDuration := time.Since(copyStart)
	totalDuration := time.Since(startTime)

	if err != nil {
		slog.Error("Smudge operation failed", "error", err, "totalDuration", logging.FormatDuration(totalDuration))
	} else {
		slog.Info("Smudge operation completed",
			"totalDuration", logging.FormatDuration(totalDuration),
			"restoreDuration", logging.FormatDuration(restoreDuration),
			"copyDuration", logging.FormatDuration(copyDuration))
	}

	return err
}

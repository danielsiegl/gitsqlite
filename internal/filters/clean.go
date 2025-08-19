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
func Clean(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer) error {
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

	// Use the new selective dumping method that excludes sqlite_sequence natively
	if err := eng.DumpSelectiveTables(dumpCtx, tmp.Name(), out); err != nil {
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

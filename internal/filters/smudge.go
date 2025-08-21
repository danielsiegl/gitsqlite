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
func Smudge(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer) error {
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
	if err := eng.Restore(ctx, tmpPath, in); err != nil {
		slog.Error("SQLite restore failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
		return err
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

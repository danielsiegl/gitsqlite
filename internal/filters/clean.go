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

// Clean reads a binary SQLite DB from 'in', dumps SQL via sqlite engine,
// filters unstable sqlite_sequence lines, and writes SQL to 'out'.
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

	dumpStart := time.Now()
	pr, pw := io.Pipe()
	// Run the dump in a goroutine so we can stream-filter.
	go func() {
		defer pw.Close()
		if derr := eng.Dump(ctx, tmp.Name(), pw); derr != nil {
			slog.Error("SQLite dump failed", "error", derr)
			_ = pw.CloseWithError(derr)
		} else {
			slog.Info("SQLite dump completed", "duration", logging.FormatDuration(time.Since(dumpStart)))
		}
	}()

	filterStart := time.Now()
	err = FilterSqliteSequence(pr, out)
	filterDuration := time.Since(filterStart)
	totalDuration := time.Since(startTime)

	if err != nil {
		slog.Error("Clean operation failed", "error", err, "totalDuration", logging.FormatDuration(totalDuration))
	} else {
		slog.Info("Clean operation completed",
			"totalDuration", logging.FormatDuration(totalDuration),
			"copyDuration", logging.FormatDuration(copyDuration),
			"filterDuration", logging.FormatDuration(filterDuration))
	}

	return err
}

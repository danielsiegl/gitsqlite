package filters

import (
	"context"
	"fmt"
	"io"
	"log/slog"
	"os"
	"strings"
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

	// Create a cancelable context for the dump operation
	dumpCtx, dumpCancel := context.WithTimeout(ctx, 60*time.Second)
	defer dumpCancel()

	// Run the dump in a goroutine so we can stream-filter
	dumpDone := make(chan error, 1)
	go func() {
		defer pw.Close()
		slog.Info("Starting SQLite dump goroutine", "dbPath", tmp.Name())
		if derr := eng.Dump(dumpCtx, tmp.Name(), pw); derr != nil {
			slog.Error("SQLite dump failed", "error", derr)
			dumpDone <- derr
			_ = pw.CloseWithError(derr)
		} else {
			slog.Info("SQLite dump completed", "duration", logging.FormatDuration(time.Since(dumpStart)))
			dumpDone <- nil
		}
		slog.Info("SQLite dump goroutine finished")
	}()

	// Monitor for broken pipe during filtering
	filterStart := time.Now()
	filterDone := make(chan error, 1)
	go func() {
		slog.Info("Starting filter goroutine")
		filterDone <- FilterSqliteSequence(pr, out)
		slog.Info("Filter goroutine finished")
	}()

	// Wait for either filter completion or dump completion
	slog.Info("Starting to monitor dump and filter operations")
	var filterErr error
	select {
	case filterErr = <-filterDone:
		// Filter completed (may be due to broken pipe)
		slog.Info("Filter operation completed", "error", filterErr)
		if filterErr != nil && strings.Contains(filterErr.Error(), "broken pipe") {
			// Cancel the dump immediately when broken pipe detected
			dumpCancel()
			slog.Info("Cancelling SQLite dump due to broken pipe")
		}
	case dumpErr := <-dumpDone:
		// Dump completed first
		slog.Info("Dump operation completed", "error", dumpErr)
		if dumpErr != nil {
			filterErr = dumpErr
		} else {
			// Wait for filter to complete
			slog.Info("Waiting for filter to complete")
			filterErr = <-filterDone
		}
	case <-time.After(30 * time.Second):
		// Timeout - something is hanging
		slog.Error("Operations timed out - cancelling dump")
		dumpCancel()
		filterErr = fmt.Errorf("operations timed out after 30 seconds")
	}
	filterDuration := time.Since(filterStart)
	totalDuration := time.Since(startTime)

	if filterErr != nil {
		slog.Error("Clean operation failed", "error", filterErr, "totalDuration", logging.FormatDuration(totalDuration))
	} else {
		slog.Info("Clean operation completed",
			"totalDuration", logging.FormatDuration(totalDuration),
			"copyDuration", logging.FormatDuration(copyDuration),
			"filterDuration", logging.FormatDuration(filterDuration))
	}

	return filterErr
}

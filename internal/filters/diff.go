package filters

import (
	"context"
	"fmt"
	"io"
	"log/slog"
	"os/exec"
	"strings"
	"time"

	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// Diff streams a binary SQLite DB from 'in' directly into sqlite3 .dump and writes SQL to 'out'.
// No temp file is created; input is piped to sqlite3 and output is streamed to stdout.
func Diff(ctx context.Context, eng *sqlite.Engine, dbFile string, out io.Writer) error {
	startTime := time.Now()
	slog.Info("Starting diff operation")

	binaryPath, err := eng.GetBinPath()
	if err != nil {
		slog.Error("Failed to get sqlite3 binary", "error", err)
		return err
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbFile, ".dump")
	stdoutPipe, err := cmd.StdoutPipe()
	if err != nil {
		slog.Error("Failed to get stdout pipe", "error", err)
		return err
	}
	var stderr strings.Builder
	cmd.Stderr = &stderr

	if err := cmd.Start(); err != nil {
		slog.Error("Failed to start sqlite3 diff", "error", err)
		return err
	}

	if _, err := io.Copy(out, stdoutPipe); err != nil {
		return fmt.Errorf("error copying diff output: %w", err)
	}

	if err := cmd.Wait(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return fmt.Errorf("sqlite3 diff failed: %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("sqlite3 diff failed: %w", err)
	}

	slog.Info("Diff operation completed", "duration", time.Since(startTime))
	return nil
}

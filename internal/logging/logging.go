package logging

import (
	"fmt"
	"io"
	"log/slog"
	"os"
	"path/filepath"
	"time"

	"github.com/google/uuid"
)

// Setup configures a JSON slog logger.
// logDir:
//
//	""       -> discard
//	"stderr" -> stderr
//	other    -> file in that directory
func Setup(logDir string) (*slog.Logger, func()) {
	var w io.Writer
	cleanup := func() {}

	if logDir != "" && logDir != "stderr" {
		fn := filepath.Join(logDir, fmt.Sprintf("gitsqlite_%s_%d_%s.log",
			time.Now().UTC().Format("20060102T150405.000Z07:00"),
			os.Getpid(), uuid.NewString()))
		f, err := os.OpenFile(fn, os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0o644)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Warning: Failed to create log file %s: %v\n", fn, err)
			w = os.Stderr
		} else {
			w = f
			cleanup = func() { _ = f.Sync(); _ = f.Close() }
		}
	} else if logDir == "stderr" {
		w = os.Stderr
	} else {
		w = io.Discard
	}

	lv := new(slog.LevelVar)
	lv.Set(slog.LevelDebug)
	logger := slog.New(slog.NewJSONHandler(w, &slog.HandlerOptions{Level: lv})).
		With("invocation_id", uuid.NewString(), "pid", os.Getpid())
	return logger, cleanup
}

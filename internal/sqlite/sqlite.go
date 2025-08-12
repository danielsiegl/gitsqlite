package sqlite

import (
	"context"
	"io"
	"os/exec"
)

// Engine shells out to a sqlite3 binary.
type Engine struct {
	Bin string
}

func (e *Engine) Restore(ctx context.Context, dbPath string, sql io.Reader) error {
	cmd := exec.CommandContext(ctx, e.Bin, dbPath)
	cmd.Stdin = sql
	return cmd.Run()
}

func (e *Engine) Dump(ctx context.Context, dbPath string, out io.Writer) error {
	cmd := exec.CommandContext(ctx, e.Bin, dbPath, ".dump")
	cmd.Stdout = out
	return cmd.Run()
}

package filters

import (
	"context"
	"io"
	"os"

	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// Smudge reads SQL from 'in', restores into a temporary SQLite DB using the engine,
// then streams the resulting DB bytes to 'out'.
func Smudge(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer) error {
	tmp, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		return err
	}
	tmpPath := tmp.Name()
	_ = tmp.Close()
	defer os.Remove(tmpPath)

	if err := eng.Restore(ctx, tmpPath, in); err != nil {
		return err
	}
	f, err := os.Open(tmpPath)
	if err != nil {
		return err
	}
	defer f.Close()
	_, err = io.Copy(out, f)
	return err
}

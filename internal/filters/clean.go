package filters

import (
	"context"
	"io"
	"os"

	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// Clean reads a binary SQLite DB from 'in', dumps SQL via sqlite engine,
// filters unstable sqlite_sequence lines, and writes SQL to 'out'.
func Clean(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer) error {
	tmp, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		return err
	}
	defer os.Remove(tmp.Name())

	if _, err := io.Copy(tmp, in); err != nil {
		_ = tmp.Close()
		return err
	}
	if err := tmp.Close(); err != nil {
		return err
	}

	pr, pw := io.Pipe()
	// Run the dump in a goroutine so we can stream-filter.
	go func() {
		defer pw.Close()
		if derr := eng.Dump(ctx, tmp.Name(), pw); derr != nil {
			_ = pw.CloseWithError(derr)
		}
	}()
	return FilterSqliteSequence(pr, out)
}

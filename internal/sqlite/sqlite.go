package sqlite

import (
	"context"
	"fmt"
	"io"
	"os/exec"
	"strings"
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

// ValidateBinary checks if the SQLite binary is available and accessible
func (e *Engine) ValidateBinary() error {
	_, err := exec.LookPath(e.Bin)
	return err
}

// GetVersion returns the version of the SQLite binary
func (e *Engine) GetVersion() (string, error) {
	cmd := exec.Command(e.Bin, "-version")
	output, err := cmd.Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(output)), nil
}

// GetPath returns the full path to the SQLite binary
func (e *Engine) GetPath() (string, error) {
	return exec.LookPath(e.Bin)
}

// CheckAvailability performs a comprehensive check of SQLite availability and returns detailed information
func (e *Engine) CheckAvailability() (path string, version string, err error) {
	path, err = e.GetPath()
	if err != nil {
		return "", "", fmt.Errorf("SQLite executable '%s' not found in PATH: %w", e.Bin, err)
	}
	
	version, err = e.GetVersion()
	if err != nil {
		return path, "", fmt.Errorf("failed to get SQLite version: %w", err)
	}
	
	return path, version, nil
}

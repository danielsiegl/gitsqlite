// WriteWithTimeout writes a single line to the output writer with timeout protection
// Package sqlite provides SQLite database operations with enhanced binary detection.
//
// This package automatically detects SQLite binaries from multiple sources:
// - Standard PATH lookup
// - Windows: WinGet package manager locations (user and system installations)
// - Linux: Standard apt installation paths (/usr/bin, /usr/local/bin, etc.)
//
// The enhanced detection ensures SQLite binaries are found even when they're
// installed via package managers but not in the current PATH.
package sqlite

import (
	"context"
	"fmt"
	"io"
	"log/slog"
	"os/exec"
	"regexp"
	"runtime"
	"strings"
)

// Engine shells out to a sqlite3 binary.
type Engine struct {
	Bin string
}

func (e *Engine) Restore(ctx context.Context, dbPath string, sql io.Reader) error {

	binaryPath, _ := e.GetBinPath()

	cmd := exec.CommandContext(ctx, binaryPath, dbPath)
	cmd.Stdin = sql
	return cmd.Run()
}

// DumpTables dumps only user tables (excluding sqlite_sequence) using simple .dump and filtering
func (e *Engine) DumpTables(ctx context.Context, dbPath string, out io.Writer) error {

	binaryPath, _ := e.GetBinPath()

	// Simply run .dump and capture all output
	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")

	var stdout strings.Builder
	var stderr strings.Builder
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	slog.Debug("Starting SQLite .dump command")

	if err := cmd.Run(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return fmt.Errorf("SQLite dump failed: %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("SQLite dump failed: %w", err)
	}

	// Get the full dump output and filter out sqlite_sequence table
	fullDump := stdout.String()

	// Split on both CRLF and LF using regexp for platform independence
	lineSplitter := regexp.MustCompile("\r?\n")
	lines := lineSplitter.Split(fullDump, -1)
	for _, line := range lines {
		// Skip CREATE TABLE sqlite_sequence line
		if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
			continue
		}
		// Skip INSERT INTO sqlite_sequence lines
		if strings.Contains(line, "INSERT INTO sqlite_sequence") || strings.Contains(line, "INSERT INTO \"sqlite_sequence\"") {
			continue
		}

		// writing every line is not most efficient but safer with closing pipes and hangs that migh occur
		if err := e.WriteWithTimeout(out, []byte(line+"\n"), "clean"); err != nil {
			return err
		}
	}

	slog.Debug("DumpTables completed successfully")
	return nil
}

// ValidateBinary checks if the SQLite binary is available and accessible, including package manager locations
func (e *Engine) ValidateBinary() error {
	_, err := e.GetBinPath()
	return err
}

// CheckAvailability performs a comprehensive check of SQLite availability and returns detailed information
func (e *Engine) CheckAvailability() (path string, version string, err error) {
	path, err = e.GetBinPath()
	if err != nil {
		return "", "", err
	}

	cmd := exec.Command(path, "-version")
	output, vErr := cmd.Output()
	if vErr != nil {
		return path, "", fmt.Errorf("failed to get SQLite version: %w", vErr)
	}
	version = strings.TrimSpace(string(output))
	return path, version, nil
}

// GetBinPath returns the full path to the SQLite binary, checking package manager locations
func (e *Engine) GetBinPath() (string, error) {
	// Return cached path if available
	if e.Bin != "" {
		return e.Bin, nil
	}
	// First try the standard PATH lookup
	path, err := exec.LookPath(e.Bin)
	if err == nil {
		return path, nil
	}

	// Platform-specific fallback searches for sqlite3
	if e.Bin == "sqlite3" {
		var fallbackPath string
		var fallbackErr error

		switch runtime.GOOS {
		case "windows":
			fallbackPath, fallbackErr = e.findSQLiteInWinGet()
		case "linux":
			fallbackPath, fallbackErr = e.findSQLiteInApt()
		default:
			// For other platforms, return the original PATH error
			return "", err
		}

		if fallbackErr == nil {
			return fallbackPath, nil
		}

		// Return combined error message
		return "", fmt.Errorf("SQLite executable '%s' not found in PATH or package manager locations. PATH error: %v. Package manager search error: %v", e.Bin, err, fallbackErr)
	}

	// For non-sqlite3 binary names, return original error
	return "", err
}

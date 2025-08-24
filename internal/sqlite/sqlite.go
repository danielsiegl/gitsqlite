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
	"bufio"
	"context"
	"fmt"
	"io"
	"log/slog"
	"os/exec"
	"regexp"
	"runtime"
	"strconv"
	"strings"
)

// Engine shells out to a sqlite3 binary.
type Engine struct {
	Bin string
}

// at top of file
var (
	// Match decimal floats in INSERT lines (simple & fast).
	// We limit normalization to INSERT lines to avoid touching DDL, comments, etc.
	floatRe = regexp.MustCompile(`-?\d+\.\d+`)
	// Choose your fixed precision for dumps (2 for money, 6/9/etc. otherwise).
	floatDigits = 9
)

func normalizeLine(line string) string {
	trimmed := strings.TrimSpace(line)
	// Only normalize INSERT lines (where values live)
	if !strings.HasPrefix(trimmed, "INSERT INTO") {
		return line
	}

	// Normalize floats to fixed precision using Go's consistent formatter.
	line = floatRe.ReplaceAllStringFunc(line, func(m string) string {
		f, err := strconv.ParseFloat(m, 64)
		if err != nil {
			return m // leave as-is if somehow unparsable
		}
		// 'f' => decimal, fixed number of digits after the decimal point.
		return strconv.FormatFloat(f, 'f', floatDigits, 64)
	})

	return line
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

	// Run .dump and stream output line by line
	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")
	stdoutPipe, err := cmd.StdoutPipe()
	if err != nil {
		return fmt.Errorf("failed to get stdout pipe: %w", err)
	}
	var stderr strings.Builder
	cmd.Stderr = &stderr

	slog.Debug("Starting SQLite .dump command")

	if err := cmd.Start(); err != nil {
		return fmt.Errorf("failed to start SQLite dump: %w", err)
	}

	reader := bufio.NewReader(stdoutPipe)
	for {
		line, readErr := reader.ReadString('\n')
		if len(line) == 0 && readErr != nil {
			break
		}
		// this way it should work with CRLF and LF
		line = strings.TrimRight(line, "\n")
		line = strings.TrimRight(line, "\r")
		// Skip CREATE TABLE sqlite_sequence line
		if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
			continue
		}
		// Skip INSERT INTO sqlite_sequence lines
		if strings.Contains(line, "INSERT INTO sqlite_sequence") || strings.Contains(line, "INSERT INTO \"sqlite_sequence\"") {
			continue
		}

		// **Normalize here**
		// make sure floating point is rendered the same on linux and windows
		line = normalizeLine(line)

		// we probably could have kept LF - but it is easier to read like that
		if err := e.WriteWithTimeout(out, []byte(line+"\n"), "clean"); err != nil {
			return err
		}
		if readErr != nil {
			if readErr == io.EOF {
				break
			}
			return fmt.Errorf("error reading dump output: %w", readErr)
		}
	}

	if err := cmd.Wait(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return fmt.Errorf("SQLite dump failed: %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("SQLite dump failed: %w", err)
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

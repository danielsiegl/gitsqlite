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
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

// Engine shells out to a sqlite3 binary.
type Engine struct {
	Bin        string
	cachedPath string // Cache the binary path to avoid repeated expensive lookups
}

// getCachedPath returns the cached binary path or performs lookup if not cached
func (e *Engine) getCachedPath() (string, error) {
	if e.cachedPath != "" {
		return e.cachedPath, nil
	}

	// Perform the expensive lookup only once
	path, err := e.GetPathWithPackageManager()
	if err != nil {
		return "", err
	}

	// Cache the result
	e.cachedPath = path
	return path, nil
}

func (e *Engine) Restore(ctx context.Context, dbPath string, sql io.Reader) error {
	// Use cached path lookup to avoid expensive repeated lookups
	binaryPath, err := e.getCachedPath()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath)
	cmd.Stdin = sql
	return cmd.Run()
}

// DumpSelectiveTables dumps only user tables (excluding sqlite_sequence) using simple .dump and filtering
func (e *Engine) DumpSelectiveTables(ctx context.Context, dbPath string, out io.Writer) error {
	slog.Debug("DumpSelectiveTables method called")

	// Use cached path lookup
	binaryPath, err := e.getCachedPath()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

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

	// Convert CRLF to LF for platform independence
	cleanDump := strings.ReplaceAll(fullDump, "\r\n", "\n") // Filter out sqlite_sequence table lines
	lines := strings.Split(cleanDump, "\n")
	var filteredLines []string

	for _, line := range lines {
		// Skip CREATE TABLE sqlite_sequence line
		if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
			continue
		}
		// Skip INSERT INTO sqlite_sequence lines
		if strings.Contains(line, "INSERT INTO sqlite_sequence") || strings.Contains(line, "INSERT INTO \"sqlite_sequence\"") {
			continue
		}

		filteredLines = append(filteredLines, line)
	}

	// Write the filtered output
	filteredDump := strings.Join(filteredLines, "\n")
	_, err = out.Write([]byte(filteredDump))

	slog.Debug("DumpSelectiveTables completed successfully")
	return err
}

// ValidateBinary checks if the SQLite binary is available and accessible, including package manager locations
func (e *Engine) ValidateBinary() error {
	_, err := e.GetPathWithPackageManager()
	return err
}

// GetVersion returns the version of the SQLite binary, using enhanced path lookup
func (e *Engine) GetVersion() (string, error) {
	// Use the enhanced path lookup to find the binary
	binaryPath, err := e.GetPathWithPackageManager()
	if err != nil {
		return "", err
	}

	cmd := exec.Command(binaryPath, "-version")
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

// getLinuxAptSQLitePaths returns common apt SQLite installation paths on Linux
func getLinuxAptSQLitePaths() []string {
	if runtime.GOOS != "linux" {
		return nil
	}

	// Common locations where apt installs sqlite3
	return []string{
		"/usr/bin/sqlite3",
		"/usr/local/bin/sqlite3",
		"/bin/sqlite3",
		"/usr/sbin/sqlite3",
	}
}

// getWinGetSQLitePaths returns common WinGet SQLite installation paths on Windows
func getWinGetSQLitePaths() []string {
	if runtime.GOOS != "windows" {
		return nil
	}

	paths := []string{}

	// Common SQLite package directory patterns
	sqlitePatterns := []string{
		"SQLite.SQLite_Microsoft.Winget.Source_*",
		"SQLite.SQLite_*",
	}

	// 1. User-level installation (non-elevated)
	userProfile := os.Getenv("USERPROFILE")
	if userProfile != "" {
		userWinGetPath := filepath.Join(userProfile, "AppData", "Local", "Microsoft", "WinGet", "Packages")

		for _, pattern := range sqlitePatterns {
			fullPattern := filepath.Join(userWinGetPath, pattern)
			matches, err := filepath.Glob(fullPattern)
			if err == nil {
				for _, match := range matches {
					paths = append(paths, filepath.Join(match, "sqlite3.exe"))
				}
			}
		}
	}

	// 2. System-level installation (elevated/admin)
	programFiles := os.Getenv("ProgramFiles")
	if programFiles != "" {
		systemWinGetPath := filepath.Join(programFiles, "WinGet", "Packages")

		for _, pattern := range sqlitePatterns {
			fullPattern := filepath.Join(systemWinGetPath, pattern)
			matches, err := filepath.Glob(fullPattern)
			if err == nil {
				for _, match := range matches {
					paths = append(paths, filepath.Join(match, "sqlite3.exe"))
				}
			}
		}
	}

	// 3. Alternative system location (some versions use this)
	programData := os.Getenv("ProgramData")
	if programData != "" {
		altSystemWinGetPath := filepath.Join(programData, "Microsoft", "WinGet", "Packages")

		for _, pattern := range sqlitePatterns {
			fullPattern := filepath.Join(altSystemWinGetPath, pattern)
			matches, err := filepath.Glob(fullPattern)
			if err == nil {
				for _, match := range matches {
					paths = append(paths, filepath.Join(match, "sqlite3.exe"))
				}
			}
		}
	}

	return paths
}

// findSQLiteInApt searches for SQLite in apt installation directories
func (e *Engine) findSQLiteInApt() (string, error) {
	if runtime.GOOS != "linux" {
		return "", fmt.Errorf("apt search only available on Linux")
	}

	paths := getLinuxAptSQLitePaths()
	for _, path := range paths {
		if _, err := os.Stat(path); err == nil {
			// Test if the executable works
			cmd := exec.Command(path, "-version")
			if err := cmd.Run(); err == nil {
				return path, nil
			}
		}
	}

	return "", fmt.Errorf("SQLite not found in standard apt installation directories")
}

// findSQLiteInWinGet searches for SQLite in WinGet installation directories
func (e *Engine) findSQLiteInWinGet() (string, error) {
	if runtime.GOOS != "windows" {
		return "", fmt.Errorf("WinGet search only available on Windows")
	}

	paths := getWinGetSQLitePaths()
	for _, path := range paths {
		if _, err := os.Stat(path); err == nil {
			// Test if the executable works
			cmd := exec.Command(path, "-version")
			if err := cmd.Run(); err == nil {
				return path, nil
			}
		}
	}

	return "", fmt.Errorf("SQLite not found in WinGet installation directories")
}

// GetPathWithPackageManager returns the full path to the SQLite binary, checking package manager locations
func (e *Engine) GetPathWithPackageManager() (string, error) {
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

// CheckAvailability performs a comprehensive check of SQLite availability and returns detailed information
func (e *Engine) CheckAvailability() (path string, version string, err error) {
	path, err = e.GetPathWithPackageManager()
	if err != nil {
		return "", "", err
	}

	version, err = e.GetVersion()
	if err != nil {
		return path, "", fmt.Errorf("failed to get SQLite version: %w", err)
	}

	return path, version, nil
}

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
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

// Engine shells out to a sqlite3 binary.
type Engine struct {
	Bin string
}

func (e *Engine) Restore(ctx context.Context, dbPath string, sql io.Reader) error {
	// Use enhanced path lookup to find the binary
	binaryPath, err := e.GetPathWithPackageManager()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath)
	cmd.Stdin = sql
	return cmd.Run()
}

func (e *Engine) Dump(ctx context.Context, dbPath string, out io.Writer) error {
	// Use enhanced path lookup to find the binary
	binaryPath, err := e.GetPathWithPackageManager()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")
	cmd.Stdout = out
	return cmd.Run()
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

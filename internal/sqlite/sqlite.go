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
	binaryPath, err := e.GetPathWithWinGet()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath)
	cmd.Stdin = sql
	return cmd.Run()
}

func (e *Engine) Dump(ctx context.Context, dbPath string, out io.Writer) error {
	// Use enhanced path lookup to find the binary
	binaryPath, err := e.GetPathWithWinGet()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")
	cmd.Stdout = out
	return cmd.Run()
}

// ValidateBinary checks if the SQLite binary is available and accessible, including WinGet locations on Windows
func (e *Engine) ValidateBinary() error {
	_, err := e.GetPathWithWinGet()
	return err
}

// GetVersion returns the version of the SQLite binary, using enhanced path lookup
func (e *Engine) GetVersion() (string, error) {
	// Use the enhanced path lookup to find the binary
	binaryPath, err := e.GetPathWithWinGet()
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

// getWinGetSQLitePaths returns common WinGet SQLite installation paths on Windows
func getWinGetSQLitePaths() []string {
	if runtime.GOOS != "windows" {
		return nil
	}

	paths := []string{}

	// Get user profile directory
	userProfile := os.Getenv("USERPROFILE")
	if userProfile != "" {
		// WinGet installs SQLite to user's local packages directory
		wingetPath := filepath.Join(userProfile, "AppData", "Local", "Microsoft", "WinGet", "Packages")

		// Common SQLite package directory patterns
		sqlitePatterns := []string{
			"SQLite.SQLite_Microsoft.Winget.Source_*",
			"SQLite.SQLite_*",
		}

		for _, pattern := range sqlitePatterns {
			fullPattern := filepath.Join(wingetPath, pattern)
			matches, err := filepath.Glob(fullPattern)
			if err == nil {
				for _, match := range matches {
					// Only look for sqlite3.exe
					paths = append(paths, filepath.Join(match, "sqlite3.exe"))
				}
			}
		}
	}

	return paths
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

// GetPathWithWinGet returns the full path to the SQLite binary, checking WinGet locations on Windows
func (e *Engine) GetPathWithWinGet() (string, error) {
	// First try the standard PATH lookup
	path, err := exec.LookPath(e.Bin)
	if err == nil {
		return path, nil
	}

	// On Windows, if standard lookup fails and we're looking for sqlite3, check WinGet locations
	if runtime.GOOS == "windows" && e.Bin == "sqlite3" {
		wingetPath, wingetErr := e.findSQLiteInWinGet()
		if wingetErr == nil {
			return wingetPath, nil
		}

		// Return combined error message
		return "", fmt.Errorf("SQLite executable '%s' not found in PATH or WinGet locations. PATH error: %v. WinGet search error: %v", e.Bin, err, wingetErr)
	}

	// For non-Windows or non-sqlite3 binary names, return original error
	return "", err
}

// CheckAvailability performs a comprehensive check of SQLite availability and returns detailed information
func (e *Engine) CheckAvailability() (path string, version string, err error) {
	path, err = e.GetPathWithWinGet()
	if err != nil {
		return "", "", err
	}

	version, err = e.GetVersion()
	if err != nil {
		return path, "", fmt.Errorf("failed to get SQLite version: %w", err)
	}

	return path, version, nil
}

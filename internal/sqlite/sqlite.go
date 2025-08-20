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

func (e *Engine) Dump(ctx context.Context, dbPath string, out io.Writer) error {
	// Add debug logging using slog
	slog.Debug("Dump method called, starting cached path lookup")

	// Use cached path lookup to avoid expensive repeated lookups
	binaryPath, err := e.getCachedPath()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	slog.Debug("Binary path found", "path", binaryPath)

	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")
	cmd.Stdout = out

	// Capture stderr to see SQLite error messages
	var stderr strings.Builder
	cmd.Stderr = &stderr

	// Add debug logging using slog
	slog.Debug("Starting SQLite command", "command", binaryPath, "database", dbPath)

	err = cmd.Run()

	slog.Debug("SQLite command completed", "error", err)
	if err != nil {
		stderrOutput := stderr.String()
		slog.Debug("SQLite stderr output", "stderr", stderrOutput)
		if stderrOutput != "" {
			return fmt.Errorf("SQLite dump failed (exit code error): %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("SQLite dump failed: %w", err)
	}

	return nil
}

// DumpSelectiveTables dumps only user tables (excluding sqlite_sequence) using SQLite native commands
func (e *Engine) DumpSelectiveTables(ctx context.Context, dbPath string, out io.Writer) error {
	slog.Debug("DumpSelectiveTables method called")

	// Use cached path lookup
	binaryPath, err := e.getCachedPath()
	if err != nil {
		return fmt.Errorf("SQLite binary not found: %w", err)
	}

	// Get list of user tables (excluding sqlite_* system tables)
	userTables, err := e.getUserTables(ctx, dbPath)
	if err != nil {
		return fmt.Errorf("failed to get user tables: %w", err)
	}

	if len(userTables) == 0 {
		slog.Debug("No user tables found, performing empty dump")
		// Write minimal SQLite dump structure
		_, err := out.Write([]byte("PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCOMMIT;\n"))
		return err
	}

	slog.Debug("Found user tables", "count", len(userTables))

	// Write SQLite dump header
	if _, err := out.Write([]byte("PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\n")); err != nil {
		return fmt.Errorf("failed to write dump header: %w", err)
	}

	// Process tables in batches to avoid command line length limits
	batchSize := 50 // Increased from 20 since our implementation already handles this
	for i := 0; i < len(userTables); i += batchSize {
		end := i + batchSize
		if end > len(userTables) {
			end = len(userTables)
		}
		batch := userTables[i:end]

		slog.Debug("Processing table batch", "batch", (i/batchSize)+1, "tables", len(batch))

		if err := e.dumpTableBatch(ctx, binaryPath, dbPath, batch, out); err != nil {
			return fmt.Errorf("failed to dump table batch: %w", err)
		}
	}

	// Write SQLite dump footer
	if _, err := out.Write([]byte("COMMIT;\n")); err != nil {
		return fmt.Errorf("failed to write dump footer: %w", err)
	}

	slog.Debug("DumpSelectiveTables completed successfully")
	return nil
}

// getUserTables gets the list of user tables (excluding sqlite_* system tables)
func (e *Engine) getUserTables(ctx context.Context, dbPath string) ([]string, error) {
	binaryPath, err := e.getCachedPath()
	if err != nil {
		return nil, err
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath, "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name;")

	var stdout strings.Builder
	var stderr strings.Builder
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr

	if err := cmd.Run(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return nil, fmt.Errorf("failed to query tables: %s: %w", stderrOutput, err)
		}
		return nil, fmt.Errorf("failed to query tables: %w", err)
	}

	output := strings.TrimSpace(stdout.String())
	if output == "" {
		return []string{}, nil
	}

	tables := strings.Split(output, "\n")
	// Clean up any extra whitespace
	for i, table := range tables {
		tables[i] = strings.TrimSpace(table)
	}

	return tables, nil
}

// dumpTableBatch dumps a batch of tables using SQLite .dump command with streaming output
func (e *Engine) dumpTableBatch(ctx context.Context, binaryPath, dbPath string, tables []string, out io.Writer) error {
	if len(tables) == 0 {
		return nil
	}

	// Build the SQLite command script
	tableList := strings.Join(tables, " ")

	// Build script with cross-platform compatibility
	// Note: .crlf command only exists on Windows SQLite builds
	var script string
	if runtime.GOOS == "windows" {
		script = fmt.Sprintf(".crlf OFF\n.dump %s\n", tableList)
	} else {
		// On Unix systems, SQLite uses LF by default, so no .crlf command needed
		script = fmt.Sprintf(".dump %s\n", tableList)
	}

	cmd := exec.CommandContext(ctx, binaryPath, dbPath)
	cmd.Stdin = strings.NewReader(script)

	var stderr strings.Builder
	cmd.Stderr = &stderr

	// Create a pipe to capture and filter the output
	stdout, err := cmd.StdoutPipe()
	if err != nil {
		return fmt.Errorf("failed to create stdout pipe: %w", err)
	}

	if err := cmd.Start(); err != nil {
		return fmt.Errorf("failed to start SQLite command: %w", err)
	}

	// Filter out the PRAGMA and transaction statements that SQLite adds for each batch
	// Use bufio.Scanner for line-by-line processing but with larger buffer to handle large lines
	scanner := bufio.NewScanner(stdout)
	
	// Increase the scanner buffer size to handle very large lines (like big INSERT statements)
	const maxScanTokenSize = 64 * 1024 * 1024 // 64MB buffer for very large SQL statements
	buf := make([]byte, 0, maxScanTokenSize)
	scanner.Buffer(buf, maxScanTokenSize)
	
	for scanner.Scan() {
		line := scanner.Text()
		// Skip the headers that SQLite adds to each .dump command
		if strings.HasPrefix(line, "PRAGMA foreign_keys=OFF;") ||
			strings.HasPrefix(line, "BEGIN TRANSACTION;") ||
			line == "COMMIT;" {
			continue
		}

		// Write the line with proper error handling for partial writes
		lineBytes := []byte(line + "\n")
		written := 0
		for written < len(lineBytes) {
			n, err := out.Write(lineBytes[written:])
			written += n
			if err != nil {
				return fmt.Errorf("failed to write output: %w", err)
			}
		}
	}

	if err := scanner.Err(); err != nil {
		return fmt.Errorf("error reading SQLite output: %w", err)
	}

	if err := cmd.Wait(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return fmt.Errorf("SQLite batch dump failed: %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("SQLite batch dump failed: %w", err)
	}

	return nil
} // ValidateBinary checks if the SQLite binary is available and accessible, including package manager locations
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

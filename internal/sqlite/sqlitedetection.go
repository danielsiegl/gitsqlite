package sqlite

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
)

// getLinuxAptSQLitePaths returns common apt SQLite installation paths on Linux
func getLinuxAptSQLitePaths() []string {
	if runtime.GOOS != "linux" {
		return nil
	}
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
	sqlitePatterns := []string{
		"SQLite.SQLite_Microsoft.Winget.Source_*",
		"SQLite.SQLite_*",
	}
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
			cmd := exec.Command(path, "-version")
			if err := cmd.Run(); err == nil {
				return path, nil
			}
		}
	}
	return "", fmt.Errorf("SQLite not found in WinGet installation directories")
}

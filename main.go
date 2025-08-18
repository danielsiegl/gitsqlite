package main

import (
	"context"
	"flag"
	"fmt"
	"log/slog"
	"os"
	"path/filepath"

	"github.com/danielsiegl/gitsqlite/internal/filters"
	"github.com/danielsiegl/gitsqlite/internal/logging"
	"github.com/danielsiegl/gitsqlite/internal/sqlite"
	"github.com/danielsiegl/gitsqlite/internal/version"
)

func usage() {
	exe := filepath.Base(os.Args[0])
	fmt.Fprintf(os.Stderr, "Usage: %s [options] <operation>\n\n", exe)
	fmt.Fprintf(os.Stderr, "Operations:\n")
	fmt.Fprintf(os.Stderr, "  clean   - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout)\n")
	fmt.Fprintf(os.Stderr, "  smudge  - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)\n\n")
	fmt.Fprintf(os.Stderr, "Options:\n")
	flag.PrintDefaults()
	fmt.Fprintf(os.Stderr, "\nExamples:\n")
	fmt.Fprintf(os.Stderr, "  %s clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s smudge < database.sql > database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -sqlite /usr/local/bin/sqlite3 clean < database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -log clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -log-dir ./logs clean < database.db > database.sql\n", exe)
}

// checkStdinAvailable returns true if there's piped data on stdin.
func checkStdinAvailable() bool {
	if fi, err := os.Stdin.Stat(); err == nil {
		if (fi.Mode() & os.ModeCharDevice) != 0 {
			return false
		}
		if fi.Size() == 0 {
			return false
		}
	}
	return true
}

func main() {
	// Flags (kept compatible with original main.go)
	var (
		showVersion = flag.Bool("version", false, "Show version information")
		checkSqlite = flag.Bool("sqlite-version", false, "Check if SQLite is available and show its version")
		enableLog   = flag.Bool("log", false, "Enable logging to file in current directory")
		logDir      = flag.String("log-dir", "", "Log to specified directory instead of current directory")
		sqliteCmd   = flag.String("sqlite", "sqlite3", "Path to SQLite executable")
		showHelp    = flag.Bool("help", false, "Show help information")
	)
	flag.Usage = usage
	flag.Parse()

	// Setup logging with same semantics: -log -> current dir, -log-dir overrides
	var logTarget string
	if *enableLog || *logDir != "" {
		if *logDir != "" {
			logTarget = *logDir
		} else {
			logTarget = "."
		}
	}
	logger, cleanup := logging.Setup(logTarget)
	defer cleanup()
	
	// Set the logger as the default so all slog calls use it
	slog.SetDefault(logger)
	
	logger.Info("gitsqlite started", "args", os.Args)

	if *showHelp {
		logger.Info("showing help")
		flag.Usage()
		return
	}

	if *showVersion {
		logger.Info("showing version information")
		fmt.Printf("gitsqlite version %s\n", version.Version)
		fmt.Printf("Git commit: %s\n", version.GitCommit)
		fmt.Printf("Git branch: %s\n", version.GitBranch)
		fmt.Printf("Build time: %s\n", version.BuildTime)
		if execPath, err := os.Executable(); err == nil {
			fmt.Printf("Executable location: %s\n", execPath)
			logger.Info("version information displayed",
				"version", version.Version, "commit", version.GitCommit, "branch", version.GitBranch,
				"build_time", version.BuildTime, "executable_path", execPath)
		} else {
			logger.Error("failed to get executable path", "error", err)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error getting executable path: %v\n", err)
			os.Exit(1)
		}
		return
	}

	if *checkSqlite {
		logger.Info("checking sqlite availability", "sqlite_cmd", *sqliteCmd)
		fmt.Printf("Checking SQLite availability...\n")

		engine := &sqlite.Engine{Bin: *sqliteCmd}
		sqlitePath, version, err := engine.CheckAvailability()
		if err != nil {
			logger.Error("sqlite availability check failed", "sqlite_cmd", *sqliteCmd, "error", err)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "ERROR: %v\n", err)
			fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n")
			os.Exit(2)
		}
		fmt.Printf("SQLite found at: %s\n", sqlitePath)
		fmt.Printf("SQLite version: %s\n", version)
		logger.Info("sqlite availability check completed", "version", version, "path", sqlitePath)
		return
	}

	// Operation required
	if flag.NArg() < 1 {
		logger.Error("no operation specified")
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: No operation specified\n\n")
		flag.Usage()
		os.Exit(1)
	}
	op := flag.Arg(0)
	if op != "clean" && op != "smudge" {
		logger.Error("unknown operation", "operation", op)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", op)
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(1)
	}
	ctx := context.Background()
	engine := &sqlite.Engine{Bin: *sqliteCmd}

	// Validate sqlite binary is available
	if err := engine.ValidateBinary(); err != nil {
		logger.Error("sqlite executable not accessible", "sqlite_cmd", *sqliteCmd, "error", err)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: SQLite executable '%s' not found in PATH or does not exist\n", *sqliteCmd)
		fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(2)
	}

	switch op {
	case "smudge":
		logger.Info("starting smudge")
		if err := filters.Smudge(ctx, engine, os.Stdin, os.Stdout); err != nil {
			logger.Error("smudge failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for smudge operation: %v\n", err)
			os.Exit(3)
		}
		logger.Info("smudge completed")
	case "clean":
		logger.Info("starting clean")
		if err := filters.Clean(ctx, engine, os.Stdin, os.Stdout); err != nil {
			logger.Error("clean failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for clean operation: %v\n", err)
			os.Exit(3)
		}
		logger.Info("clean completed")
	}

	logger.Info("gitsqlite finished successfully", "operation", op)
}

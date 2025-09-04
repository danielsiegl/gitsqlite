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
	fmt.Fprintf(os.Stderr, "  clean   - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout; filtered to be byte-for-byte identical)\n")
	fmt.Fprintf(os.Stderr, "  smudge  - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)\n")
	fmt.Fprintf(os.Stderr, "  diff    - Stream SQL dump from binary SQLite database (reads from file, writes to stdout; no filtering)\n\n")
	fmt.Fprintf(os.Stderr, "Options:\n")
	flag.PrintDefaults()
	fmt.Fprintf(os.Stderr, "\nExamples:\n")
	fmt.Fprintf(os.Stderr, "  %s clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s smudge < database.sql > database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s diff database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -sqlite /usr/local/bin/sqlite3 clean < database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -log clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -log-dir ./logs clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -float-precision 6 clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "\nSchema/Data Separation Examples:\n")
	fmt.Fprintf(os.Stderr, "  %s -data-only clean < database.db > data.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -schema-output .gitsqliteschema clean < database.db > data.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -schema-file .gitsqliteschema smudge < data.sql > database.db\n", exe)
}

// showVersionInfo displays detailed version information and checks SQLite availability
func showVersionInfo(sqliteCmd string, logger *slog.Logger, cleanup func()) {
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
	logger.Info("checking sqlite availability", "sqlite_cmd", sqliteCmd)
	fmt.Printf("Checking SQLite availability...\n")

	engine := &sqlite.Engine{Bin: sqliteCmd}
	sqlitePath, version, err := engine.CheckAvailability()
	if err != nil {
		logger.Error("sqlite availability check failed", "sqlite_cmd", sqliteCmd, "error", err)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "ERROR: %v\n", err)
		fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n")
		os.Exit(2)
	}
	fmt.Printf("SQLite found at: %s\n", sqlitePath)
	fmt.Printf("SQLite version: %s\n", version)
	logger.Info("sqlite availability check completed", "version", version, "path", sqlitePath)
}

// validateOperation checks if the provided operation is valid
func validateOperation(logger *slog.Logger, cleanup func()) string {
	if flag.NArg() < 1 {
		logger.Error("no operation specified")
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: No operation specified\n\n")
		flag.Usage()
		os.Exit(1)
	}
	op := flag.Arg(0)
	if op != "clean" && op != "smudge" && op != "diff" {
		logger.Error("unknown operation", "operation", op)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", op)
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge, diff\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(1)
	}
	return op
}

// executeOperation runs the specified operation with the given engine
func executeOperation(ctx context.Context, op string, engine *sqlite.Engine, floatPrecision int, dataOnly bool, schemaFile string, schemaOutput string, logger *slog.Logger, cleanup func()) {
	switch op {
	case "smudge":
		logger.Info("starting smudge")
		if err := filters.Smudge(ctx, engine, os.Stdin, os.Stdout, schemaFile); err != nil {
			logger.Error("smudge failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for smudge operation: %v\n", err)
			os.Exit(3)
		}
		logger.Info("smudge completed")

	case "clean":
		logger.Info("starting clean")
		if err := filters.Clean(ctx, engine, os.Stdin, os.Stdout, floatPrecision, dataOnly, schemaOutput); err != nil {
			logger.Error("clean failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for clean operation: %v\n", err)
			os.Exit(3)
		}
		logger.Info("clean completed")

	case "diff":
		logger.Info("starting diff")
		if flag.NArg() < 2 {
			fmt.Fprintf(os.Stderr, "Usage: %s diff <database.db>\n", os.Args[0])
			os.Exit(2)
		}
		dbFile := flag.Arg(1)
		if err := filters.Diff(ctx, engine, dbFile, os.Stdout, dataOnly, schemaOutput); err != nil {
			logger.Error("diff failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for diff operation: %v\n", err)
			os.Exit(3)
		}
		logger.Info("diff completed")
	}
}

func main() {
	// Flags (kept compatible with original main.go)
	var (
		showVersion    = flag.Bool("version", false, "Show version information")
		enableLog      = flag.Bool("log", false, "Enable logging to file in current directory")
		logDir         = flag.String("log-dir", "", "Log to specified directory instead of current directory")
		sqliteCmd      = flag.String("sqlite", "sqlite3", "Path to SQLite executable")
		showHelp       = flag.Bool("help", false, "Show help information")
		floatPrecision = flag.Int("float-precision", 9, "Number of digits after decimal point for float normalization in INSERT statements")
		dataOnly       = flag.Bool("data-only", false, "For clean/diff: output only data (INSERT statements), no schema")
		schemaFile     = flag.String("schema-file", ".gitsqliteschema", "For smudge: read schema from this file instead of stdin")
		schemaOutput   = flag.String("schema-output", "", "Save schema to this file during clean/diff (default: do not save schema separately)")
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
		showVersionInfo(*sqliteCmd, logger, cleanup)
		return
	}

	// Operation required and validation
	op := validateOperation(logger, cleanup)
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

	executeOperation(ctx, op, engine, *floatPrecision, *dataOnly, *schemaFile, *schemaOutput, logger, cleanup)

	logger.Info("gitsqlite finished successfully", "operation", op)
}

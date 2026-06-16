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
	"github.com/danielsiegl/gitsqlite/internal/messages"
	"github.com/danielsiegl/gitsqlite/internal/sqlite"
	"github.com/danielsiegl/gitsqlite/internal/version"
)

func usage() {
	exe := filepath.Base(os.Args[0])
	fmt.Fprint(os.Stderr, messages.Text("usageHeader", exe))
	fmt.Fprint(os.Stderr, messages.Text("operationsHeader"))
	fmt.Fprint(os.Stderr, messages.Text("cleanDescription"))
	fmt.Fprint(os.Stderr, messages.Text("smudgeDescription"))
	fmt.Fprint(os.Stderr, messages.Text("diffDescription"))
	fmt.Fprint(os.Stderr, messages.Text("optionsHeader"))
	flag.PrintDefaults()
	fmt.Fprint(os.Stderr, messages.Text("examplesHeader"))
	fmt.Fprintf(os.Stderr, "  %s clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s smudge < database.sql > database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s diff database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -sqlite /usr/local/bin/sqlite3 clean < database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -log clean < database.db > database.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -log-dir ./logs clean < database.db > database.sql\n", exe)

	fmt.Fprintf(os.Stderr, "  %s -float-precision 6 clean < database.db > database.sql\n", exe)
	fmt.Fprint(os.Stderr, messages.Text("schemaExamplesHeader"))
	fmt.Fprintf(os.Stderr, "  %s -data-only clean < database.db > data.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -schema clean < database.db > data.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -schema-file schema.sql clean < database.db > data.sql\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -schema smudge < data.sql > database.db\n", exe)
	fmt.Fprintf(os.Stderr, "  %s -schema-file schema.sql smudge < data.sql > database.db\n", exe)
}

// showVersionInfo displays detailed version information and checks SQLite availability
func showVersionInfo(sqliteCmd string, logger *slog.Logger, cleanup func()) {
	logger.Info("showing version information")
	fmt.Print(messages.Text("version", version.Version))
	fmt.Print(messages.Text("gitCommit", version.GitCommit))
	fmt.Print(messages.Text("gitBranch", version.GitBranch))
	fmt.Print(messages.Text("buildTime", version.BuildTime))
	if execPath, err := os.Executable(); err == nil {
		fmt.Print(messages.Text("executableLocation", execPath))
		logger.Info("version information displayed",
			"version", version.Version, "commit", version.GitCommit, "branch", version.GitBranch,
			"build_time", version.BuildTime, "executable_path", execPath)
	} else {
		logger.Error("failed to get executable path", "error", err)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprint(os.Stderr, messages.Text("errorExecutableLocation", err))
		os.Exit(1)
	}
	logger.Info("checking sqlite availability", "sqlite_cmd", sqliteCmd)
	fmt.Print(messages.Text("checkingSQLite"))

	engine := &sqlite.Engine{Bin: sqliteCmd}
	sqlitePath, version, err := engine.CheckAvailability()
	if err != nil {

		logger.Error("sqlite availability check failed", "sqlite_cmd", sqliteCmd, "error", err)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprint(os.Stderr, messages.Text("sqliteCheckError", err))
		fmt.Fprint(os.Stderr, messages.Text("sqliteHelp"))
		os.Exit(2)

	}
	fmt.Print(messages.Text("sqliteFound", sqlitePath))
	fmt.Print(messages.Text("sqliteVersion", version))
	logger.Info("sqlite availability check completed", "version", version, "path", sqlitePath)
}

// validateOperation checks if the provided operation is valid
func validateOperation(logger *slog.Logger, cleanup func()) string {
	if flag.NArg() < 1 {
		logger.Error("no operation specified")
		cleanup() // Ensure log is flushed before exit
		fmt.Fprint(os.Stderr, messages.Text("errorNoOperation"))
		flag.Usage()
		os.Exit(1)
	}
	op := flag.Arg(0)
	if op != "clean" && op != "smudge" && op != "diff" {
		logger.Error("unknown operation", "operation", op)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprint(os.Stderr, messages.Text("errorUnknownOperation", op))
		fmt.Fprint(os.Stderr, messages.Text("supportedOperations"))
		fmt.Fprint(os.Stderr, messages.Text("useHelp"))
		os.Exit(1)
	}
	return op
}

// executeOperation runs the specified operation with the given engine
func executeOperation(ctx context.Context, op string, engine *sqlite.Engine, floatPrecision int, dataOnly bool, schemaFilename string, verifyHash bool, logger *slog.Logger, cleanup func()) {
	switch op {
	case "smudge":
		logger.Info("starting smudge")
		if err := filters.Smudge(ctx, engine, os.Stdin, os.Stdout, schemaFilename, verifyHash); err != nil {
			logger.Error("smudge failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprint(os.Stderr, messages.Text("errorSmudge", err))
			os.Exit(3)
		}
		logger.Info("smudge completed")

	case "clean":
		logger.Info("starting clean")
		if err := filters.Clean(ctx, engine, os.Stdin, os.Stdout, floatPrecision, dataOnly, schemaFilename); err != nil {
			logger.Error("clean failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprint(os.Stderr, messages.Text("errorClean", err))
			os.Exit(3)
		}
		logger.Info("clean completed")

	case "diff":
		logger.Info("starting diff")
		if flag.NArg() < 2 {
			fmt.Fprint(os.Stderr, messages.Text("diffUsage", os.Args[0]))
			os.Exit(2)
		}
		dbFile := flag.Arg(1)
		if err := filters.Diff(ctx, engine, dbFile, os.Stdout, dataOnly, schemaFilename); err != nil {
			logger.Error("diff failed", slog.Any("error", err))
			cleanup() // Ensure log is flushed before exit
			fmt.Fprint(os.Stderr, messages.Text("errorDiff", err))
			os.Exit(3)
		}
		logger.Info("diff completed")
	}
}

func main() {
	// Flags (kept compatible with original main.go)
	var (
		showVersion    = flag.Bool("version", false, messages.Text("flagShowVersion"))
		enableLog      = flag.Bool("log", false, messages.Text("flagEnableLog"))
		logDir         = flag.String("log-dir", "", messages.Text("flagLogDir"))
		sqliteCmd      = flag.String("sqlite", "sqlite3", messages.Text("flagSQLite"))
		showHelp       = flag.Bool("help", false, messages.Text("flagHelp"))
		floatPrecision = flag.Int("float-precision", 9, messages.Text("flagFloatPrecision"))
		dataOnly       = flag.Bool("data-only", false, messages.Text("flagDataOnly"))
		schema         = flag.Bool("schema", false, messages.Text("flagSchema"))
		schemaFile     = flag.String("schema-file", "", messages.Text("flagSchemaFile"))
		verifyHash     = flag.Bool("verify-hash", false, messages.Text("flagVerifyHash"))
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
		fmt.Fprint(os.Stderr, messages.Text("errorSQLiteBinary", *sqliteCmd))
		fmt.Fprint(os.Stderr, messages.Text("sqliteHelp"))
		fmt.Fprint(os.Stderr, messages.Text("useHelp"))
		os.Exit(2)
	}

	// Determine schema filename based on flags
	var schemaFilename string
	if *schemaFile != "" {
		// -schema-file flag takes precedence
		schemaFilename = *schemaFile
	} else if *schema {
		// -schema flag uses default filename
		schemaFilename = ".gitsqliteschema"
	}

	executeOperation(ctx, op, engine, *floatPrecision, *dataOnly, schemaFilename, *verifyHash, logger, cleanup)

	logger.Info("gitsqlite finished successfully", "operation", op)
}

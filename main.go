package main

import (
	"bufio"
	"flag"
	"fmt"
	"io"
	"log"
	"log/slog"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"time"

	"github.com/google/uuid"
)

// Build-time variables
var (
	GitCommit = "unknown"
	GitBranch = "unknown"
	BuildTime = "unknown"
	Version   = "dev"
)

// filterSqliteSequence filters out sqlite_sequence table creation and insertions
// from SQLite dump output to make it more consistent with original SQL
func filterSqliteSequence(input io.Reader, output io.Writer) error {
	reader := bufio.NewReader(input)
	writer := bufio.NewWriter(output)
	defer writer.Flush()

	var lineBuffer strings.Builder
	const chunkSize = 4096 // 4KB chunks for processing

	for {
		chunk := make([]byte, chunkSize)
		n, err := reader.Read(chunk)
		if n == 0 {
			if err == io.EOF {
				break
			}
			if err != nil {
				return err
			}
			continue
		}

		// Process the chunk character by character
		for i := 0; i < n; i++ {
			char := chunk[i]

			if char == '\n' || char == '\r' {
				// End of line found, process the accumulated line
				if lineBuffer.Len() > 0 {
					line := lineBuffer.String()
					lineBuffer.Reset()

					// Skip sqlite_sequence table creation
					if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
						continue
					}

					// Skip sqlite_sequence insertions
					if strings.Contains(line, "INSERT INTO sqlite_sequence VALUES") {
						continue
					}

					// Write the line if it's not filtered out - use Unix line endings for consistency
					if _, writeErr := writer.WriteString(line + "\n"); writeErr != nil {
						return writeErr
					}
				}

				// Skip \r in \r\n sequences
				if char == '\r' && i+1 < n && chunk[i+1] == '\n' {
					i++ // Skip the following \n
				}
			} else {
				// Accumulate characters for the current line
				lineBuffer.WriteByte(char)
			}
		}

		if err == io.EOF {
			break
		}
		if err != nil {
			return err
		}
	}

	// Process any remaining content in the buffer
	if lineBuffer.Len() > 0 {
		line := lineBuffer.String()

		// Skip sqlite_sequence table creation
		if !strings.Contains(line, "CREATE TABLE sqlite_sequence") &&
			!strings.Contains(line, "INSERT INTO sqlite_sequence VALUES") {
			if _, err := writer.WriteString(line + "\n"); err != nil {
				return err
			}
		}
	}

	return nil
}

// checkStdinAvailable checks if there's data available on stdin
// Returns true if data is available, false if stdin is empty or unavailable
func checkStdinAvailable() bool {
	// Check if stdin is a terminal (interactive mode)
	if fileInfo, err := os.Stdin.Stat(); err == nil {
		// If it's a character device (terminal), no piped input
		if (fileInfo.Mode() & os.ModeCharDevice) != 0 {
			return false
		}
		// If size is 0, no data available
		if fileInfo.Size() == 0 {
			return false
		}
	}
	return true
}

// setupLogging sets up structured logging based on logDir parameter
// Returns a logger and cleanup function
func setupLogging(logDir string) (*slog.Logger, func()) {
	var w io.Writer
	var cleanup func() = func() {}

	if logDir != "" && logDir != "stderr" {
		// Create unique per-run filename
		fn := filepath.Join(logDir, fmt.Sprintf("gitsqlite_%s_%d_%s.log",
			time.Now().UTC().Format("20060102T150405.000Z07:00"),
			os.Getpid(), uuid.NewString()))

		f, err := os.OpenFile(fn, os.O_CREATE|os.O_APPEND|os.O_WRONLY, 0o644)
		if err != nil {
			// Fall back to stderr if file creation fails
			fmt.Fprintf(os.Stderr, "Warning: Failed to create log file %s: %v\n", fn, err)
			w = os.Stderr
		} else {
			// Write to both stderr and file, but never to stdout
			w = io.MultiWriter(os.Stderr, f)
			cleanup = func() {
				f.Sync() // Force flush before closing
				f.Close()
			}
		}
	} else if logDir == "stderr" {
		// Explicitly log to stderr only
		w = os.Stderr
	} else {
		// No logging when logDir is empty
		w = io.Discard
	}

	// Set log level to Debug for detailed logging
	lv := new(slog.LevelVar)
	lv.Set(slog.LevelDebug)

	logger := slog.New(slog.NewJSONHandler(w, &slog.HandlerOptions{Level: lv})).
		With("invocation_id", uuid.NewString(), "pid", os.Getpid())

	return logger, cleanup
}

func main() {
	// Define flags
	var (
		showVersion = flag.Bool("version", false, "Show version information")
		checkSqlite = flag.Bool("sqlite-version", false, "Check if SQLite is available and show its version")
		enableLog   = flag.Bool("log", false, "Enable logging to file in current directory")
		logDir      = flag.String("log-dir", "", "Log to specified directory instead of current directory")
		sqliteCmd   = flag.String("sqlite", "sqlite3", "Path to SQLite executable")
		showHelp    = flag.Bool("help", false, "Show help information")
	)

	// Custom usage function
	flag.Usage = func() {
		fmt.Fprintf(os.Stderr, "Usage: %s [options] <operation>\n\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "Operations:\n")
		fmt.Fprintf(os.Stderr, "  clean   - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout)\n")
		fmt.Fprintf(os.Stderr, "  smudge  - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)\n\n")
		fmt.Fprintf(os.Stderr, "Options:\n")
		flag.PrintDefaults()
		fmt.Fprintf(os.Stderr, "\nExamples:\n")
		fmt.Fprintf(os.Stderr, "  %s clean < database.db > database.sql\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  %s smudge < database.sql > database.db\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  %s -sqlite /usr/local/bin/sqlite3 clean < database.db\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  %s -log clean < database.db > database.sql\n", os.Args[0])
		fmt.Fprintf(os.Stderr, "  %s -log-dir ./logs clean < database.db > database.sql\n", os.Args[0])
	}

	// Parse flags
	flag.Parse()

	// Setup logging after parsing flags
	var logTarget string
	if *enableLog || *logDir != "" {
		if *logDir != "" {
			logTarget = *logDir
		} else {
			// When -log is used without -log-dir, create log files in current directory
			logTarget = "."
		}
	}
	logger, cleanup := setupLogging(logTarget)
	defer cleanup()

	logger.Info("gitsqlite started", "args", os.Args)

	// Handle help flag
	if *showHelp {
		logger.Info("showing help")
		flag.Usage()
		return
	}

	// Handle version flag
	if *showVersion {
		logger.Info("showing version information")
		fmt.Printf("gitsqlite version %s\n", Version)
		fmt.Printf("Git commit: %s\n", GitCommit)
		fmt.Printf("Git branch: %s\n", GitBranch)
		fmt.Printf("Build time: %s\n", BuildTime)

		// Always show executable location with version
		execPath, err := os.Executable()
		if err != nil {
			logger.Error("failed to get executable path", "error", err)
			fmt.Fprintf(os.Stderr, "Error getting executable path: %v\n", err)
			os.Exit(1)
		}
		fmt.Printf("Executable location: %s\n", execPath)
		logger.Info("version information displayed", "version", Version, "commit", GitCommit, "branch", GitBranch, "build_time", BuildTime, "executable_path", execPath)
		return
	}

	// Handle sqlite-version flag
	if *checkSqlite {
		logger.Info("checking sqlite availability", "sqlite_cmd", *sqliteCmd)
		fmt.Printf("Checking SQLite availability...\n")

		// Check if sqlite executable exists
		sqlitePath, err := exec.LookPath(*sqliteCmd)
		if err != nil {
			logger.Error("sqlite executable not found", "sqlite_cmd", *sqliteCmd, "error", err)
			fmt.Fprintf(os.Stderr, "ERROR: SQLite executable '%s' not found in PATH\n", *sqliteCmd)
			fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n")
			os.Exit(2)
		}

		fmt.Printf("SQLite found at: %s\n", sqlitePath)
		logger.Info("sqlite found", "path", sqlitePath)

		// Get SQLite version
		cmd := exec.Command(*sqliteCmd, "-version")
		output, err := cmd.Output()
		if err != nil {
			logger.Error("failed to get sqlite version", "sqlite_cmd", *sqliteCmd, "error", err)
			fmt.Fprintf(os.Stderr, "ERROR: Error getting SQLite version: %v\n", err)
			os.Exit(3)
		}

		version := strings.TrimSpace(string(output))
		fmt.Printf("SQLite version: %s\n", version)
		logger.Info("sqlite version check completed", "version", version, "path", sqlitePath)
		return
	}

	// Get remaining arguments (should be the operation)
	args := flag.Args()
	if len(args) < 1 {
		logger.Error("no operation specified")
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: No operation specified\n\n")
		flag.Usage()
		os.Exit(1)
	}

	operation := args[0]
	logger.Info("operation specified", "operation", operation, "sqlite_cmd", *sqliteCmd)

	// Validate operation
	if operation != "clean" && operation != "smudge" {
		logger.Error("unknown operation", "operation", operation)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", operation)
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(1)
	}

	// Check if sqlite3 executable exists and is accessible
	if _, err := exec.LookPath(*sqliteCmd); err != nil {
		logger.Error("sqlite executable not accessible", "sqlite_cmd", *sqliteCmd, "error", err)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: SQLite executable '%s' not found in PATH or does not exist\n", *sqliteCmd)
		fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(2) // Exit code 2 for command not found
	}

	// Check if stdin has data available
	if !checkStdinAvailable() {
		logger.Error("no stdin data available", "operation", operation)
		cleanup() // Ensure log is flushed before exit
		fmt.Fprintf(os.Stderr, "Error: No input provided via stdin\n")
		fmt.Fprintf(os.Stderr, "The %s operation requires input data via stdin\n", operation)
		fmt.Fprintf(os.Stderr, "Example: %s %s < input_file\n", os.Args[0], operation)
		os.Exit(4) // Exit code 4 for no input data
	}

	f, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		logger.Error("failed to create temp file", "error", err)
		log.Fatalln(err)
	}
	defer os.Remove(f.Name())

	tempFileName := f.Name()
	logger.Info("temp file created", "temp_file", tempFileName)

	switch operation {
	case "smudge":
		logger.Info("starting smudge operation", "temp_file", tempFileName)
		// Reads sql commands from stdin and writes
		// the resulting binary sqlite3 database to stdout
		f.Close()
		cmd := exec.Command(*sqliteCmd, tempFileName)
		cmd.Stdin = os.Stdin
		if err := cmd.Run(); err != nil {
			logger.Error("sqlite command failed for smudge", "error", err, "sqlite_cmd", *sqliteCmd)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for smudge operation: %v\n", err)
			os.Exit(3) // Exit code 3 for SQLite execution error
		}
		f, err = os.Open(tempFileName)
		if err != nil {
			logger.Error("failed to reopen temp file", "temp_file", tempFileName, "error", err)
			log.Fatalln(err)
		}
		defer f.Close()
		if _, err := io.Copy(os.Stdout, f); err != nil {
			logger.Error("failed to copy output for smudge", "error", err)
			log.Fatalln(err)
		}
		logger.Info("smudge operation completed successfully")
	case "clean":
		logger.Info("starting clean operation", "temp_file", tempFileName)
		// Reads a binary sqlite3 database from stdin
		// and dumps out the sql commands that created it
		// to stdout, filtering out sqlite_sequence entries
		if _, err := io.Copy(f, os.Stdin); err != nil {
			logger.Error("failed to copy stdin to temp file", "error", err)
			log.Fatalln(err)
		}
		f.Close()

		// Run the SQLite command to dump the database
		cmd := exec.Command(*sqliteCmd, f.Name(), ".dump")
		logger.Info("executing sqlite dump command", "cmd", cmd.String())

		// Create a pipe to capture and filter the output
		cmdOut, err := cmd.StdoutPipe()
		if err != nil {
			logger.Error("failed to create pipe for sqlite output", "error", err)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error creating pipe for SQLite output: %v\n", err)
			os.Exit(3)
		}

		// Start the command
		if err := cmd.Start(); err != nil {
			logger.Error("failed to start sqlite command for clean", "error", err)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error starting SQLite command for clean operation: %v\n", err)
			os.Exit(3)
		}

		// Filter the output to remove sqlite_sequence entries
		if err := filterSqliteSequence(cmdOut, os.Stdout); err != nil {
			logger.Error("failed to filter sqlite output", "error", err)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error filtering SQLite output: %v\n", err)
			os.Exit(3)
		}

		// Wait for the command to complete
		if err := cmd.Wait(); err != nil {
			logger.Error("sqlite command failed for clean operation", "error", err)
			cleanup() // Ensure log is flushed before exit
			fmt.Fprintf(os.Stderr, "Error running SQLite command for clean operation: %v\n", err)
			os.Exit(3)
		}
		logger.Info("clean operation completed successfully")
	}

	logger.Info("gitsqlite finished successfully", "operation", operation)
}

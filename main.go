package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"os/exec"
	"strings"
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
	scanner := bufio.NewScanner(input)
	writer := bufio.NewWriter(output)
	defer writer.Flush()

	for scanner.Scan() {
		line := scanner.Text()

		// Skip sqlite_sequence table creation
		if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
			continue
		}

		// Skip sqlite_sequence insertions
		if strings.Contains(line, "INSERT INTO sqlite_sequence VALUES") {
			continue
		}

		// Write the line if it's not filtered out
		if _, err := writer.WriteString(line + "\n"); err != nil {
			return err
		}
	}

	return scanner.Err()
}

func main() {
	if len(os.Args) < 2 {
		log.Fatalln("Usage: gitsqlite <operation> [sqlite-path]\nOperations: clean, smudge, version/location")
	}

	// Handle version/location command
	if os.Args[1] == "version" || os.Args[1] == "location" || os.Args[1] == "--version" || os.Args[1] == "--location" {
		execPath, err := os.Executable()
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error getting executable path: %v\n", err)
			os.Exit(1)
		}

		fmt.Printf("gitsqlite version %s\n", Version)
		fmt.Printf("Git commit: %s\n", GitCommit)
		fmt.Printf("Git branch: %s\n", GitBranch)
		fmt.Printf("Build time: %s\n", BuildTime)
		fmt.Printf("Executable location: %s\n", execPath)
		return
	}

	// Default sqlite3 command, can be overridden by optional parameter
	sqliteCmd := "sqlite3"
	if len(os.Args) >= 3 {
		sqliteCmd = os.Args[2]
	}

	// Check if sqlite3 executable exists and is accessible
	if _, err := exec.LookPath(sqliteCmd); err != nil {
		fmt.Fprintf(os.Stderr, "Error: SQLite executable '%s' not found in PATH or does not exist\n", sqliteCmd)
		fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path as a second argument\n")
		fmt.Fprintf(os.Stderr, "Usage: gitsqlite <operation> [sqlite-path]\n")
		os.Exit(2) // Exit code 2 for command not found
	}

	f, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		log.Fatalln(err)
	}
	defer os.Remove(f.Name())

	tempFileName := f.Name()

	switch os.Args[1] {
	case "smudge":
		// Reads sql commands from stdin and writes
		// the resulting binary sqlite3 database to stdout
		f.Close()
		cmd := exec.Command(sqliteCmd, tempFileName)
		cmd.Stdin = os.Stdin
		if err := cmd.Run(); err != nil {
			fmt.Fprintf(os.Stderr, "Error running SQLite command for smudge operation: %v\n", err)
			os.Exit(3) // Exit code 3 for SQLite execution error
		}
		f, err = os.Open(tempFileName)
		if err != nil {
			log.Fatalln(err)
		}
		defer f.Close()
		if _, err := io.Copy(os.Stdout, f); err != nil {
			log.Fatalln(err)
		}
	case "clean":
		// Reads a binary sqlite3 database from stdin
		// and dumps out the sql commands that created it
		// to stdout, filtering out sqlite_sequence entries
		if _, err := io.Copy(f, os.Stdin); err != nil {
			log.Fatalln(err)
		}
		f.Close()

		// Run the SQLite command to dump the database
		cmd := exec.Command(sqliteCmd, f.Name(), ".dump")

		// Create a pipe to capture and filter the output
		cmdOut, err := cmd.StdoutPipe()
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error creating pipe for SQLite output: %v\n", err)
			os.Exit(3)
		}

		// Start the command
		if err := cmd.Start(); err != nil {
			fmt.Fprintf(os.Stderr, "Error starting SQLite command for clean operation: %v\n", err)
			os.Exit(3)
		}

		// Filter the output to remove sqlite_sequence entries
		if err := filterSqliteSequence(cmdOut, os.Stdout); err != nil {
			fmt.Fprintf(os.Stderr, "Error filtering SQLite output: %v\n", err)
			os.Exit(3)
		}

		// Wait for the command to complete
		if err := cmd.Wait(); err != nil {
			fmt.Fprintf(os.Stderr, "Error running SQLite command for clean operation: %v\n", err)
			os.Exit(3)
		}
	default:
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", os.Args[1])
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge, version, location\n")
		os.Exit(1) // Exit code 1 for invalid arguments
	}
}

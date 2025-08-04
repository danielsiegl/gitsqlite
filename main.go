package main

import (
	"fmt"
	"io"
	"log"
	"os"
	"os/exec"
)

func main() {
	if len(os.Args) < 2 {
		log.Fatalln("Usage: gitsqlite <operation> [sqlite-path]")
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

	f, err := os.CreateTemp("", "gitsqlite")
	if err != nil {
		log.Fatalln(err)
	}
	defer os.Remove(f.Name())
	switch os.Args[1] {
	case "smudge":
		// Reads sql commands from stdin and writes
		// the resulting binary sqlite3 database to stdout
		f.Close()
		cmd := exec.Command(sqliteCmd, f.Name())
		cmd.Stdin = os.Stdin
		if err := cmd.Run(); err != nil {
			fmt.Fprintf(os.Stderr, "Error running SQLite command for smudge operation: %v\n", err)
			os.Exit(3) // Exit code 3 for SQLite execution error
		}
		f, err = os.Open(f.Name())
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
		// to stdout
		if _, err := io.Copy(f, os.Stdin); err != nil {
			log.Fatalln(err)
		}
		f.Close()
		cmd := exec.Command(sqliteCmd, f.Name(), ".dump")
		cmd.Stdout = os.Stdout
		if err := cmd.Run(); err != nil {
			fmt.Fprintf(os.Stderr, "Error running SQLite command for clean operation: %v\n", err)
			os.Exit(3) // Exit code 3 for SQLite execution error
		}
	default:
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", os.Args[1])
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge\n")
		os.Exit(1) // Exit code 1 for invalid arguments
	}
}

package main

import (
	"bufio"
	"flag"
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

func main() {
	// Define flags
	var (
		showVersion  = flag.Bool("version", false, "Show version information")
		showLocation = flag.Bool("location", false, "Show executable location and version information")
		sqliteCmd    = flag.String("sqlite", "sqlite3", "Path to SQLite executable")
		showHelp     = flag.Bool("help", false, "Show help information")
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
	}

	// Parse flags
	flag.Parse()

	// Handle help flag
	if *showHelp {
		flag.Usage()
		return
	}

	// Handle version/location flags
	if *showVersion || *showLocation {
		fmt.Printf("gitsqlite version %s\n", Version)
		fmt.Printf("Git commit: %s\n", GitCommit)
		fmt.Printf("Git branch: %s\n", GitBranch)
		fmt.Printf("Build time: %s\n", BuildTime)

		if *showLocation {
			execPath, err := os.Executable()
			if err != nil {
				fmt.Fprintf(os.Stderr, "Error getting executable path: %v\n", err)
				os.Exit(1)
			}
			fmt.Printf("Executable location: %s\n", execPath)
		}
		return
	}

	// Get remaining arguments (should be the operation)
	args := flag.Args()
	if len(args) < 1 {
		fmt.Fprintf(os.Stderr, "Error: No operation specified\n\n")
		flag.Usage()
		os.Exit(1)
	}

	operation := args[0]

	// Validate operation
	if operation != "clean" && operation != "smudge" {
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", operation)
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(1)
	}

	// Check if sqlite3 executable exists and is accessible
	if _, err := exec.LookPath(*sqliteCmd); err != nil {
		fmt.Fprintf(os.Stderr, "Error: SQLite executable '%s' not found in PATH or does not exist\n", *sqliteCmd)
		fmt.Fprintf(os.Stderr, "Please ensure SQLite is installed or provide the correct path using -sqlite flag\n")
		fmt.Fprintf(os.Stderr, "Use -help for more information\n")
		os.Exit(2) // Exit code 2 for command not found
	}

	f, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		log.Fatalln(err)
	}
	defer os.Remove(f.Name())

	tempFileName := f.Name()

	switch operation {
	case "smudge":
		// Reads sql commands from stdin and writes
		// the resulting binary sqlite3 database to stdout
		f.Close()
		cmd := exec.Command(*sqliteCmd, tempFileName)
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
		cmd := exec.Command(*sqliteCmd, f.Name(), ".dump")

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
	}
}

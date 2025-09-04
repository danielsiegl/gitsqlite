package filters

import (
	"bufio"
	"context"
	"fmt"
	"io"
	"log/slog"
	"os/exec"
	"strings"

	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// DumpTables dumps only user tables (excluding sqlite_sequence) using selective filtering.
// This function combines the technical SQLite dump operation with logical filtering
// to exclude system tables and normalize floating point values for consistent output.
// If dataOnly is true, only data (INSERT statements) are output, no schema.
func DumpTables(ctx context.Context, eng *sqlite.Engine, dbPath string, out io.Writer, floatPrecision int, dataOnly bool) error {
	binaryPath, err := eng.GetBinPath()
	if err != nil {
		return err
	}

	// Run .dump and stream output line by line
	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")
	stdoutPipe, err := cmd.StdoutPipe()
	if err != nil {
		return fmt.Errorf("failed to get stdout pipe: %w", err)
	}
	var stderr strings.Builder
	cmd.Stderr = &stderr

	slog.Debug("Starting SQLite .dump command")

	if err := cmd.Start(); err != nil {
		return fmt.Errorf("failed to start SQLite dump: %w", err)
	}

	reader := bufio.NewReader(stdoutPipe)
	for {
		line, readErr := reader.ReadString('\n')
		if len(line) == 0 && readErr != nil {
			break
		}
		// this way it should work with CRLF and LF
		line = strings.TrimRight(line, "\n")
		line = strings.TrimRight(line, "\r")
		
		// Apply logical filtering to exclude sqlite_sequence operations
		if ShouldSkipLine(line) {
			continue
		}

		// Apply data-only filtering if requested
		if dataOnly {
			// Only include data lines or structural lines, skip schema
			if !IsDataLine(line) && !IsPragmaOrStructuralLine(line) {
				continue
			}
		}

		// Apply normalization for consistent cross-platform output
		line = NormalizeLine(line, floatPrecision)

		// Use the technical I/O operation from sqlite engine
		if err := eng.WriteWithTimeout(out, []byte(line+"\n"), "clean"); err != nil {
			return err
		}
		if readErr != nil {
			if readErr == io.EOF {
				break
			}
			return fmt.Errorf("error reading dump output: %w", readErr)
		}
	}

	if err := cmd.Wait(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return fmt.Errorf("SQLite dump failed: %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("SQLite dump failed: %w", err)
	}

	slog.Debug("DumpTables completed successfully")
	return nil
}

// DumpSchema dumps only schema (CREATE statements) from the database.
// This function filters the SQLite dump to include only schema definitions.
func DumpSchema(ctx context.Context, eng *sqlite.Engine, dbPath string, out io.Writer) error {
	binaryPath, err := eng.GetBinPath()
	if err != nil {
		return err
	}

	// Run .dump and stream output line by line
	cmd := exec.CommandContext(ctx, binaryPath, dbPath, ".dump")
	stdoutPipe, err := cmd.StdoutPipe()
	if err != nil {
		return fmt.Errorf("failed to get stdout pipe: %w", err)
	}
	var stderr strings.Builder
	cmd.Stderr = &stderr

	slog.Debug("Starting SQLite .dump command for schema")

	if err := cmd.Start(); err != nil {
		return fmt.Errorf("failed to start SQLite dump: %w", err)
	}

	reader := bufio.NewReader(stdoutPipe)
	var inCreateStatement bool
	
	for {
		line, readErr := reader.ReadString('\n')
		if len(line) == 0 && readErr != nil {
			break
		}
		// Normalize line endings to LF only
		line = strings.TrimRight(line, "\n")
		line = strings.TrimRight(line, "\r")
		
		// Apply logical filtering to exclude sqlite_sequence operations
		if ShouldSkipLine(line) {
			continue
		}

		// Handle multi-line CREATE statements
		trimmed := strings.TrimSpace(line)
		
		// Check if we're starting a CREATE statement
		if IsSchemaLine(line) {
			inCreateStatement = true
		}
		
		// Include line if it's a schema line, structural line, or we're inside a CREATE statement
		if IsSchemaLine(line) || IsPragmaOrStructuralLine(line) || inCreateStatement {
			// Use the technical I/O operation from sqlite engine
			if err := eng.WriteWithTimeout(out, []byte(line+"\n"), "schema"); err != nil {
				return err
			}
		}
		
		// Check if we're ending a CREATE statement (line ends with semicolon)
		if inCreateStatement && strings.HasSuffix(trimmed, ";") {
			inCreateStatement = false
		}
		
		if readErr != nil {
			if readErr == io.EOF {
				break
			}
			return fmt.Errorf("error reading dump output: %w", readErr)
		}
	}

	if err := cmd.Wait(); err != nil {
		stderrOutput := stderr.String()
		if stderrOutput != "" {
			return fmt.Errorf("SQLite dump failed: %s: %w", stderrOutput, err)
		}
		return fmt.Errorf("SQLite dump failed: %w", err)
	}

	slog.Debug("DumpSchema completed successfully")
	return nil
}
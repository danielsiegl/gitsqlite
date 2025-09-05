package filters

import (
	"bytes"
	"context"
	"fmt"
	"io"
	"log/slog"
	"os"
	"time"

	"github.com/danielsiegl/gitsqlite/internal/logging"
	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// isSQLiteBinaryData checks if the input stream starts with SQLite binary header.
// Returns true if SQLite binary, false if SQL text, and a new reader that preserves all data.
func isSQLiteBinaryData(in io.Reader) (bool, io.Reader, error) {
	// Read the first 16 bytes to check for SQLite header
	header := make([]byte, 16)
	n, err := io.ReadFull(in, header)
	if err != nil && err != io.ErrUnexpectedEOF {
		return false, nil, err
	}
	
	// Check if we have enough bytes and if it matches SQLite header
	expectedHeader := []byte("SQLite format 3\x00")
	isSQLite := n >= len(expectedHeader) && bytes.Equal(header[:len(expectedHeader)], expectedHeader)
	
	// Create a new reader that includes the header we read plus the rest of the stream
	var newReader io.Reader
	if n > 0 {
		newReader = io.MultiReader(bytes.NewReader(header[:n]), in)
	} else {
		newReader = in
	}
	
	return isSQLite, newReader, nil
}

// Smudge reads SQL from 'in', restores into a temporary SQLite DB using the engine,
// then streams the resulting DB bytes to 'out'.
// If schemaFile is not empty and the file exists, schema is read from that file
// and combined with data from 'in'.
// If the input is already SQLite binary data, it's passed through unchanged.
func Smudge(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer, schemaFile string) error {
	startTime := time.Now()
	slog.Info("Starting smudge operation")

	// First, check if the input is already SQLite binary data
	isSQLite, newReader, err := isSQLiteBinaryData(in)
	if err != nil {
		slog.Error("Failed to detect input format", "error", err)
		return err
	}
	
	if isSQLite {
		slog.Info("Detected SQLite binary input, passing through unchanged")
		_, err := io.Copy(out, newReader)
		if err != nil {
			slog.Error("Failed to copy SQLite binary data", "error", err)
			return err
		}
		totalDuration := time.Since(startTime)
		slog.Info("Smudge passthrough completed", "totalDuration", logging.FormatDuration(totalDuration))
		return nil
	}
	
	// Input is SQL text, proceed with normal processing
	slog.Info("Detected SQL text input, proceeding with restore operation")
	in = newReader // Use the reader that preserves the header we read

	tmp, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		slog.Error("Failed to create temp file", "error", err)
		return err
	}
	tmpPath := tmp.Name()
	_ = tmp.Close()
	defer os.Remove(tmpPath)

	restoreStart := time.Now()

	// If schema file is specified and exists, combine schema + data
	if schemaFile != "" {
		if _, err := os.Stat(schemaFile); err == nil {
			slog.Info("Combining schema from file with data from stdin", "schemaFile", schemaFile)

			// Create a combined reader: schema first, then data
			schemaFileReader, err := os.Open(schemaFile)
			if err != nil {
				slog.Error("Failed to open schema file", "file", schemaFile, "error", err)
				return err
			}
			defer schemaFileReader.Close()

			// Combine schema and data streams
			combinedReader := io.MultiReader(schemaFileReader, in)

			if err := eng.Restore(ctx, tmpPath, combinedReader); err != nil {
				slog.Error("SQLite restore with schema file failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
				return err
			}
		} else {
			slog.Error("Schema file specified but not found", "schemaFile", schemaFile)
			return fmt.Errorf("schema file not found: %s", schemaFile)
		}
	} else {
		// Normal restore without schema file
		if err := eng.Restore(ctx, tmpPath, in); err != nil {
			slog.Error("SQLite restore failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
			return err
		}
	}
	restoreDuration := time.Since(restoreStart)
	slog.Info("SQLite restore completed", "duration", logging.FormatDuration(restoreDuration))

	copyStart := time.Now()
	f, err := os.Open(tmpPath)
	if err != nil {
		slog.Error("Failed to open restored database", "error", err)
		return err
	}
	defer f.Close()

	// Read the entire database into memory for chunked writing
	dbData, err := io.ReadAll(f)
	if err != nil {
		slog.Error("Failed to read restored database", "error", err)
		return err
	}

	// Use chunked writing with timeout protection for smudge output
	err = eng.WriteWithTimeoutAndChunking(out, dbData, "smudge")
	copyDuration := time.Since(copyStart)
	totalDuration := time.Since(startTime)

	if err != nil {
		slog.Error("Smudge operation failed", "error", err, "totalDuration", logging.FormatDuration(totalDuration))
	} else {
		slog.Info("Smudge operation completed",
			"totalDuration", logging.FormatDuration(totalDuration),
			"restoreDuration", logging.FormatDuration(restoreDuration),
			"copyDuration", logging.FormatDuration(copyDuration))
	}

	return err
}

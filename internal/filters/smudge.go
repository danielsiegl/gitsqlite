package filters

import (
	"context"
	"fmt"
	"io"
	"log/slog"
	"os"
	"time"

	"github.com/danielsiegl/gitsqlite/internal/hash"
	"github.com/danielsiegl/gitsqlite/internal/logging"
	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

// Smudge reads SQL from 'in', restores into a temporary SQLite DB using the engine,
// then streams the resulting DB bytes to 'out'.
// If schemaFile is not empty and the file exists, schema is read from that file
// and combined with data from 'in'.
// If enforceHash is true, hash verification failures cause the operation to fail.
// If enforceHash is false, hash verification status is logged but operation continues.
func Smudge(ctx context.Context, eng *sqlite.Engine, in io.Reader, out io.Writer, schemaFile string, enforceHash bool) error {
	startTime := time.Now()
	slog.Info("Starting smudge operation")

	tmp, err := os.CreateTemp("", "gitsqlite-*.db")
	if err != nil {
		slog.Error("Failed to create temp file", "error", err)
		return err
	}
	tmpPath := tmp.Name()
	_ = tmp.Close()
	defer os.Remove(tmpPath)

	restoreStart := time.Now()

	var verifiedDataReader io.Reader

	// Verify hash from stdin data and strip it
	if enforceHash {
		// Strict verification - fail on invalid/missing hash
		var err error
		verifiedDataReader, err = hash.VerifyAndStripHash(in)
		if err != nil {
			slog.Error("Hash verification failed for data (enforce mode)", "error", err)
			return fmt.Errorf("data hash verification failed: %w", err)
		}
		slog.Info("Data hash verified successfully (enforce mode)")
	} else {
		// Optional verification - log status but continue
		var result *hash.VerificationResult
		verifiedDataReader, result = hash.VerifyHashOptional(in)
		if result.Valid {
			slog.Info("Data hash verification successful", "message", result.Message)
		} else {
			slog.Warn("Data hash verification failed (non-enforce mode)",
				"valid", result.Valid,
				"error", result.Error,
				"message", result.Message)
		}
	}

	// If schema file is specified and exists, combine schema + data
	if schemaFile != "" {
		if _, err := os.Stat(schemaFile); err == nil {
			slog.Info("Combining schema from file with data from stdin", "schemaFile", schemaFile)

			// Open and verify schema file
			schemaFileReader, err := os.Open(schemaFile)
			if err != nil {
				slog.Error("Failed to open schema file", "file", schemaFile, "error", err)
				return err
			}
			defer schemaFileReader.Close()

			var verifiedSchemaReader io.Reader

			// Verify hash from schema file and strip it
			if enforceHash {
				// Strict verification - fail on invalid/missing hash
				var err error
				verifiedSchemaReader, err = hash.VerifyAndStripHash(schemaFileReader)
				if err != nil {
					slog.Error("Hash verification failed for schema file (enforce mode)", "file", schemaFile, "error", err)
					return fmt.Errorf("schema hash verification failed: %w", err)
				}
				slog.Info("Schema hash verified successfully (enforce mode)", "file", schemaFile)
			} else {
				// Optional verification - log status but continue
				var result *hash.VerificationResult
				verifiedSchemaReader, result = hash.VerifyHashOptional(schemaFileReader)
				if result.Valid {
					slog.Info("Schema hash verification successful", "file", schemaFile, "message", result.Message)
				} else {
					slog.Warn("Schema hash verification failed (non-enforce mode)",
						"file", schemaFile,
						"valid", result.Valid,
						"error", result.Error,
						"message", result.Message)
				}
			}

			// Combine verified schema and data streams
			combinedReader := io.MultiReader(verifiedSchemaReader, verifiedDataReader)

			if err := eng.Restore(ctx, tmpPath, combinedReader); err != nil {
				slog.Error("SQLite restore with schema file failed", "error", err, "duration", logging.FormatDuration(time.Since(restoreStart)))
				return err
			}
		} else {
			slog.Error("Schema file specified but not found", "schemaFile", schemaFile)
			return fmt.Errorf("schema file not found: %s", schemaFile)
		}
	} else {
		// Normal restore without schema file - use verified data
		if err := eng.Restore(ctx, tmpPath, verifiedDataReader); err != nil {
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

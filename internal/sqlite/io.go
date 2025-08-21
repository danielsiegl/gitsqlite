package sqlite

import (
	"fmt"
	"io"
	"log/slog"
	"time"
)

// WriteWithTimeout writes a single line to the output writer with timeout protection
func (e *Engine) WriteWithTimeout(out io.Writer, data []byte, operation string) error {
	type writeResult struct {
		bytesWritten int
		err          error
	}
	writeChan := make(chan writeResult, 1)
	go func() {
		n, err := out.Write(data)
		writeChan <- writeResult{bytesWritten: n, err: err}
	}()
	select {
	case result := <-writeChan:
		if result.err != nil {
			slog.Error("Failed to write output line", "operation", operation, "error", result.err)
			return result.err
		}
		return nil
	case <-time.After(1 * time.Second):
		slog.Error("Write operation timed out", "operation", operation, "timeout_seconds", 1)
		return fmt.Errorf("write operation timed out after 1 second for %s operation", operation)
	}
}

// WriteWithTimeoutAndChunking writes data to the output writer in chunks with timeout protection
// to detect broken pipes early and prevent hanging indefinitely.
func (e *Engine) WriteWithTimeoutAndChunking(out io.Writer, data []byte, operation string) error {
	slog.Debug("About to write output", "operation", operation, "size_bytes", len(data))

	// Test if the output pipe is still open with a minimal write
	slog.Debug("Testing output pipe connectivity", "operation", operation)
	testWrite := []byte{}
	if _, testErr := out.Write(testWrite); testErr != nil {
		slog.Error("Output pipe is already closed/broken before main write", "operation", operation, "error", testErr)
		return testErr
	}
	slog.Debug("Output pipe test successful, proceeding with chunked write", "operation", operation)

	// Write in chunks to detect broken pipe earlier and provide better error reporting
	chunkSize := 64 * 1024 // 64KB chunks
	totalWritten := 0
	totalChunks := (len(data) + chunkSize - 1) / chunkSize

	slog.Debug("Starting chunked write", "operation", operation, "total_chunks", totalChunks, "chunk_size", chunkSize)

	for totalWritten < len(data) {
		endPos := totalWritten + chunkSize
		if endPos > len(data) {
			endPos = len(data)
		}

		chunkNum := (totalWritten / chunkSize) + 1
		chunk := data[totalWritten:endPos]
		slog.Debug("Writing chunk", "operation", operation, "chunk_number", chunkNum, "chunk_size", len(chunk), "offset", totalWritten)

		// Use WriteWithTimeout for each chunk
		if err := e.WriteWithTimeout(out, chunk, operation); err != nil {
			slog.Error("Failed to write output chunk",
				"operation", operation,
				"error", err,
				"total_bytes_written", totalWritten,
				"total_size", len(data),
				"chunk_number", chunkNum)
			return err
		}
		totalWritten += len(chunk)

		slog.Debug("Successfully wrote chunk", "operation", operation, "chunk_number", chunkNum, "bytes_written", len(chunk))

		// Log progress for large writes
		if len(data) > 1024*1024 && totalWritten%(256*1024) == 0 {
			percent := float64(totalWritten) / float64(len(data)) * 100
			slog.Debug("Write progress", "operation", operation, "bytes_written", totalWritten, "total_size", len(data), "percent", percent)
		}
	}

	slog.Debug("Successfully wrote output", "operation", operation, "bytes_written", totalWritten, "total_size", len(data))
	return nil
}

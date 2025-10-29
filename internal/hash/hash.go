package hash

import (
	"bufio"
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"hash"
	"io"
	"strings"
)

const (
	// HashPrefix is the SQL comment prefix for the hash line
	HashPrefix = "-- gitsqlite-hash: sha256:"
)

// HashWriter wraps an io.Writer and computes SHA-256 hash of all data written through it
type HashWriter struct {
	writer io.Writer
	hash   hash.Hash
}

// NewHashWriter creates a new HashWriter that writes to w and computes hash
func NewHashWriter(w io.Writer) *HashWriter {
	return &HashWriter{
		writer: w,
		hash:   sha256.New(),
	}
}

// Write implements io.Writer, writing to both the underlying writer and the hash
func (hw *HashWriter) Write(p []byte) (n int, err error) {
	// Write to hash
	hw.hash.Write(p)
	// Write to underlying writer
	return hw.writer.Write(p)
}

// GetHash returns the hex-encoded SHA-256 hash of all data written
func (hw *HashWriter) GetHash() string {
	return hex.EncodeToString(hw.hash.Sum(nil))
}

// GetHashComment returns the hash formatted as a SQL comment
func (hw *HashWriter) GetHashComment() string {
	return fmt.Sprintf("%s%s\n", HashPrefix, hw.GetHash())
}

// VerifyAndStripHash reads all data from r, verifies the hash comment at the end,
// and returns the content without the hash line if verification succeeds.
// Returns an error if hash is missing, malformed, or doesn't match.
func VerifyAndStripHash(r io.Reader) (io.Reader, error) {
	// Read all content
	data, err := io.ReadAll(r)
	if err != nil {
		return nil, fmt.Errorf("failed to read input: %w", err)
	}

	// Find the last line
	lines := bytes.Split(data, []byte("\n"))
	if len(lines) == 0 {
		return nil, fmt.Errorf("empty input")
	}

	// Handle trailing newline (Split will create an empty last element)
	var lastLine []byte
	var contentLines [][]byte
	if len(lines[len(lines)-1]) == 0 && len(lines) > 1 {
		// Last element is empty, actual last line is second to last
		lastLine = lines[len(lines)-2]
		contentLines = lines[:len(lines)-2]
	} else {
		lastLine = lines[len(lines)-1]
		contentLines = lines[:len(lines)-1]
	}

	// Check if last line is a hash comment
	lastLineStr := string(lastLine)
	if !strings.HasPrefix(lastLineStr, HashPrefix) {
		return nil, fmt.Errorf("missing gitsqlite hash signature (expected last line to start with '%s')", HashPrefix)
	}

	// Extract the hash from the last line
	expectedHash := strings.TrimPrefix(lastLineStr, HashPrefix)
	expectedHash = strings.TrimSpace(expectedHash)

	// Compute hash of content without the hash line
	var content bytes.Buffer
	for i, line := range contentLines {
		content.Write(line)
		if i < len(contentLines)-1 {
			content.WriteByte('\n')
		}
	}
	// Add trailing newline if content is not empty
	if content.Len() > 0 {
		content.WriteByte('\n')
	}

	// Compute actual hash
	h := sha256.New()
	h.Write(content.Bytes())
	actualHash := hex.EncodeToString(h.Sum(nil))

	// Verify hash matches
	if actualHash != expectedHash {
		return nil, fmt.Errorf("hash verification failed: expected %s, got %s (file may have been modified)", expectedHash, actualHash)
	}

	// Return content without hash line
	return &content, nil
}

// ExtractHashFromReader is a helper that reads from r and uses a scanner to find the hash
func ExtractHashFromReader(r io.Reader) (string, error) {
	scanner := bufio.NewScanner(r)
	var lastLine string
	for scanner.Scan() {
		lastLine = scanner.Text()
	}
	if err := scanner.Err(); err != nil {
		return "", err
	}

	if !strings.HasPrefix(lastLine, HashPrefix) {
		return "", fmt.Errorf("hash not found")
	}

	hash := strings.TrimPrefix(lastLine, HashPrefix)
	return strings.TrimSpace(hash), nil
}

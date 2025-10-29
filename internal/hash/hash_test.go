package hash

import (
	"bytes"
	"io"
	"strings"
	"testing"
)

func TestHashWriter(t *testing.T) {
	var buf bytes.Buffer
	hw := NewHashWriter(&buf)

	testData := "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCREATE TABLE test (id INTEGER);\nINSERT INTO test VALUES(1);\nCOMMIT;\n"

	_, err := hw.Write([]byte(testData))
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}

	// Verify data was written to buffer
	if buf.String() != testData {
		t.Errorf("Expected buffer to contain %q, got %q", testData, buf.String())
	}

	// Verify hash is not empty
	hash := hw.GetHash()
	if hash == "" {
		t.Error("Hash should not be empty")
	}

	// Verify hash is 64 hex characters (SHA-256)
	if len(hash) != 64 {
		t.Errorf("Expected hash length 64, got %d", len(hash))
	}

	// Verify hash comment format
	comment := hw.GetHashComment()
	if !strings.HasPrefix(comment, HashPrefix) {
		t.Errorf("Expected comment to start with %q, got %q", HashPrefix, comment)
	}
	if !strings.HasSuffix(comment, "\n") {
		t.Error("Expected comment to end with newline")
	}
}

func TestHashWriterDeterministic(t *testing.T) {
	testData := "CREATE TABLE test (id INTEGER);\n"

	// Compute hash twice
	var buf1, buf2 bytes.Buffer
	hw1 := NewHashWriter(&buf1)
	hw2 := NewHashWriter(&buf2)

	hw1.Write([]byte(testData))
	hw2.Write([]byte(testData))

	hash1 := hw1.GetHash()
	hash2 := hw2.GetHash()

	if hash1 != hash2 {
		t.Errorf("Hashes should be deterministic: got %q and %q", hash1, hash2)
	}
}

func TestVerifyAndStripHash(t *testing.T) {
	sqlContent := "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCREATE TABLE test (id INTEGER);\nCOMMIT;\n"

	// Create a hash writer to compute the hash
	var buf bytes.Buffer
	hw := NewHashWriter(&buf)
	hw.Write([]byte(sqlContent))

	// Create input with hash appended
	input := sqlContent + hw.GetHashComment()

	// Verify and strip
	reader, err := VerifyAndStripHash(strings.NewReader(input))
	if err != nil {
		t.Fatalf("VerifyAndStripHash failed: %v", err)
	}

	// Read stripped content
	stripped, err := io.ReadAll(reader)
	if err != nil {
		t.Fatalf("Failed to read stripped content: %v", err)
	}

	// Verify content matches original
	if string(stripped) != sqlContent {
		t.Errorf("Stripped content doesn't match original.\nExpected: %q\nGot: %q", sqlContent, string(stripped))
	}
}

func TestVerifyAndStripHashInvalidHash(t *testing.T) {
	sqlContent := "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCOMMIT;\n"

	// Create input with wrong hash
	input := sqlContent + "-- gitsqlite-hash: sha256:0000000000000000000000000000000000000000000000000000000000000000\n"

	// Verify should fail
	_, err := VerifyAndStripHash(strings.NewReader(input))
	if err == nil {
		t.Error("Expected verification to fail with wrong hash, but it succeeded")
	}

	expectedErrMsg := "hash verification failed"
	if !strings.Contains(err.Error(), expectedErrMsg) {
		t.Errorf("Expected error to contain %q, got: %v", expectedErrMsg, err)
	}
}

func TestVerifyAndStripHashMissingHash(t *testing.T) {
	sqlContent := "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCOMMIT;\n"

	// No hash line
	_, err := VerifyAndStripHash(strings.NewReader(sqlContent))
	if err == nil {
		t.Error("Expected verification to fail with missing hash, but it succeeded")
	}

	expectedErrMsg := "missing gitsqlite hash signature"
	if !strings.Contains(err.Error(), expectedErrMsg) {
		t.Errorf("Expected error to contain %q, got: %v", expectedErrMsg, err)
	}
}

func TestVerifyAndStripHashModifiedContent(t *testing.T) {
	sqlContent := "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCREATE TABLE test (id INTEGER);\nCOMMIT;\n"

	// Create a hash writer to compute the hash
	var buf bytes.Buffer
	hw := NewHashWriter(&buf)
	hw.Write([]byte(sqlContent))

	// Create input with modified content but original hash
	modifiedContent := "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCREATE TABLE test (id INTEGER, name TEXT);\nCOMMIT;\n"
	input := modifiedContent + hw.GetHashComment()

	// Verify should fail
	_, err := VerifyAndStripHash(strings.NewReader(input))
	if err == nil {
		t.Error("Expected verification to fail with modified content, but it succeeded")
	}

	expectedErrMsg := "hash verification failed"
	if !strings.Contains(err.Error(), expectedErrMsg) {
		t.Errorf("Expected error to contain %q, got: %v", expectedErrMsg, err)
	}
}

func TestVerifyAndStripHashEmptyInput(t *testing.T) {
	_, err := VerifyAndStripHash(strings.NewReader(""))
	if err == nil {
		t.Error("Expected verification to fail with empty input, but it succeeded")
	}
}

func TestRoundTrip(t *testing.T) {
	testCases := []struct {
		name    string
		content string
	}{
		{"simple", "CREATE TABLE test (id INTEGER);\n"},
		{"multiline", "CREATE TABLE test (\n  id INTEGER,\n  name TEXT\n);\nINSERT INTO test VALUES(1,'Alice');\n"},
		{"with pragmas", "PRAGMA foreign_keys=OFF;\nBEGIN TRANSACTION;\nCREATE TABLE test (id INTEGER);\nCOMMIT;\n"},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			// Write with hash
			var buf bytes.Buffer
			hw := NewHashWriter(&buf)
			hw.Write([]byte(tc.content))
			buf.WriteString(hw.GetHashComment())

			// Verify and strip
			reader, err := VerifyAndStripHash(&buf)
			if err != nil {
				t.Fatalf("Verification failed: %v", err)
			}

			// Read back
			result, err := io.ReadAll(reader)
			if err != nil {
				t.Fatalf("Failed to read: %v", err)
			}

			// Compare
			if string(result) != tc.content {
				t.Errorf("Round trip failed.\nExpected: %q\nGot: %q", tc.content, string(result))
			}
		})
	}
}

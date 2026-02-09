package filters

import "strings"

// ShouldSkipLine determines if a line should be skipped during dump filtering.
// This function implements the logic to exclude sqlite_sequence table operations
// from dumps to ensure consistent cross-platform behavior.
func ShouldSkipLine(line string) bool {
	// Skip CREATE TABLE sqlite_sequence line (with or without IF NOT EXISTS)
	if strings.Contains(line, "CREATE TABLE") && strings.Contains(line, "sqlite_sequence") {
		return true
	}
	// Skip INSERT INTO sqlite_sequence lines
	if strings.Contains(line, "INSERT INTO sqlite_sequence") || strings.Contains(line, "INSERT INTO \"sqlite_sequence\"") {
		return true
	}
	// Skip DELETE FROM sqlite_sequence;
	if strings.Contains(line, "DELETE FROM sqlite_sequence") || strings.Contains(line, "DELETE FROM \"sqlite_sequence\"") {
		return true
	}
	// Skip PRAGMA writable_schema (used when creating sqlite_sequence)
	if strings.Contains(line, "PRAGMA writable_schema") {
		return true
	}
	return false
}

// IsSchemaLine determines if a line contains schema definition statements.
// These are CREATE TABLE, CREATE INDEX, CREATE VIEW, etc.
func IsSchemaLine(line string) bool {
	trimmed := strings.TrimSpace(line)
	if trimmed == "" {
		return false
	}

	// Schema statements
	return strings.HasPrefix(trimmed, "CREATE TABLE") ||
		strings.HasPrefix(trimmed, "CREATE INDEX") ||
		strings.HasPrefix(trimmed, "CREATE UNIQUE INDEX") ||
		strings.HasPrefix(trimmed, "CREATE VIEW") ||
		strings.HasPrefix(trimmed, "CREATE TRIGGER") ||
		strings.HasPrefix(trimmed, "CREATE VIRTUAL TABLE")
}

// IsDataLine determines if a line contains data manipulation statements.
// These are INSERT, UPDATE, DELETE statements.
func IsDataLine(line string) bool {
	trimmed := strings.TrimSpace(line)
	if trimmed == "" {
		return false
	}

	// Data manipulation statements
	return strings.HasPrefix(trimmed, "INSERT INTO") ||
		strings.HasPrefix(trimmed, "UPDATE ") ||
		strings.HasPrefix(trimmed, "DELETE FROM")
}

// IsPragmaOrStructuralLine determines if a line is a structural SQL statement
// that should be included in both schema and data outputs.
func IsPragmaOrStructuralLine(line string) bool {
	trimmed := strings.TrimSpace(line)
	if trimmed == "" {
		return false
	}

	// Structural statements that should be in both
	return strings.HasPrefix(trimmed, "PRAGMA") ||
		strings.HasPrefix(trimmed, "BEGIN") ||
		strings.HasPrefix(trimmed, "COMMIT") ||
		strings.HasPrefix(trimmed, "ROLLBACK") ||
		trimmed == "BEGIN TRANSACTION;" ||
		trimmed == "COMMIT;"
}

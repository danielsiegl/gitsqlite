package filters

import "strings"

// ShouldSkipLine determines if a line should be skipped during dump filtering.
// This function implements the logic to exclude sqlite_sequence table operations
// from dumps to ensure consistent cross-platform behavior.
func ShouldSkipLine(line string) bool {
	// Skip CREATE TABLE sqlite_sequence line
	if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
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
	return false
}
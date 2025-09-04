package filters

import (
	"regexp"
	"strconv"
	"strings"
)

// Normalization constants for consistent cross-platform float representation
var (
	// Match decimal floats in INSERT lines (simple & fast).
	// We limit normalization to INSERT lines to avoid touching DDL, comments, etc.
	floatRe = regexp.MustCompile(`-?\d+\.\d+`)
)

// NormalizeLine normalizes floating point numbers in SQL INSERT statements
// to ensure consistent representation across different platforms (Windows/Linux/Mac).
// This function only processes INSERT lines to avoid affecting DDL or comments.
func NormalizeLine(line string, floatPrecision int) string {
	trimmed := strings.TrimSpace(line)
	// Only normalize INSERT lines (where values live)
	if !strings.HasPrefix(trimmed, "INSERT INTO") {
		return line
	}

	// Normalize floats to fixed precision using Go's consistent formatter.
	line = floatRe.ReplaceAllStringFunc(line, func(m string) string {
		f, err := strconv.ParseFloat(m, 64)
		if err != nil {
			return m // leave as-is if somehow unparsable
		}
		// 'f' => decimal, fixed number of digits after the decimal point.
		return strconv.FormatFloat(f, 'f', floatPrecision, 64)
	})

	return line
}

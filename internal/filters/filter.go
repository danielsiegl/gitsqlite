package filters

import (
	"bufio"
	"io"
	"strings"
)

// FilterSqliteSequence removes CREATE/INSERT for sqlite_sequence from a .dump stream.
// Uses a buffered Scanner with a larger max token size to tolerate long lines.
func FilterSqliteSequence(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)
	const maxCap = 1024 * 1024 // 1 MiB
	buf := make([]byte, 64*1024)
	sc.Buffer(buf, maxCap)

	bw := bufio.NewWriter(out)
	defer bw.Flush()

	for sc.Scan() {
		line := sc.Text()
		if strings.Contains(line, "CREATE TABLE sqlite_sequence") {
			continue
		}
		if strings.Contains(line, "INSERT INTO sqlite_sequence VALUES") {
			continue
		}
		if _, err := bw.WriteString(line + "\n"); err != nil {
			return err
		}
	}
	return sc.Err()
}

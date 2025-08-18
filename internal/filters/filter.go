package filters

import (
	"bufio"
	"io"
	"strings"
)

// FilterSqliteSequence removes CREATE/INSERT for sqlite_sequence from a .dump stream.
// Uses a dynamic growing buffer to handle arbitrarily long lines.
func FilterSqliteSequence(in io.Reader, out io.Writer) error {
	bw := bufio.NewWriter(out)
	defer bw.Flush()

	// Use a dynamically growing buffer approach
	br := bufio.NewReader(in)
	
	for {
		line, err := readLineWithGrowingBuffer(br)
		if err == io.EOF {
			break
		}
		if err != nil {
			return err
		}
		
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
	return nil
}

// readLineWithGrowingBuffer reads a complete line with a dynamically growing buffer
func readLineWithGrowingBuffer(br *bufio.Reader) (string, error) {
	var line []byte
	
	for {
		part, isPrefix, err := br.ReadLine()
		if err != nil {
			if len(line) > 0 && err == io.EOF {
				return string(line), io.EOF
			}
			return "", err
		}
		
		line = append(line, part...)
		
		if !isPrefix {
			break
		}
	}
	
	return string(line), nil
}

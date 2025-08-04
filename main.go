package main

import (
	"database/sql"
	"fmt"
	"io"
	"os"
	"strings"

	_ "github.com/mattn/go-sqlite3"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Fprintf(os.Stderr, "Usage: gitsqlite <operation>\n")
		fmt.Fprintf(os.Stderr, "Operations: clean, smudge\n")
		os.Exit(1)
	}

	switch os.Args[1] {
	case "smudge":
		if err := smudgeOperation(); err != nil {
			fmt.Fprintf(os.Stderr, "Error in smudge operation: %v\n", err)
			os.Exit(3)
		}
	case "clean":
		if err := cleanOperation(); err != nil {
			fmt.Fprintf(os.Stderr, "Error in clean operation: %v\n", err)
			os.Exit(3)
		}
	default:
		fmt.Fprintf(os.Stderr, "Error: Unknown operation '%s'\n", os.Args[1])
		fmt.Fprintf(os.Stderr, "Supported operations: clean, smudge\n")
		os.Exit(1)
	}
}

// smudgeOperation reads SQL commands from stdin and writes the resulting binary SQLite database to stdout
func smudgeOperation() error {
	// Create a temporary file for the database
	tmpFile, err := os.CreateTemp("", "gitsqlite-smudge-*.db")
	if err != nil {
		return fmt.Errorf("failed to create temp file: %w", err)
	}
	defer os.Remove(tmpFile.Name())
	tmpFile.Close()

	// Open the database
	db, err := sql.Open("sqlite3", tmpFile.Name())
	if err != nil {
		return fmt.Errorf("failed to open database: %w", err)
	}
	defer db.Close()

	// Read SQL commands from stdin
	sqlBytes, err := io.ReadAll(os.Stdin)
	if err != nil {
		return fmt.Errorf("failed to read from stdin: %w", err)
	}

	sqlCommands := string(sqlBytes)

	// Execute the SQL commands
	if err := executeSQL(db, sqlCommands); err != nil {
		return fmt.Errorf("failed to execute SQL: %w", err)
	}

	// Close the database to ensure all data is written
	db.Close()

	// Copy the binary database file to stdout
	dbFile, err := os.Open(tmpFile.Name())
	if err != nil {
		return fmt.Errorf("failed to open database file: %w", err)
	}
	defer dbFile.Close()

	if _, err := io.Copy(os.Stdout, dbFile); err != nil {
		return fmt.Errorf("failed to copy database to stdout: %w", err)
	}

	return nil
}

// cleanOperation reads a binary SQLite database from stdin and dumps the SQL commands to stdout
func cleanOperation() error {
	// Create a temporary file for the database
	tmpFile, err := os.CreateTemp("", "gitsqlite-clean-*.db")
	if err != nil {
		return fmt.Errorf("failed to create temp file: %w", err)
	}
	defer os.Remove(tmpFile.Name())

	// Copy stdin to the temp file
	if _, err := io.Copy(tmpFile, os.Stdin); err != nil {
		return fmt.Errorf("failed to copy stdin to temp file: %w", err)
	}
	tmpFile.Close()

	// Open the database
	db, err := sql.Open("sqlite3", tmpFile.Name())
	if err != nil {
		return fmt.Errorf("failed to open database: %w", err)
	}
	defer db.Close()

	// Dump the database as SQL
	if err := dumpDatabase(db); err != nil {
		return fmt.Errorf("failed to dump database: %w", err)
	}

	return nil
}

// executeSQL executes multiple SQL statements
func executeSQL(db *sql.DB, sqlCommands string) error {
	// Split the SQL into individual statements
	statements := strings.Split(sqlCommands, ";")

	for _, stmt := range statements {
		stmt = strings.TrimSpace(stmt)
		if stmt == "" {
			continue
		}

		if _, err := db.Exec(stmt); err != nil {
			return fmt.Errorf("failed to execute statement '%s': %w", stmt, err)
		}
	}

	return nil
}

// dumpDatabase outputs the database schema and data using a comprehensive SQL-based approach
func dumpDatabase(db *sql.DB) error {
	// Execute a comprehensive dump query that mimics .dump command
	dumpQueries := []string{
		"SELECT 'PRAGMA foreign_keys=OFF;'",
		"SELECT 'BEGIN TRANSACTION;'",
		`SELECT sql || ';' FROM sqlite_master 
		 WHERE type IN ('table','index','trigger','view') 
		   AND name NOT LIKE 'sqlite_%' 
		   AND sql IS NOT NULL
		 ORDER BY CASE type 
		   WHEN 'table' THEN 1 
		   WHEN 'index' THEN 2 
		   WHEN 'trigger' THEN 3 
		   WHEN 'view' THEN 4 
		 END, name`,
	}

	// Execute schema dump queries
	for _, query := range dumpQueries {
		if err := executeAndPrintQuery(db, query); err != nil {
			return fmt.Errorf("failed to execute dump query: %w", err)
		}
	}

	// Dump table data using the existing efficient method
	if err := dumpAllTableDataSimple(db); err != nil {
		return fmt.Errorf("failed to dump table data: %w", err)
	}

	// End transaction
	fmt.Println("COMMIT;")
	return nil
}

// executeAndPrintQuery executes a query and prints all results
func executeAndPrintQuery(db *sql.DB, query string) error {
	rows, err := db.Query(query)
	if err != nil {
		return err
	}
	defer rows.Close()

	for rows.Next() {
		var result string
		if err := rows.Scan(&result); err != nil {
			return err
		}
		fmt.Println(result)
	}
	return nil
}

// dumpAllTableDataSimple dumps data for all tables using the proven quote() approach
func dumpAllTableDataSimple(db *sql.DB) error {
	// Get all table names
	tableRows, err := db.Query("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name")
	if err != nil {
		return fmt.Errorf("failed to get table names: %w", err)
	}
	defer tableRows.Close()

	// Dump data for each table
	for tableRows.Next() {
		var tableName string
		if err := tableRows.Scan(&tableName); err != nil {
			return fmt.Errorf("failed to scan table name: %w", err)
		}

		if err := dumpTableDataWithQuote(db, tableName); err != nil {
			return fmt.Errorf("failed to dump data for table %s: %w", tableName, err)
		}
	}

	return nil
}

// dumpTableDataWithQuote uses SQLite's quote() function for proper value escaping
func dumpTableDataWithQuote(db *sql.DB, tableName string) error {
	// First, get column names
	colRows, err := db.Query(fmt.Sprintf("PRAGMA table_info(%s)", tableName))
	if err != nil {
		return fmt.Errorf("failed to get table info: %w", err)
	}
	defer colRows.Close()

	var columns []string
	for colRows.Next() {
		var cid int
		var name, dataType string
		var notNull, pk int
		var defaultValue sql.NullString

		if err := colRows.Scan(&cid, &name, &dataType, &notNull, &defaultValue, &pk); err != nil {
			return fmt.Errorf("failed to scan column info: %w", err)
		}
		columns = append(columns, name)
	}

	if len(columns) == 0 {
		return nil // No columns, skip this table
	}

	// Build the query with quote() for each column
	quotedCols := make([]string, len(columns))
	for i, col := range columns {
		quotedCols[i] = fmt.Sprintf("quote(%s)", col)
	}

	// Create a query that produces properly quoted INSERT statements
	query := fmt.Sprintf(`
		SELECT 'INSERT INTO %s VALUES(' || %s || ');'
		FROM %s
	`, tableName, strings.Join(quotedCols, "||','||"), tableName)

	dataRows, err := db.Query(query)
	if err != nil {
		return fmt.Errorf("failed to query table data: %w", err)
	}
	defer dataRows.Close()

	// Output each INSERT statement
	for dataRows.Next() {
		var insertStmt string
		if err := dataRows.Scan(&insertStmt); err != nil {
			return fmt.Errorf("failed to scan insert statement: %w", err)
		}
		fmt.Println(insertStmt)
	}

	return nil
}

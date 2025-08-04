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

// dumpDatabase outputs the database schema and data as SQL statements
func dumpDatabase(db *sql.DB) error {
	// Start with pragma and transaction
	fmt.Println("PRAGMA foreign_keys=OFF;")
	fmt.Println("BEGIN TRANSACTION;")

	// Get all table names
	rows, err := db.Query("SELECT name FROM sqlite_master WHERE type='table' ORDER BY name")
	if err != nil {
		return fmt.Errorf("failed to get table names: %w", err)
	}
	defer rows.Close()

	var tables []string
	for rows.Next() {
		var tableName string
		if err := rows.Scan(&tableName); err != nil {
			return fmt.Errorf("failed to scan table name: %w", err)
		}
		tables = append(tables, tableName)
	}

	// Dump schema for each table
	for _, table := range tables {
		if err := dumpTableSchema(db, table); err != nil {
			return fmt.Errorf("failed to dump schema for table %s: %w", table, err)
		}
	}

	// Dump data for each table
	for _, table := range tables {
		if err := dumpTableData(db, table); err != nil {
			return fmt.Errorf("failed to dump data for table %s: %w", table, err)
		}
	}

	// End transaction
	fmt.Println("COMMIT;")

	return nil
}

// dumpTableSchema outputs the CREATE TABLE statement for a table
func dumpTableSchema(db *sql.DB, tableName string) error {
	var sql string
	row := db.QueryRow("SELECT sql FROM sqlite_master WHERE type='table' AND name=?", tableName)
	if err := row.Scan(&sql); err != nil {
		return fmt.Errorf("failed to get schema for table %s: %w", tableName, err)
	}

	fmt.Printf("%s;\n", sql)
	return nil
}

// dumpTableData outputs INSERT statements for all data in a table
func dumpTableData(db *sql.DB, tableName string) error {
	// Get column information
	rows, err := db.Query(fmt.Sprintf("PRAGMA table_info(%s)", tableName))
	if err != nil {
		return fmt.Errorf("failed to get table info: %w", err)
	}
	defer rows.Close()

	var columns []string
	for rows.Next() {
		var cid int
		var name, dataType string
		var notNull, pk int
		var defaultValue sql.NullString

		if err := rows.Scan(&cid, &name, &dataType, &notNull, &defaultValue, &pk); err != nil {
			return fmt.Errorf("failed to scan column info: %w", err)
		}
		columns = append(columns, name)
	}

	// Get all data from the table
	dataRows, err := db.Query(fmt.Sprintf("SELECT * FROM %s", tableName))
	if err != nil {
		return fmt.Errorf("failed to query table data: %w", err)
	}
	defer dataRows.Close()

	// Create column placeholders
	columnList := strings.Join(columns, ",")

	for dataRows.Next() {
		// Create a slice to hold the values
		values := make([]interface{}, len(columns))
		valuePtrs := make([]interface{}, len(columns))
		for i := range values {
			valuePtrs[i] = &values[i]
		}

		// Scan the row
		if err := dataRows.Scan(valuePtrs...); err != nil {
			return fmt.Errorf("failed to scan row: %w", err)
		}

		// Build the INSERT statement
		var valueStrings []string
		for _, value := range values {
			if value == nil {
				valueStrings = append(valueStrings, "NULL")
			} else {
				switch v := value.(type) {
				case string:
					valueStrings = append(valueStrings, fmt.Sprintf("'%s'", strings.ReplaceAll(v, "'", "''")))
				case []byte:
					valueStrings = append(valueStrings, fmt.Sprintf("'%s'", strings.ReplaceAll(string(v), "'", "''")))
				default:
					valueStrings = append(valueStrings, fmt.Sprintf("%v", v))
				}
			}
		}

		fmt.Printf("INSERT INTO %s(%s) VALUES(%s);\n",
			tableName, columnList, strings.Join(valueStrings, ","))
	}

	return nil
}

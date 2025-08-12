package main

import (
	"fmt"
	"runtime"

	"github.com/danielsiegl/gitsqlite/internal/sqlite"
)

func main() {
	fmt.Printf("Current OS: %s\n", runtime.GOOS)

	engine := &sqlite.Engine{Bin: "sqlite3"}

	// Test the path detection
	path, err := engine.GetPathWithPackageManager()
	if err != nil {
		fmt.Printf("SQLite detection failed: %v\n", err)
	} else {
		fmt.Printf("SQLite found at: %s\n", path)
	}

	// Test availability check
	availablePath, version, err := engine.CheckAvailability()
	if err != nil {
		fmt.Printf("Availability check failed: %v\n", err)
	} else {
		fmt.Printf("Availability check - Path: %s, Version: %s\n", availablePath, version)
	}
}

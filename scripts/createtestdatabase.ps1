#!/usr/bin/env pwsh
# Script to create a test SQLite database for smoketesting
# This script creates a standardized test database with sample data

param(
    [Parameter(Mandatory=$false)]
    [string]$DatabasePath = "smoketest.db"
)

Write-Host "Creating test database: $DatabasePath"

# Create a sqlite database with a table and some data
$sqlCommands = @"
CREATE TABLE test (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO test (name) VALUES ('Alice'), ('Bob'), ('Charlie');
"@

# Execute the SQL commands
sqlite3 $DatabasePath $sqlCommands

# Verify the database and table creation
Write-Host "Database contents:"
sqlite3 $DatabasePath "SELECT name FROM test;"

# Check if database was created successfully
if (-not (Test-Path $DatabasePath)) {
    Write-Error "FAILED: $DatabasePath was not created"
    exit 1
}

$dbSize = (Get-Item $DatabasePath).Length
Write-Host "Database file size: $dbSize bytes"

if ($dbSize -eq 0) {
    Write-Error "FAILED: $DatabasePath is empty"
    exit 1
}

Write-Host "✅ Test database created successfully: $DatabasePath"

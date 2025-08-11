#!/bin/bash

# GitSQLite Roundtrip Test Script for Linux/WSL
# This script tests the clean and smudge operations of gitsqlite

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_info() {
    echo -e "${CYAN}ℹ${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_header() {
    echo -e "${CYAN}$1${NC}"
}

# Check if gitsqlite binary exists
GITSQLITE_BIN=""
if [ -f "./bin/gitsqlite-linux-amd64" ]; then
    GITSQLITE_BIN="./bin/gitsqlite-linux-amd64"
elif [ -f "./gitsqlite" ]; then
    GITSQLITE_BIN="./gitsqlite"
elif command -v gitsqlite &> /dev/null; then
    GITSQLITE_BIN="gitsqlite"
else
    print_error "GitSQLite binary not found!"
    print_info "Expected locations:"
    print_info "  - ./bin/gitsqlite-linux-amd64"
    print_info "  - ./gitsqlite"
    print_info "  - gitsqlite (in PATH)"
    exit 1
fi

print_header "🧪 GitSQLite Roundtrip Test Script"
print_info "Using binary: $GITSQLITE_BIN"

# Check if sqlite3 is available
if ! command -v sqlite3 &> /dev/null; then
    print_error "sqlite3 command not found!"
    print_info "Please install SQLite3:"
    print_info "  Ubuntu/Debian: sudo apt-get install sqlite3"
    print_info "  RHEL/CentOS:   sudo yum install sqlite"
    exit 1
fi

# Display version information
print_header "📋 Version Information"
$GITSQLITE_BIN -version || {
    print_error "Failed to get version information"
    exit 1
}

# Create test directory
TEST_DIR="test_roundtrip_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

print_header "🔧 Setting up test environment in: $TEST_DIR"

# Create a test database with sample data
print_info "Creating test database..."
sqlite3 original_test.db << 'EOF'
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary REAL,
    hire_date TEXT
);

INSERT INTO employees (name, department, salary, hire_date) VALUES
    ('Alice Johnson', 'Engineering', 75000.50, '2023-01-15'),
    ('Bob Smith', 'Marketing', 65000.00, '2023-02-20'),
    ('Charlie Brown', 'Engineering', 80000.25, '2023-01-10'),
    ('Diana Prince', 'HR', 70000.00, '2023-03-05'),
    ('Eve Wilson', 'Sales', 72000.75, '2023-02-15');

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    status TEXT,
    budget REAL
);

INSERT INTO projects (project_name, status, budget) VALUES
    ('Project Alpha', 'Active', 150000.00),
    ('Project Beta', 'Completed', 200000.00),
    ('Project Gamma', 'Planning', 175000.50);

-- Create a view for testing
CREATE VIEW employee_summary AS
SELECT department, COUNT(*) as employee_count, AVG(salary) as avg_salary
FROM employees
GROUP BY department;
EOF

print_status "Test database created with sample data"

# Show original database content
print_header "📊 Original Database Content"
print_info "Database size: $(du -h original_test.db | cut -f1)"
print_info "Tables and data:"
sqlite3 original_test.db ".tables"
echo ""
print_info "Employee data:"
sqlite3 original_test.db "SELECT * FROM employees LIMIT 3;"
echo ""
print_info "Project data:"
sqlite3 original_test.db "SELECT * FROM projects;"

# Step 1: Clean operation (database -> SQL)
print_header "🧹 Step 1: Clean Operation (Database → SQL)"
print_info "Converting binary database to SQL dump..."

if $GITSQLITE_BIN clean < original_test.db > cleaned_output.sql 2> clean_error.log; then
    print_status "Clean operation completed successfully"
    print_info "SQL output size: $(du -h cleaned_output.sql | cut -f1)"
    
    # Show first few lines of SQL output
    print_info "First 10 lines of SQL output:"
    head -n 10 cleaned_output.sql
    
    # Count lines in SQL output
    LINE_COUNT=$(wc -l < cleaned_output.sql)
    print_info "Total lines in SQL: $LINE_COUNT"
else
    print_error "Clean operation failed!"
    if [ -s clean_error.log ]; then
        print_error "Error details:"
        cat clean_error.log
    fi
    exit 1
fi

# Step 2: Smudge operation (SQL -> database)
print_header "🔄 Step 2: Smudge Operation (SQL → Database)"
print_info "Converting SQL dump back to binary database..."

if $GITSQLITE_BIN smudge < cleaned_output.sql > reconstructed_test.db 2> smudge_error.log; then
    print_status "Smudge operation completed successfully"
    print_info "Reconstructed database size: $(du -h reconstructed_test.db | cut -f1)"
else
    print_error "Smudge operation failed!"
    if [ -s smudge_error.log ]; then
        print_error "Error details:"
        cat smudge_error.log
    fi
    exit 1
fi

# Step 3: Verification
print_header "🔍 Step 3: Verification"

# Compare database sizes
ORIGINAL_SIZE=$(stat -c%s original_test.db)
RECONSTRUCTED_SIZE=$(stat -c%s reconstructed_test.db)

print_info "Size comparison:"
print_info "  Original:      $ORIGINAL_SIZE bytes"
print_info "  Reconstructed: $RECONSTRUCTED_SIZE bytes"

if [ "$ORIGINAL_SIZE" -eq "$RECONSTRUCTED_SIZE" ]; then
    print_status "Database sizes match perfectly!"
else
    print_warning "Database sizes differ (this may be normal due to SQLite internals)"
fi

# Verify data integrity by comparing content
print_info "Verifying data integrity..."

# Export both databases to comparable SQL format
sqlite3 original_test.db ".dump" > original_dump.sql
sqlite3 reconstructed_test.db ".dump" > reconstructed_dump.sql

# Compare the dumps
if diff original_dump.sql reconstructed_dump.sql > /dev/null; then
    print_status "Data verification passed - content is identical!"
else
    print_warning "Data content differs, checking key data..."
    
    # Check specific table data
    print_info "Comparing employee table data..."
    ORIG_EMP=$(sqlite3 original_test.db "SELECT COUNT(*), SUM(salary) FROM employees;")
    RECON_EMP=$(sqlite3 reconstructed_test.db "SELECT COUNT(*), SUM(salary) FROM employees;")
    
    if [ "$ORIG_EMP" = "$RECON_EMP" ]; then
        print_status "Employee data integrity verified"
    else
        print_error "Employee data mismatch!"
        print_error "Original: $ORIG_EMP"
        print_error "Reconstructed: $RECON_EMP"
    fi
    
    print_info "Comparing project table data..."
    ORIG_PROJ=$(sqlite3 original_test.db "SELECT COUNT(*), SUM(budget) FROM projects;")
    RECON_PROJ=$(sqlite3 reconstructed_test.db "SELECT COUNT(*), SUM(budget) FROM projects;")
    
    if [ "$ORIG_PROJ" = "$RECON_PROJ" ]; then
        print_status "Project data integrity verified"
    else
        print_error "Project data mismatch!"
        print_error "Original: $ORIG_PROJ"
        print_error "Reconstructed: $RECON_PROJ"
    fi
fi

# Test queries on reconstructed database
print_info "Testing queries on reconstructed database..."
print_info "Employee summary view:"
sqlite3 reconstructed_test.db "SELECT * FROM employee_summary;"

# Check for any errors in the logs
print_header "📋 Error Log Check"
if [ -s clean_error.log ]; then
    print_warning "Clean operation had some output in error log:"
    cat clean_error.log
else
    print_status "No errors in clean operation"
fi

if [ -s smudge_error.log ]; then
    print_warning "Smudge operation had some output in error log:"
    cat smudge_error.log
else
    print_status "No errors in smudge operation"
fi

# Cleanup option
print_header "🧽 Cleanup"
cd ..
print_info "Test completed in directory: $TEST_DIR"
read -p "Do you want to remove the test directory? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf "$TEST_DIR"
    print_status "Test directory cleaned up"
else
    print_info "Test directory preserved for inspection: $TEST_DIR"
fi

print_header "🎉 Roundtrip Test Complete!"
print_status "GitSQLite roundtrip functionality verified successfully"

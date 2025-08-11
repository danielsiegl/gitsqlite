#!/bin/bash

# GitSQLite Roundtrip Test Script for Linux/WSL
# Single script that can run both quick and comprehensive tests

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Global variables
VERBOSE=false
CLEANUP=true
ORIGINAL_DIR=$(pwd)

# Function to print colored output
print_status() { echo -e "${GREEN}✓${NC} $1"; }
print_info() { echo -e "${CYAN}ℹ${NC} $1"; }
print_warning() { echo -e "${YELLOW}⚠${NC} $1"; }
print_error() { echo -e "${RED}✗${NC} $1"; }
print_header() { echo -e "${CYAN}$1${NC}"; }

# Verbose logging function
verbose_log() {
    if [ "$VERBOSE" = true ]; then
        print_info "$1"
    fi
}

# Usage function
show_usage() {
    echo "GitSQLite Roundtrip Test Script"
    echo ""
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -v, --verbose     Enable verbose output with detailed information"
    echo "  -q, --quiet       Quick test mode (minimal output)"
    echo "  -k, --keep        Keep test files after completion"
    echo "  -h, --help        Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0                # Basic test"
    echo "  $0 -v             # Verbose test with detailed output"
    echo "  $0 -q             # Quick test with minimal output"
    echo "  $0 -v -k          # Verbose test, keep test files"
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        -q|--quiet)
            VERBOSE=false
            shift
            ;;
        -k|--keep)
            CLEANUP=false
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Find gitsqlite binary
find_gitsqlite() {
    if [ -f "$ORIGINAL_DIR/bin/gitsqlite-linux-amd64" ]; then
        echo "$ORIGINAL_DIR/bin/gitsqlite-linux-amd64"
    elif [ -f "$ORIGINAL_DIR/gitsqlite" ]; then
        echo "$ORIGINAL_DIR/gitsqlite"
    elif command -v gitsqlite &> /dev/null; then
        echo "gitsqlite"
    else
        return 1
    fi
}

# Main test function
run_test() {
    local test_name="$1"
    local create_db_func="$2"
    
    if [ "$VERBOSE" = true ]; then
        print_header "🧪 $test_name"
    else
        echo "🧪 $test_name"
    fi
    
    # Create test directory
    local test_dir="test_$(echo "$test_name" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$test_dir"
    cd "$test_dir"
    
    verbose_log "Test directory: $test_dir"
    
    # Create test database
    verbose_log "Creating test database..."
    $create_db_func
    print_status "Test database created"
    
    if [ "$VERBOSE" = true ]; then
        local db_size=$(du -h test.db 2>/dev/null | cut -f1 || echo "unknown")
        verbose_log "Database size: $db_size"
        verbose_log "Original data:"
        sqlite3 test.db "SELECT name FROM sqlite_master WHERE type='table';" | head -5
    fi
    
    # Step 1: Clean operation
    verbose_log "Converting database to SQL..."
    if $GITSQLITE_BIN clean < test.db > test.sql 2> clean_error.log; then
        local sql_lines=$(wc -l < test.sql)
        print_status "Clean operation completed ($sql_lines lines)"
        
        if [ "$VERBOSE" = true ]; then
            verbose_log "First few lines of SQL:"
            head -n 5 test.sql
        fi
    else
        print_error "Clean operation failed!"
        if [ -s clean_error.log ]; then
            cat clean_error.log
        fi
        return 1
    fi
    
    # Step 2: Smudge operation
    verbose_log "Converting SQL back to database..."
    if $GITSQLITE_BIN smudge < test.sql > test_restored.db 2> smudge_error.log; then
        print_status "Smudge operation completed"
    else
        print_error "Smudge operation failed!"
        if [ -s smudge_error.log ]; then
            cat smudge_error.log
        fi
        return 1
    fi
    
    # Verification
    verbose_log "Verifying data integrity..."
    
    # Compare file sizes
    if [ "$VERBOSE" = true ]; then
        local orig_size=$(stat -c%s test.db 2>/dev/null || echo "0")
        local rest_size=$(stat -c%s test_restored.db 2>/dev/null || echo "0")
        verbose_log "Original size: $orig_size bytes"
        verbose_log "Restored size: $rest_size bytes"
        
        if [ "$orig_size" -eq "$rest_size" ]; then
            verbose_log "File sizes match perfectly"
        else
            verbose_log "File sizes differ (may be normal)"
        fi
    fi
    
    # Verify data content by comparing a test query
    verify_data_integrity
    
    cd "$ORIGINAL_DIR"
    
    # Cleanup
    if [ "$CLEANUP" = true ]; then
        rm -rf "$test_dir"
        verbose_log "Test directory cleaned up"
    else
        verbose_log "Test files preserved in: $test_dir"
    fi
}

# Data integrity verification
verify_data_integrity() {
    # Get record counts from both databases
    local orig_tables=$(sqlite3 test.db "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';" 2>/dev/null || echo "")
    local rest_tables=$(sqlite3 test_restored.db "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';" 2>/dev/null || echo "")
    
    if [ "$orig_tables" = "$rest_tables" ]; then
        print_status "Table structure verification passed"
        
        # Test data in the first table if it exists
        local first_table=$(echo "$orig_tables" | head -n 1)
        if [ -n "$first_table" ]; then
            local orig_count=$(sqlite3 test.db "SELECT COUNT(*) FROM $first_table;" 2>/dev/null || echo "0")
            local rest_count=$(sqlite3 test_restored.db "SELECT COUNT(*) FROM $first_table;" 2>/dev/null || echo "0")
            
            if [ "$orig_count" = "$rest_count" ]; then
                print_status "Data integrity verified (Records: $orig_count)"
            else
                print_error "Data count mismatch: $orig_count vs $rest_count"
                return 1
            fi
        fi
    else
        print_error "Table structure mismatch!"
        return 1
    fi
}

# Test database creation functions
create_simple_db() {
    sqlite3 test.db "
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO users (name, email) VALUES 
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com'),
    ('Charlie', 'charlie@example.com');
"
}

create_complex_db() {
    sqlite3 test.db << 'EOF'
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
    ('Diana Prince', 'HR', 70000.00, '2023-03-05');

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    status TEXT,
    budget REAL
);

INSERT INTO projects (project_name, status, budget) VALUES
    ('Project Alpha', 'Active', 150000.00),
    ('Project Beta', 'Completed', 200000.00);

CREATE VIEW employee_summary AS
SELECT department, COUNT(*) as employee_count, AVG(salary) as avg_salary
FROM employees
GROUP BY department;
EOF
}

# Main execution
main() {
    print_header "🧪 GitSQLite Roundtrip Test"
    
    # Find binary
    GITSQLITE_BIN=$(find_gitsqlite)
    if [ $? -ne 0 ]; then
        print_error "GitSQLite binary not found!"
        print_info "Expected locations:"
        print_info "  - ./bin/gitsqlite-linux-amd64"
        print_info "  - ./gitsqlite"
        print_info "  - gitsqlite (in PATH)"
        exit 1
    fi
    
    print_info "Using binary: $GITSQLITE_BIN"
    
    # Check sqlite3
    if ! command -v sqlite3 &> /dev/null; then
        print_error "sqlite3 not found! Install with: sudo apt-get install sqlite3"
        exit 1
    fi
    
    # Show version if verbose
    if [ "$VERBOSE" = true ]; then
        print_header "📋 Version Information"
        $GITSQLITE_BIN -version || {
            print_error "Failed to get version information"
            exit 1
        }
    fi
    
    # Run tests
    run_test "Simple Roundtrip Test" create_simple_db
    
    if [ "$VERBOSE" = true ]; then
        run_test "Complex Database Test" create_complex_db
    fi
    
    print_header "🎉 All Tests Completed Successfully!"
    print_status "GitSQLite roundtrip functionality verified"
}

# Run main function
main "$@"

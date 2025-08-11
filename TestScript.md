# GitSQLite Test Scripts Documentation

This document describes the test scripts available for validating GitSQLite functionality across different platforms.

## Overview

GitSQLite includes automated test scripts to verify the roundtrip functionality (clean and smudge operations) works correctly. These scripts ensure that:

1. **Clean Operation**: Binary SQLite database → SQL dump
2. **Smudge Operation**: SQL dump → Binary SQLite database  
3. **Data Integrity**: Original data is preserved through the roundtrip process

## Available Test Scripts

### 🪟 Windows PowerShell Script

**File**: `scripts/test_roundtrip.ps1`

#### Features
- Native PowerShell implementation for Windows environments
- Colored output for better readability
- Comprehensive error handling and logging
- Automatic cleanup with optional preservation
- Detailed file size and data verification

#### Usage
```powershell
# Basic test
.\scripts\test_roundtrip.ps1

# Show help
.\scripts\test_roundtrip.ps1 -Help

# Keep test files for inspection
.\scripts\test_roundtrip.ps1 -KeepFiles

# Verbose output
.\scripts\test_roundtrip.ps1 -Verbose
```

#### Prerequisites
- Windows PowerShell 5.1+ or PowerShell Core
- SQLite3 executable in PATH or specify with `-SqlitePath`
- GitSQLite executable (`gitsqlite.exe`)

#### Example Output
```
🧪 GitSQLite Roundtrip Test
✓ Using binary: .\gitsqlite.exe
✓ SQLite3 found: sqlite3
📦 Creating test database...
✓ Test database created with 3 records
🧹 Clean operation (Database → SQL)...
✓ Clean completed: 7 lines of SQL generated
🔄 Smudge operation (SQL → Database)...
✓ Smudge completed: Database reconstructed
🔍 Verification...
✓ Data integrity verified: 3 records match
✓ File sizes match: 8192 bytes
🎉 Roundtrip test completed successfully!
```

---

### 🐧 Linux/WSL Shell Script

**File**: `scripts/test_roundtrip.sh`

#### Features
- Unified script with multiple operating modes
- Cross-platform compatibility (Linux, WSL, macOS)
- Flexible output levels (quiet, normal, verbose)
- Command-line argument parsing
- Automatic binary detection

#### Usage
```bash
# Basic test
./scripts/test_roundtrip.sh

# Quick test (minimal output)
./scripts/test_roundtrip.sh -q

# Verbose test (detailed output + complex database)
./scripts/test_roundtrip.sh -v

# Keep test files for inspection
./scripts/test_roundtrip.sh -k

# Verbose + keep files
./scripts/test_roundtrip.sh -v -k

# Show help
./scripts/test_roundtrip.sh -h
```

#### Command Line Options
| Option | Description |
|--------|-------------|
| `-v, --verbose` | Enable verbose output with detailed information |
| `-q, --quiet` | Quick test mode (minimal output) |
| `-k, --keep` | Keep test files after completion |
| `-h, --help` | Show help message |

#### Prerequisites
- Bash shell
- SQLite3 installed (`sudo apt-get install sqlite3`)
- GitSQLite binary (`gitsqlite-linux-amd64`, `gitsqlite`, or in PATH)

#### Example Output (Basic Mode)
```
🧪 GitSQLite Roundtrip Test
ℹ Using binary: ./bin/gitsqlite-linux-amd64
🧪 Simple Roundtrip Test
✓ Test database created
✓ Clean operation completed (7 lines)
✓ Smudge operation completed
✓ Table structure verification passed
✓ Data integrity verified (Records: 3)
🎉 All Tests Completed Successfully!
✓ GitSQLite roundtrip functionality verified
```

#### Example Output (Verbose Mode)
```
🧪 GitSQLite Roundtrip Test
ℹ Using binary: ./bin/gitsqlite-linux-amd64
📋 Version Information
gitsqlite version 1.0.0-abc1234
Git commit: abc1234567890
Git branch: main
Build time: 2025-08-11T10:30:45Z

🧪 Simple Roundtrip Test
ℹ Test directory: test_simple_roundtrip_test_20250811_103045
ℹ Creating test database...
✓ Test database created
ℹ Database size: 8.0K
ℹ Original data: users
ℹ Converting database to SQL...
✓ Clean operation completed (7 lines)
ℹ First few lines of SQL:
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
ℹ Converting SQL back to database...
✓ Smudge operation completed
ℹ Verifying data integrity...
ℹ Original size: 8192 bytes
ℹ Restored size: 8192 bytes
ℹ File sizes match perfectly
✓ Table structure verification passed
✓ Data integrity verified (Records: 3)

🧪 Complex Database Test
[... detailed output for complex test ...]

🎉 All Tests Completed Successfully!
✓ GitSQLite roundtrip functionality verified
```

---

## Test Database Structures

### Simple Test Database
```sql
CREATE TABLE users (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    email TEXT
);

INSERT INTO users (name, email) VALUES 
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com'),
    ('Charlie', 'charlie@example.com');
```

### Complex Test Database (Verbose Mode Only)
```sql
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary REAL,
    hire_date TEXT
);

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    status TEXT,
    budget REAL
);

CREATE VIEW employee_summary AS
SELECT department, COUNT(*) as employee_count, AVG(salary) as avg_salary
FROM employees
GROUP BY department;
```

---

## Verification Process

Both scripts perform comprehensive verification:

### 1. **Operation Verification**
- ✅ Clean operation completes without errors
- ✅ Smudge operation completes without errors
- ✅ SQL output is generated and has expected structure

### 2. **Data Integrity Verification**
- ✅ Table structure matches (tables, columns, indexes)
- ✅ Record counts match between original and restored
- ✅ Sample data verification where applicable

### 3. **File Integrity Verification**
- ✅ File sizes comparison (should match for simple cases)
- ✅ SQL structure validation
- ✅ Error log analysis

---

## Troubleshooting

### Common Issues

#### "Binary not found"
**Cause**: GitSQLite executable not available
**Solutions**:
- Build GitSQLite: `go build -o gitsqlite`
- Use platform-specific binary from `bin/` directory
- Ensure executable is in PATH

#### "sqlite3 not found"
**Cause**: SQLite3 not installed
**Solutions**:
- **Windows**: Download from [sqlite.org](https://sqlite.org/download.html)
- **Ubuntu/Debian**: `sudo apt-get install sqlite3`
- **RHEL/CentOS**: `sudo yum install sqlite`
- **macOS**: `brew install sqlite3`

#### "Permission denied"
**Cause**: Script not executable (Linux/macOS)
**Solution**: `chmod +x scripts/test_roundtrip.sh`

#### WSL Path Issues
**Cause**: Windows/Linux path translation
**Solution**: Run from GitSQLite project root directory

### Exit Codes

| Code | Meaning |
|------|---------|
| 0 | Success - all tests passed |
| 1 | General error (binary not found, setup failure) |
| 2 | SQLite3 not available |
| 3 | Test failure (clean/smudge/verification failed) |

---

## Integration with Development Workflow

### Local Development
```bash
# Quick verification after code changes
./scripts/test_roundtrip.sh

# Detailed testing before commits
./scripts/test_roundtrip.sh -v

# Keep files for debugging
./scripts/test_roundtrip.sh -v -k
```

### CI/CD Integration
The scripts can be integrated into automated testing pipelines:

```yaml
# GitHub Actions example
- name: Run Roundtrip Tests
  run: |
    chmod +x scripts/test_roundtrip.sh
    ./scripts/test_roundtrip.sh -v
```

### Cross-Platform Testing
```bash
# Test Linux binary on WSL
wsl ./scripts/test_roundtrip.sh -v

# Test Windows binary
.\scripts\test_roundtrip.ps1 -Verbose
```

---

## Performance Expectations

### Typical Test Duration
- **Quick mode**: ~2-5 seconds
- **Basic mode**: ~5-10 seconds  
- **Verbose mode**: ~10-20 seconds

### Resource Usage
- **Memory**: < 50MB peak usage
- **Disk**: < 1MB temporary files
- **CPU**: Minimal (I/O bound operations)

### Supported Database Sizes
- **Test databases**: 8KB - 50KB
- **Production capability**: Tested up to 35MB+ databases
- **Memory efficient**: Streaming implementation handles large files

---

## Contributing

When modifying the test scripts:

1. **Maintain Compatibility**: Ensure both Windows and Linux versions work
2. **Consistent Output**: Use similar formatting and status messages
3. **Error Handling**: Provide clear error messages and exit codes
4. **Documentation**: Update this file when adding new features

### Adding New Tests
```bash
# Template for new test cases
create_new_test_db() {
    sqlite3 test.db "
    CREATE TABLE new_feature (...);
    INSERT INTO new_feature VALUES (...);
    "
}
```

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2025-08-11 | Initial test scripts with basic roundtrip testing |
| 1.1 | 2025-08-11 | Added verbose mode and complex database testing |
| 1.2 | 2025-08-11 | Unified Linux script with command-line options |

---

## Support

For issues with the test scripts:

1. **Check Prerequisites**: Ensure all dependencies are installed
2. **Run with Verbose**: Use `-v` flag for detailed output
3. **Keep Test Files**: Use `-k` flag to inspect generated files
4. **Check Exit Codes**: Non-zero exit indicates specific failure type

**Happy Testing!** 🧪✨

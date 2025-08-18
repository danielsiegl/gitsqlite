# gitsqlite

[![License: BSD-2](https://img.shields.io/badge/license-BSD--2-blue.svg)](LICENSE)
[![Go Version](https://img.shields.io/github/go-mod/go-version/danielsiegl/gitsqlite)](go.mod)
[![Release](https://img.shields.io/github/v/release/danielsiegl/gitsqlite)](https://github.com/danielsiegl/gitsqlite/releases)
[![Downloads](https://img.shields.io/github/downloads/danielsiegl/gitsqlite/total.svg)](https://github.com/danielsiegl/gitsqlite/releases)

A Git clean/smudge filter for storing SQLite databases in plain text SQL, enabling meaningful diffs and merges.

## Why

Binary SQLite databases are opaque to Git – you can’t easily see changes or resolve conflicts.  
**gitsqlite** automatically converts between `.sqlite` and SQL text on checkout and commit, letting you version SQLite data just like source code.

## Quick Start

1. **Install GitSQLite** (see [Installation](#installation) for all options):
   ```bash
   # Windows
   curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-amd64.exe
   
   # Linux/macOS  
   curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
   chmod +x gitsqlite && sudo mv gitsqlite /usr/local/bin/
   ```

2. **Configure Git filters**:
   ```bash
   echo '*.sqlite filter=gitsqlite diff=gitsqlite' >> .gitattributes
   git config filter.gitsqlite.clean "gitsqlite clean"
   git config filter.gitsqlite.smudge "gitsqlite smudge"
   ```

3. **Start versioning SQLite files**:
   ```bash
   git add mydb.sqlite
   git commit -m "Add database in SQL format"
   ```

Git will automatically convert SQLite files to SQL text for storage and back to binary when checked out.

## Installation

- **Windows (PowerShell)**:  
  ```bash
  # AMD64 (Intel/AMD 64-bit)
  curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-amd64.exe
  # ARM64 (Windows on ARM)
  # curl -L -o gitsqlite.exe https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-windows-arm64.exe
  
  # Move to a directory in your PATH, e.g.:
  # Move-Item gitsqlite.exe C:\Windows\System32\
  ```

- **Linux**:  
  ```bash
  # AMD64 (Intel/AMD 64-bit) - using curl
  curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
  # ARM64 (ARM servers) - using curl
  # curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-arm64
  
  # Alternative with wget
  wget -O gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
  
  chmod +x gitsqlite
  sudo mv gitsqlite /usr/local/bin/
  ```

- **macOS**:  
  ```bash
  # Intel Macs - using curl
  curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-macos-amd64
  # Apple Silicon (M1/M2/M3) - using curl
  # curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-macos-arm64
  
  # Alternative with wget
  wget -O gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-macos-amd64
  
  chmod +x gitsqlite
  sudo mv gitsqlite /usr/local/bin/
  ```

- **From Source (Go)**:  
  ```bash
  go install github.com/danielsiegl/gitsqlite@latest
  ```

**Requirements**:
- `sqlite3` CLI available in `PATH` (or specify with `-sqlite` flag)
- Go ≥ 1.21 (only needed to build from source)

## Usage

GitSQLite operates as a Git clean/smudge filter, automatically converting between binary SQLite databases and SQL text format.

**Basic syntax:**
```bash
gitsqlite clean   # Convert SQLite binary → SQL text (for Git storage)
gitsqlite smudge  # Convert SQL text → SQLite binary (for checkout)
```

**Manual conversion:**
```bash
gitsqlite clean < database.db > database.sql
gitsqlite smudge < database.sql > database.db
```

See [CLI Parameters](#cli-parameters) for all available options.

## CLI Parameters

### Operations
- **`clean`** - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout)
- **`smudge`** - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)

### Options
- **`-sqlite <path>`** - Path to SQLite executable (default: "sqlite3")
  ```bash
  gitsqlite -sqlite /usr/local/bin/sqlite3 clean < database.db
  ```
- **`-log`** - Enable logging to file in current directory
  ```bash
  gitsqlite -log clean < database.db > database.sql
  ```
- **`-log-dir <directory>`** - Log to specified directory instead of current directory
  ```bash
  gitsqlite -log-dir ./logs clean < database.db > database.sql
  ```
- **`-version`** - Show version information
  ```bash
  gitsqlite -version
  ```
- **`-sqlite-version`** - Check if SQLite is available and show its version
  ```bash
  gitsqlite -sqlite-version
  ```
- **`-help`** - Show help information
  ```bash
  gitsqlite -help
  ```

## Examples

### Quick Start Example

1. **Create a sample SQLite database:**
```bash
sqlite3 sample.db "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT); INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com'), ('Jane Smith', 'jane@example.com');"
```

2. **Convert to SQL text:**
```bash
gitsqlite clean < sample.db > sample.sql
```

3. **View the SQL output:**
```sql
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO users VALUES(1,'John Doe','john@example.com');
INSERT INTO users VALUES(2,'Jane Smith','jane@example.com');
COMMIT;
```

4. **Convert back to database:**
```bash
gitsqlite smudge < sample.sql > restored.db
```

5. **Verify the restoration:**
```bash
sqlite3 restored.db "SELECT * FROM users;"
```

### Advanced Usage Examples

**With custom SQLite path:**
```bash
# Linux/macOS
gitsqlite -sqlite /usr/local/bin/sqlite3 clean < database.db

# Windows
gitsqlite -sqlite "C:\sqlite\sqlite3.exe" clean < database.db
```

**With logging enabled:**
```bash
# Log to current directory
gitsqlite -log clean < database.db > output.sql

# Log to specific directory
mkdir logs
gitsqlite -log-dir ./logs clean < database.db > output.sql
```

**Pipeline usage:**
```bash
# Convert and preview first 10 lines
cat sample.db | gitsqlite clean | head -10

# Round-trip conversion in pipeline
cat sample.sql | gitsqlite smudge | gitsqlite clean | tee converted.sql
```

### Round-trip Testing

Test data integrity with a complete round-trip:
```bash
# Create test → SQL → Database → SQL (should be identical)
gitsqlite smudge < sample.sql | gitsqlite clean > roundtrip.sql
diff sample.sql roundtrip.sql
```

## Testing

GitSQLite includes comprehensive test scripts to verify functionality across platforms.

### Automated Test Scripts

**Windows PowerShell:**
```powershell
# Basic test
.\scripts\test_roundtrip.ps1

# With verbose output and file preservation
.\scripts\test_roundtrip.ps1 -Verbose -KeepFiles
```

**Linux/macOS/WSL:**
```bash
# Basic test
./scripts/test_roundtrip.sh

# Quick test (minimal output)
./scripts/test_roundtrip.sh -q

# Verbose test with file preservation
./scripts/test_roundtrip.sh -v -k
```

### What the Tests Verify

- ✅ **Clean operation**: Binary SQLite → SQL dump
- ✅ **Smudge operation**: SQL dump → Binary SQLite  
- ✅ **Data integrity**: Original data preserved through round-trip
- ✅ **Table structure**: Schema correctly reconstructed
- ✅ **File size consistency**: Binary files match in size
- ✅ **Cross-platform compatibility**: Works on Windows, Linux, macOS

### Test Output Example
```
🧪 GitSQLite Roundtrip Test
✓ Using binary: ./gitsqlite
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

### Manual Testing Commands

```bash
# Test with logging for debugging
gitsqlite -log clean < test.db > test.sql
gitsqlite -log smudge < test.sql > test-restored.db

# Verify round-trip integrity
gitsqlite clean < test.db | gitsqlite smudge > restored.db
sqlite3 restored.db "SELECT COUNT(*) FROM sqlite_master;"
```

## Logging

GitSQLite provides comprehensive logging to help monitor performance and troubleshoot issues during clean and smudge operations.

### Enabling Logging

**Basic logging** (logs to current directory):
```bash
gitsqlite -log clean < database.db > output.sql
```

**Custom log directory**:
```bash
gitsqlite -log-dir ./logs clean < database.db > output.sql
```

### Log File Contents

The log files contain detailed timing information in JSON format:
- **Operation start/end times** with human-readable duration (HH:MM:SS.mmm)
- **File operations** (copy, dump, restore, cleanup)
- **Performance metrics** for large database processing
- **Error messages** and debugging information

### Example Log Entry

```json
{
  "time": "2025-08-18T10:30:45.123Z",
  "level": "INFO",
  "msg": "Clean operation completed",
  "operation": "clean",
  "duration": "00:01:23.456",
  "input_size": 1048576,
  "output_lines": 1234
}
```

### Log File Locations

- **Default**: `gitsqlite-clean.log` or `gitsqlite-smudge.log` in current directory
- **Custom**: Files are created in the directory specified by `-log-dir`
- **Automatic cleanup**: Temporary files are logged and cleaned up after operations

### Best Practices

- Enable logging when troubleshooting performance issues
- Use custom log directories to keep logs organized
- Monitor log files for large database operations to track progress
- Logs help identify bottlenecks in clean/smudge operations

## ⚠️ Important Notice: Database Merging

**Merging SQLite databases is complex and risky for many applications.** While gitsqlite enables text-based diffs and basic merging, **domain-specific databases often require specialized tools for safe merging**.

### When NOT to rely on automatic merging:

- **Sparx Enterprise Architect (.qeax)** databases - Use [LieberLieber LemonTree](https://www.lieberlieber.com/lemontree/) for proper model merging
- **Application-specific databases** with complex schemas, constraints, or business logic
- **Databases with foreign key relationships** where merge conflicts could break referential integrity
- **Production databases** where data corruption could have serious consequences

### Recommended workflow:

1. **Use gitsqlite for visibility** - See what changed in your database commits
2. **Use specialized tools for merging** - Domain experts tools understand your data structure
3. **Manual conflict resolution** - Review and resolve conflicts using appropriate tools
4. **Test thoroughly** - Validate database integrity after any merge operation

**gitsqlite is excellent for tracking changes and simple scenarios, but consider it a foundation tool rather than a complete solution for complex database merging.**

## Known Issues / Limitations

- `sqlite_sequence` table content can change outside of your edits.
- Large databases may be slow to convert.
- Temporary files are written to the system temp directory.

## Uninstall

To remove the filter globally:

```bash
git config --global --unset-all filter.gitsqlite.clean
git config --global --unset-all filter.gitsqlite.smudge
```

Remove the `.gitattributes` entry from your repos.

## Contributing

Pull requests and issues are welcome.

- Run tests before submitting:
  ```bash
  go test ./...
  # or
  ./scripts/test_roundtrip.ps1
  ```
- Keep PRs focused on one change.
- Follow Go code conventions.
- See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) (optional file).

## Versioning & Changelog

We follow [Semantic Versioning](https://semver.org/).  
Changes are documented in [Releases](https://github.com/danielsiegl/gitsqlite/releases).

## Credits

Forked from [quarnster/gitsqlite](https://github.com/quarnster/gitsqlite) with improvements:
- Updated build and installation instructions
- Made to handle more scenarios
- Fixed cross-platform compatibility issues
- Added test scripts and example docs
- Line ending differences between OSes should not cause diff noise.
- Tries to detect Sqlite 

## Troubleshooting

### Common Issues

**"sqlite3 not found" Error**
- **Windows**: Use `winget install sqlite` or download from [sqlite.org](https://sqlite.org/download.html)
- **Linux**: Use `sudo apt-get install sqlite3` or equivalent for your distribution
- **macOS**: Use `brew install sqlite3` or use the system-provided version
- **Manual**: Specify path with `-sqlite /path/to/sqlite3`

**Empty Output from Clean Operation**
- Verify SQLite file is valid: `file yourfile.db`
- Check file permissions and accessibility
- Enable logging with `-log` flag to see detailed error messages

**Smudge Operation Creates Invalid Database**
- Ensure input is valid SQL (test with `sqlite3 :memory: < input.sql`)
- Check for unsupported SQLite extensions or pragmas
- Verify SQL dump was created by GitSQLite or compatible tool

**Permission Errors**
- Check file permissions on database files
- Ensure write access to output directory when using `-log-dir`
- On Windows, avoid paths with special characters or spaces

**Performance Issues**
- Large databases (>100MB) may take significant time to process
- Use SSD storage for better performance with large files
- Monitor log files to identify bottlenecks in clean/smudge operations

### Debugging Tips

1. **Enable logging** to see detailed operation progress:
   ```bash
   gitsqlite -log clean < problem.db > output.sql
   ```

2. **Test SQLite accessibility** separately:
   ```bash
   sqlite3 -version
   sqlite3 test.db ".tables"
   ```

3. **Verify round-trip integrity** on smaller test files first:
   ```bash
   # Create minimal test case
   sqlite3 test.db "CREATE TABLE t(x); INSERT INTO t VALUES(1);"
   gitsqlite clean < test.db | gitsqlite smudge > restored.db
   ```

4. **Check Git filter status**:
   ```bash
   git config --list | grep filter.gitsqlite
   cat .gitattributes | grep gitsqlite
   ```

## License
[BSD-2-Clause](LICENSE) © Fredrik Ehnbom
[BSD-2-Clause](LICENSE) © Daniel Siegl

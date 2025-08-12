# Why

I want to store [sqlite3](https://sqlite.org) databases as SQL code in git rather than binary files. Some suggest just using `sqlite %f .dump` and `sqlite %f` as filters, this however is abusing the [git attributes filter](https://git-scm.com/docs/gitattributes#_filter) mechanism (emphasis mine):

>Note that "%f" is the name of the path that is being worked on. Depending on the version that is being filtered, the corresponding file on disk may not exist, or may have different contents. So, smudge and clean commands should *not try to access the file on disk*, but only act as filters on the content provided to them on *standard input*.

The afformentioned filters kind of works, but gives "file exists" errors due to reading and writing directly to the file that filters are not supposed to directly read nor write.

Also the dump needs to be processed to standardize linebreaks to UNIX style and remove all traces of the 'sqlite_sequence' table - as this would alter the text output and the filter will not work as expected!

# How

I couldn't get the `sqlite3` command line tool to directly read/write the binary database from/to a pipe, so a temporary file is created and removed once no longer needed.

# Latest binaries

You can download the latest binaries for Windows/Linux and Mac from here:
https://github.com/danielsiegl/gitsqlite/releases/latest/

# Installation

Install via
```
 
git config --global filter.gitsqlite.clean "gitsqlite clean"
git config --global filter.gitsqlite.smudge "gitsqlite smudge"
echo "*.db filter=gitsqlite" >> .gitattributes
```

# Usage

## Command Line Options

The gitsqlite tool supports the following command-line options:

```
Usage: gitsqlite [options] <operation>

Operations:
  clean   - Convert binary SQLite database to SQL dump (reads from stdin, writes to stdout)
  smudge  - Convert SQL dump to binary SQLite database (reads from stdin, writes to stdout)

Options:
  -help
        Show help information
  -log
        Enable logging to file in current directory
  -log-dir string
        Log to specified directory instead of current directory
  -sqlite string
        Path to SQLite executable (default "sqlite3")
  -sqlite-version
        Check if SQLite is available and show its version
  -version
        Show version information
```

## Examples

```bash
# Basic operations (typically used by Git filters)
gitsqlite clean < database.db > database.sql
gitsqlite smudge < database.sql > database.db

# Using custom SQLite path
gitsqlite -sqlite /usr/local/bin/sqlite3 clean < database.db > database.sql

# Enable logging for debugging (creates log files in current directory)
gitsqlite -log clean < database.db > database.sql

# Enable logging to specific directory
gitsqlite -log-dir ./logs clean < database.db > database.sql

# Check SQLite availability and version
gitsqlite -sqlite-version

# Show version information
gitsqlite -version

# Show help
gitsqlite -help
```

For detailed examples and comprehensive usage instructions, see [example_clean.md](example_clean.md).

## Logging and Debugging

Gitsqlite includes comprehensive logging functionality to help diagnose issues, especially when used as Git filters.

### Basic Logging

Enable logging to create detailed log files in the current directory:
```bash
# Enable logging (creates timestamped log files in current directory)
gitsqlite -log clean < database.db > database.sql
gitsqlite -log smudge < database.sql > database.db
```

### Custom Log Directory

Direct logs to a specific directory:
```bash
# Create logs directory and log there
mkdir logs
gitsqlite -log-dir ./logs clean < database.db > database.sql
```

### Git Filter Integration with Logging

For debugging Git filter issues, you can enable logging in your Git configuration:
```bash
# Enable logging for Git filters
git config --global filter.gitsqlite.clean "gitsqlite -log clean"
git config --global filter.gitsqlite.smudge "gitsqlite -log smudge"

# Or with custom log directory
git config --global filter.gitsqlite.clean "gitsqlite -log-dir /tmp/gitsqlite-logs clean"
git config --global filter.gitsqlite.smudge "gitsqlite -log-dir /tmp/gitsqlite-logs smudge"
```

### Log File Format

Log files are created with unique timestamped names and contain JSON-structured information:
- Filename format: `gitsqlite_YYYYMMDDTHHMMSS.sssZ_PID_UUID.log`
- Content: JSON logs with timestamps, operation details, errors, and debugging information

Example log entry:
```json
{"time":"2025-08-12T13:31:02.685Z","level":"INFO","msg":"gitsqlite started","invocation_id":"c66957e9-001a-474a-8a0a-ac398ae403ce","pid":12188,"args":["gitsqlite","-log","clean"]}
{"time":"2025-08-12T13:31:02.696Z","level":"ERROR","msg":"no stdin data available","invocation_id":"c66957e9-001a-474a-8a0a-ac398ae403ce","pid":12188,"operation":"clean"}
```

**Important**: Flags must be placed **before** the operation:
- ✅ Correct: `gitsqlite -log clean < input.db`
- ❌ Wrong: `gitsqlite clean -log < input.db`

## SQLite Installation

If you don't have SQLite installed, you can install it via winget:
```
winget install -e --id SQLite.SQLite
```
Or use the provided installation scripts:
- `scripts/install_sqlite.ps1` - Installs SQLite and adds to PATH

## Custom SQLite Path

If SQLite is not in your PATH, you can specify a custom path using the `-sqlite` flag:
```bash
git config --global filter.gitsqlite.clean "gitsqlite -sqlite /path/to/sqlite3 clean"
git config --global filter.gitsqlite.smudge "gitsqlite -sqlite /path/to/sqlite3 smudge"
```

### Windows Example
```cmd
git config --global filter.gitsqlite.clean "gitsqlite -sqlite C:\sqlite\sqlite3.exe clean"
git config --global filter.gitsqlite.smudge "gitsqlite -sqlite C:\sqlite\sqlite3.exe smudge"
```

### Linux/macOS Example  
```bash
git config --global filter.gitsqlite.clean "gitsqlite -sqlite /usr/local/bin/sqlite3 clean"
git config --global filter.gitsqlite.smudge "gitsqlite -sqlite /usr/local/bin/sqlite3 smudge"
```

## Troubleshooting

### Check SQLite Installation
Before troubleshooting gitsqlite, verify that SQLite is properly installed:
```bash
# Check if SQLite is available and show version
gitsqlite -sqlite-version

# Check with custom SQLite path
gitsqlite -sqlite /usr/local/bin/sqlite3 -sqlite-version
```

### Check Version and Location
To verify which version of gitsqlite is being used by Git filters:
```bash
gitsqlite -version
```

### Enable Logging for Debugging
When experiencing issues, enable logging to get detailed information:
```bash
# Enable logging for debugging
gitsqlite -log clean < your_database.db > output.sql

# Check the generated log file for errors
cat gitsqlite_*.log
```

For Git filter debugging, temporarily enable logging in your Git configuration:
```bash
# Temporarily enable logging for Git filters
git config filter.gitsqlite.clean "gitsqlite -log clean"
git config filter.gitsqlite.smudge "gitsqlite -log smudge"

# Perform Git operations that trigger filters
git add your_database.db
git commit -m "test"

# Check log files for issues
ls gitsqlite_*.log
```

### Test the Tool
You can test the round-trip conversion manually:
```bash
# Test: SQL → Binary → SQL
cat your_database.sql | gitsqlite smudge | gitsqlite clean > output.sql
diff your_database.sql output.sql

# Test with logging enabled
cat your_database.sql | gitsqlite -log smudge | gitsqlite -log clean > output.sql
```

For comprehensive testing, use the automated test suite:
```powershell
# Run the complete test suite including external file testing
./scripts/test_roundtrip.ps1
```

See [example_clean.md](examples.md) for detailed testing instructions and examples.

### Common Issues
- **SQLite not found**: Use `gitsqlite -sqlite-version` to check SQLite availability, or use the `-sqlite` flag to specify the correct path
- **Permission errors**: Ensure gitsqlite has write access to create temporary files and log files
- **Git filter not working**: Check that your `.gitattributes` file includes `*.db filter=gitsqlite`
- **No input provided via stdin**: This error occurs when no data is piped to gitsqlite. Git filters automatically provide data via stdin
- **Logging not working**: Ensure flags are placed before the operation (e.g., `gitsqlite -log clean` not `gitsqlite clean -log`)
- **Log files not created**: Check file permissions in the target directory and ensure the directory exists when using `-log-dir`

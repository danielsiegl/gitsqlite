# Why

I want to store [sqlite3](https://sqlite.org) databases as SQL code in git rather than binary files. Some suggest just using `sqlite %f .dump` and `sqlite %f` as filters, this however is abusing the [git attributes filter](https://git-scm.com/docs/gitattributes#_filter) mechanism (emphasis mine):

>Note that "%f" is the name of the path that is being worked on. Depending on the version that is being filtered, the corresponding file on disk may not exist, or may have different contents. So, smudge and clean commands should *not try to access the file on disk*, but only act as filters on the content provided to them on *standard input*.

The afformentioned filters kind of works, but gives "file exists" errors due to reading and writing directly to the file that filters are not supposed to directly read nor write.

Also the dump needs to be processed to standardize linebreaks to UNIX style and remove all traces of the 'sqlite_sequence' table - as this would alter the text output and the filter will not work as expected!

# How

I couldn't get the `sqlite3` command line tool to directly read/write the binary database from/to a pipe, so a temporary file is created and removed once no longer needed.

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
  -location
        Show executable location and version information  
  -sqlite string
        Path to SQLite executable (default "sqlite3")
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

# Show version information
gitsqlite -version

# Show version and executable location
gitsqlite -location

# Show help
gitsqlite -help
```

For detailed examples and comprehensive usage instructions, see [example_clean.md](example_clean.md).

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

### Check Version and Location
To verify which version of gitsqlite is being used by Git filters:
```bash
gitsqlite -version
gitsqlite -location
```

### Test the Tool
You can test the round-trip conversion manually:
```bash
# Test: SQL → Binary → SQL
cat your_database.sql | gitsqlite smudge | gitsqlite clean > output.sql
diff your_database.sql output.sql
```

For comprehensive testing, use the automated test suite:
```powershell
# Run the complete test suite including external file testing
./scripts/test_roundtrip.ps1
```

See [example_clean.md](examples.md) for detailed testing instructions and examples.

### Common Issues
- **SQLite not found**: Use the `-sqlite` flag to specify the correct path
- **Permission errors**: Ensure gitsqlite has write access to create temporary files
- **Git filter not working**: Check that your `.gitattributes` file includes `*.db filter=gitsqlite`

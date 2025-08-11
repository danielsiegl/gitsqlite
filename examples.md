# Sample Calls for Clean and Smudge Operations

## Prerequisites
- SQLite3 command line tool must be installed
- The gitsqlite program must be built (`go build .`)

## Usage
```
gitsqlite [options] <operation>
```

### Options
- `-sqlite <path>`: Path to sqlite3 executable (default: "sqlite3")
- `-version`: Show version information
- `-location`: Show executable location and version information
- `-help`: Show help information

### Operations
- `clean`: Convert binary SQLite database to SQL dump
- `smudge`: Convert SQL dump to binary SQLite database

## Clean Operation Examples

The "clean" operation reads a binary SQLite database from stdin and outputs the SQL commands to stdout.

### Basic Usage (sqlite3 in PATH)
```bash
# Assuming sqlite3 is in your PATH
./gitsqlite clean < sample.db
```

### With Custom SQLite Path
```bash
# Specify custom path to sqlite3 executable
./gitsqlite -sqlite "/path/to/sqlite3" clean < sample.db

# On Windows with winget-installed SQLite
./gitsqlite -sqlite "%LOCALAPPDATA%\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe\sqlite3.exe" clean < sample.db
```

### Example with a test database

1. First, create a sample SQLite database:
```bash
sqlite3 sample.db "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT); INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com'), ('Jane Smith', 'jane@example.com');"
```

2. Then use the clean operation to convert it to SQL:
```bash
./gitsqlite clean < sample.db
```

### Expected Clean Output
The output should be SQL statements that recreate the database:
```sql
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO users VALUES(1,'John Doe','john@example.com');
INSERT INTO users VALUES(2,'Jane Smith','jane@example.com');
COMMIT;
```

## Smudge Operation Examples

The "smudge" operation reads SQL commands from stdin and outputs a binary SQLite database to stdout.

### Basic Usage
```bash
# Convert SQL file to binary database
./gitsqlite smudge < sample.sql > sample.db
```

### With Custom SQLite Path
```bash
# Specify custom path to sqlite3 executable
./gitsqlite -sqlite "/path/to/sqlite3" smudge < sample.sql > sample.db

# On Windows with winget-installed SQLite
./gitsqlite -sqlite "%LOCALAPPDATA%\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe\sqlite3.exe" smudge < sample.sql > sample.db
```

### Example with SQL input

1. Create a SQL file:
```bash
cat > sample.sql << 'EOF'
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO users VALUES(1,'John Doe','john@example.com');
INSERT INTO users VALUES(2,'Jane Smith','jane@example.com');
COMMIT;
EOF
```

2. Convert to binary database:
```bash
./gitsqlite smudge < sample.sql > sample.db
```

3. Verify the database was created correctly:
```bash
sqlite3 sample.db "SELECT * FROM users;"
```

### Expected Smudge Output
The smudge operation creates a binary SQLite database file that can be queried normally:
```
1|John Doe|john@example.com
2|Jane Smith|jane@example.com
```

## Round-trip Testing

You can test both operations together to ensure data integrity:

### Manual Round-trip Test
```bash
# Test: SQL → Binary → SQL (should produce identical results)
./gitsqlite smudge < sample.sql | ./gitsqlite clean > roundtrip.sql
diff sample.sql roundtrip.sql
```

### Automated Testing with test_roundtrip.ps1
For comprehensive testing, use the provided PowerShell test script:

```powershell
# Run the complete test suite
./test_roundtrip.ps1
```

The test script performs:
- **Round-trip consistency testing**: Verifies that multiple clean/smudge cycles produce identical results
- **Original format preservation**: Compares generated SQL with original test files
- **External file testing**: Downloads and tests real-world SQL files from GitHub
- **Detailed reporting**: Creates test output files in the `testoutput/` directory

Test results are saved in:
- `testoutput/00_test_summary.txt` - Complete test summary and results
- `testoutput/01_original_model.sql` - Original test file
- `testoutput/02_generated_test1.sql` - First round-trip result
- `testoutput/03_generated_test2.sql` - Second round-trip result
- External file test results for additional validation

## Use Case in Git
This is typically used as a Git filter to store SQLite databases as text in version control:
```bash
# In your Git repository with .gitattributes containing: *.db filter=gitsqlite
# The clean filter will automatically convert binary .db files to SQL when committing
git add sample.db
git commit -m "Add sample database"
```

## Pipeline Usage
You can also use it in a pipeline:
```bash
# Convert database and save to SQL file
./gitsqlite clean < sample.db > sample.sql

# Or chain with other commands
cat sample.db | ./gitsqlite clean | head -10

# Round-trip conversion in a pipeline
cat sample.sql | ./gitsqlite smudge | ./gitsqlite clean | tee converted.sql
```

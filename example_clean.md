# Sample Call for Clean Operation

## Prerequisites
- SQLite3 command line tool must be installed
- The gitsqlite program must be built (`go build .`)

## Usage
```
gitsqlite <operation> [sqlite-path]
```

- `operation`: Either "clean" or "smudge"
- `sqlite-path`: Optional path to sqlite3 executable (defaults to "sqlite3")

## Example Usage

The "clean" operation reads a binary SQLite database from stdin and outputs the SQL commands to stdout.

### Basic Usage (sqlite3 in PATH)
```bash
# Assuming sqlite3 is in your PATH
./gitsqlite clean < sample.db
```

### With Custom SQLite Path
```bash
# Specify custom path to sqlite3 executable
./gitsqlite clean "/path/to/sqlite3" < sample.db

# On Windows with winget-installed SQLite
./gitsqlite clean "%LOCALAPPDATA%\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe\sqlite3.exe" < sample.db
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

### Expected Output
The output should be SQL statements that recreate the database:
```sql
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO users VALUES(1,'John Doe','john@example.com');
INSERT INTO users VALUES(2,'Jane Smith','jane@example.com');
COMMIT;
```

### Use Case in Git
This is typically used as a Git filter to store SQLite databases as text in version control:
```bash
# In your Git repository with .gitattributes containing: *.db filter=gitsqlite
# The clean filter will automatically convert binary .db files to SQL when committing
git add sample.db
git commit -m "Add sample database"
```

### Pipeline Usage
You can also use it in a pipeline:
```bash
# Convert database and save to SQL file
./gitsqlite clean < sample.db > sample.sql

# Or chain with other commands
cat sample.db | ./gitsqlite clean | head -10
```

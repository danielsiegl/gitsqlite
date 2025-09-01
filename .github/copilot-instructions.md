# gitsqlite

**ALWAYS follow these instructions first and only fallback to search or bash commands when information here is incomplete or found to be in error.**

gitsqlite is a Go application that provides Git clean/smudge/diff filters for SQLite databases, enabling meaningful diffs and version control of SQLite files by converting them to/from SQL text format.

## Working Effectively

### Build and Test - NEVER CANCEL BUILD OR TESTS
Bootstrap, build, and test the entire project:
- **PREREQUISITE**: Ensure Go 1.24+ and SQLite 3 are installed:
  ```bash
  go version  # Should be >= 1.24
  sqlite3 -version  # Must be available
  ```
- **BUILD**: `pwsh ./buildscripts/build.ps1` -- takes 45 seconds to 1 minute 20 seconds (varies by cache). **NEVER CANCEL**. Set timeout to 120+ seconds.
- **TEST**: Manual integration testing via executable validation:
  ```bash
  # Create test database
  sqlite3 test.db "CREATE TABLE t(id INTEGER PRIMARY KEY, name TEXT); INSERT INTO t VALUES(1,'test');"
  
  # Test clean operation  
  ./bin/gitsqlite-linux-amd64 clean < test.db > test.sql
  
  # Test smudge operation
  ./bin/gitsqlite-linux-amd64 smudge < test.sql > restored.db
  
  # Test round-trip integrity 
  ./bin/gitsqlite-linux-amd64 clean < restored.db > roundtrip.sql
  diff test.sql roundtrip.sql  # Should be identical
  
  # Test diff operation
  ./bin/gitsqlite-linux-amd64 diff test.db > diff.sql
  
  # Cleanup
  rm test.db test.sql restored.db roundtrip.sql diff.sql
  ```

### No Go Unit Tests
- **IMPORTANT**: This project has NO Go unit tests (`go test ./...` returns "no test files").
- **Integration testing** is done via executables and the CI pipeline.
- Do NOT add Go unit tests unless specifically requested.

### Build Outputs
- **Target directory**: `bin/` (created by build script)
- **Cross-platform binaries**:
  - `gitsqlite-linux-amd64`
  - `gitsqlite-linux-arm64` 
  - `gitsqlite-windows-amd64.exe`
  - `gitsqlite-windows-arm64.exe`
  - `gitsqlite-macos-arm64`

## Validation

### MANDATORY End-to-End Testing
**ALWAYS run complete validation scenarios after making changes:**

1. **Build Validation**:
   ```bash
   pwsh ./buildscripts/build.ps1  # NEVER CANCEL - 45s to 1m20s depending on cache timeout
   ```

2. **Core Functionality Validation**:
   ```bash
   # Test all three operations with timing
   sqlite3 validate.db "CREATE TABLE test(id INTEGER, data TEXT); INSERT INTO test VALUES(1,'hello'), (2,'world');"
   
   time ./bin/gitsqlite-linux-amd64 clean < validate.db > validate.sql
   time ./bin/gitsqlite-linux-amd64 smudge < validate.sql > validate2.db  
   time ./bin/gitsqlite-linux-amd64 clean < validate2.db > validate2.sql
   time ./bin/gitsqlite-linux-amd64 diff validate.db > validate_diff.sql
   
   # Verify integrity
   diff validate.sql validate2.sql  # Must be identical
   diff validate.sql validate_diff.sql  # Should be identical (diff=clean for this tool)
   
   # Cleanup
   rm validate*.db validate*.sql
   ```

3. **Git Integration Validation**:
   ```bash
   # Create test repository
   mkdir /tmp/gitsqlite-test && cd /tmp/gitsqlite-test
   git init && git config user.name "Test" && git config user.email "test@example.com"
   
   # Set up filters
   echo '*.db filter=gitsqlite' > .gitattributes
   git config filter.gitsqlite.clean "/path/to/gitsqlite-linux-amd64 clean"
   git config filter.gitsqlite.smudge "/path/to/gitsqlite-linux-amd64 smudge"
   
   # Test database versioning
   sqlite3 sample.db "CREATE TABLE users(id INTEGER, name TEXT); INSERT INTO users VALUES(1,'Alice');"
   git add sample.db .gitattributes
   git commit -m "Add database"
   
   # Verify Git stores SQL text (not binary)
   git show HEAD:sample.db | head -5  # Should show SQL statements
   
   # Test meaningful diffs
   sqlite3 sample.db "INSERT INTO users VALUES(2,'Bob');"
   git diff sample.db  # Should show +INSERT statement
   
   # Cleanup
   cd - && rm -rf /tmp/gitsqlite-test
   ```

### Timing Expectations
- **Build**: 45 seconds to 1 minute 20 seconds (varies by Go module cache, NEVER CANCEL, use 120+ second timeout)
- **Clean operation**: <6ms per database
- **Smudge operation**: <6ms per database  
- **Diff operation**: <6ms per database
- **All operations are extremely fast** - if they take >1 second, investigate for issues

## Common Tasks

### Building from Source
```bash
# Full cross-platform build
pwsh ./buildscripts/build.ps1  # NEVER CANCEL - 1m20s

# Single platform build (if needed for development)
go build -o gitsqlite-dev main.go
```

### Testing Logging Functionality
```bash
# Basic logging (creates timestamped log in current directory)
./bin/gitsqlite-linux-amd64 -log clean < test.db > output.sql
ls gitsqlite_*.log

# Custom log directory
mkdir logs
./bin/gitsqlite-linux-amd64 -log-dir ./logs smudge < output.sql > restored.db
ls logs/gitsqlite_*.log
```

### Manual CLI Testing
```bash
# Basic commands
./bin/gitsqlite-linux-amd64 -version    # Show version info + SQLite availability
./bin/gitsqlite-linux-amd64 -help       # Show usage
./bin/gitsqlite-linux-amd64 clean < database.db > output.sql
./bin/gitsqlite-linux-amd64 smudge < output.sql > restored.db
./bin/gitsqlite-linux-amd64 diff database.db > dump.sql

# With custom SQLite path
./bin/gitsqlite-linux-amd64 -sqlite /usr/local/bin/sqlite3 clean < database.db
```

## Project Structure

### Key Files and Directories
```
/home/runner/work/gitsqlite/gitsqlite/    # Repository root
├── main.go                              # CLI entry point
├── go.mod                               # Go dependencies (minimal: only google/uuid)
├── internal/                            # Internal packages
│   ├── filters/                         # Clean/smudge/diff operations
│   ├── logging/                         # JSON structured logging
│   ├── sqlite/                          # SQLite engine wrapper
│   └── version/                         # Build version info
├── buildscripts/                        # Build automation
│   ├── build.ps1                        # Cross-platform build script (PowerShell)
│   ├── createtestdatabase.ps1           # Test database creation
│   └── evaluatetest.ps1                 # Test result evaluation
├── scripts/                             # Testing scripts
│   ├── smoketest.sh                     # Linux smoke test
│   └── smoketest.ps1                    # Windows smoke test
├── .github/workflows/                    # CI/CD pipelines
│   ├── main.yml                         # Main CI/CD pipeline
│   └── release.yml                      # Release workflow
├── bin/                                 # Build outputs (gitignored)
├── README.md                            # User documentation
└── log.md                               # Logging documentation
```

### Dependencies
- **Go**: 1.24+ (required for building)
- **SQLite 3**: Must be in PATH or specified with `-sqlite` flag
- **PowerShell**: For build scripts (cross-platform)
- **Git**: For filter integration testing

### Critical Implementation Details
- **No Go unit tests** - uses integration tests only
- **Cross-platform builds** via PowerShell script
- **JSON logging** with structured output
- **Temp file I/O** for robustness (not pipes)
- **CRITICAL**: Never write output to stdout/stderr in filter operations - git uses these for data flow
- **Version info** injected at build time via ldflags
- **Git filters** for clean/smudge operations
- **Diff operation** takes filename (not stdin) unlike clean/smudge
- **Binary compatibility**: SQL output must be identical across all platforms for consistent git diffs

## Development Workflow

### Making Changes
1. **ALWAYS** run the build script after changes: `pwsh ./buildscripts/build.ps1`
2. **ALWAYS** run validation scenarios after building
3. **Test Git integration** if modifying filter operations
4. **Check logs** when debugging using `-log` or `-log-dir` flags
5. **Verify round-trip integrity** for any changes to clean/smudge logic

### Debugging
- Use `-log` flag for detailed JSON logging
- Check SQLite availability with `-version` command
- Test individual operations (clean, smudge, diff) separately
- Verify round-trip: `clean < db | smudge > restored.db` should be identical

### CI/CD Integration
- GitHub Actions builds for all platforms
- Cross-platform smoke tests
- Artifact upload for binaries
- No traditional unit test execution (project design choice)

**Remember: This is a Git filter tool, not a general-purpose SQLite utility. Focus on Git integration scenarios when testing changes.**
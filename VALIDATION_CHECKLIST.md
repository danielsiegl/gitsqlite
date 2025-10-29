# Validation Checklist for Hash Verification Feature

## Code Review Validation ✅ COMPLETED

### 1. Code Structure Review
✅ **Hash Package** (`internal/hash/hash.go`)
- Implements `HashWriter` that wraps `io.Writer`
- Computes SHA-256 hash on-the-fly while streaming
- `VerifyAndStripHash()` reads content, verifies hash, strips hash line
- Uses standard `crypto/sha256` library (no external dependencies)
- Hash format: `-- gitsqlite-hash: sha256:<hex>`

✅ **Clean Operation** (`internal/filters/clean.go:10,64,86-97`)
- Imports hash package correctly
- Wraps output with `hash.NewHashWriter(out)`
- Appends hash comment after DumpTables completes
- Also handles schema file with hash when `-schema` flag used
- Logging messages updated to indicate "with hash"

✅ **Smudge Operation** (`internal/filters/smudge.go:11,36-41,57-62`)
- Imports hash package correctly
- Calls `hash.VerifyAndStripHash(in)` BEFORE restore
- Returns descriptive error if verification fails
- Handles both data and schema file verification
- Verified content (without hash) passed to SQLite restore

✅ **Diff Operation** (`internal/filters/diff.go:10`)
- **No hash import** ✓ Correct!
- No hash generation or verification
- Diff output is plain SQL for viewing only

### 2. Requirements Validation

✅ **Binary Compatibility**
- SHA-256 is deterministic across platforms
- Hash comment format is plain text SQL comment
- No platform-specific code in hash implementation

✅ **No stdout/stderr Pollution**
- Hash comment goes to data stream (out), not stderr
- slog messages go to log files, not stderr (existing behavior)
- Error messages use fmt.Errorf with %w wrapping (proper error handling)

✅ **Round-Trip Integrity**
- Clean adds hash → Git stores → Smudge verifies hash
- Hash protects against manual edits between clean/smudge
- Verification happens before SQLite restore (prevents corruption)

✅ **Temp File I/O Preserved**
- Did not modify temp file logic
- Hash verification works with existing I/O patterns
- Clean uses temp file for binary DB
- Smudge uses temp file for restored DB

✅ **Diff Operation Semantics**
- Diff takes filename (not stdin) - unchanged
- Diff output is for viewing - no hash needed ✓

### 3. Edge Cases Review

✅ **Schema/Data Separation**
- Both schema and data files get independent hashes
- Both verified during smudge
- Failure in either hash aborts operation

✅ **Error Handling**
- Missing hash: Clear error message
- Wrong hash: Shows expected vs actual with helpful message
- Empty input: Handled gracefully
- Broken pipes: Existing eng.WriteWithTimeout handles

✅ **Memory Usage**
- Clean: Hash computed while streaming (no extra memory)
- Smudge: Reads full content for verification (necessary trade-off)
- Large databases: Smudge already reads into memory (line 94), no new limitation

### 4. Unit Tests Review

✅ **Test Coverage** (`internal/hash/hash_test.go`)
- `TestHashWriter` - Basic functionality
- `TestHashWriterDeterministic` - Consistency check
- `TestVerifyAndStripHash` - Successful verification
- `TestVerifyAndStripHashInvalidHash` - Wrong hash detection
- `TestVerifyAndStripHashMissingHash` - Missing hash detection
- `TestVerifyAndStripHashModifiedContent` - Tampering detection
- `TestVerifyAndStripHashEmptyInput` - Edge case
- `TestRoundTrip` - End-to-end with multiple test cases

**Note**: Project typically has no Go unit tests per .github/agents.md, but user approved keeping tests for this critical security feature.

### 5. Documentation Review

✅ **HASH_VERIFICATION.md**
- Comprehensive feature documentation
- Clear explanation of operations (clean, smudge, diff)
- Error message examples
- Technical details (SHA-256, format)
- Migration guide for existing repos
- FAQ section
- Security considerations

---

## Manual Testing Required ⚠️ PENDING BUILD

The following tests **MUST** be performed once build environment is available:

### Prerequisites
```bash
go version  # Should be >= 1.24
sqlite3 -version  # Must be available
pwsh -Version  # For build script
```

### Step 1: Build (NEVER CANCEL - timeout 120+ seconds)
```bash
pwsh ./buildscripts/build.ps1
```
Expected: Successful build creating binaries in `bin/` directory

### Step 2: Core Functionality with Hash Verification
```bash
# Create test database
sqlite3 test.db "CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT); INSERT INTO users VALUES(1,'Alice'), (2,'Bob');"

# Test clean operation - should add hash
./bin/gitsqlite-linux-amd64 clean < test.db > test.sql

# VERIFY: Last line should be hash comment
tail -1 test.sql
# Expected: -- gitsqlite-hash: sha256:<64-char-hex>

# VERIFY: Hash is 64 hex characters
tail -1 test.sql | grep -E '^-- gitsqlite-hash: sha256:[a-f0-9]{64}$'
# Expected: Match found

# Test smudge operation - should verify hash
./bin/gitsqlite-linux-amd64 smudge < test.sql > restored.db

# VERIFY: Database restored successfully
sqlite3 restored.db "SELECT * FROM users;"
# Expected: 1|Alice
#           2|Bob

# Test round-trip integrity
./bin/gitsqlite-linux-amd64 clean < restored.db > roundtrip.sql

# VERIFY: Round-trip produces identical SQL (including hash)
diff test.sql roundtrip.sql
# Expected: No differences

# Cleanup
rm test.db test.sql restored.db roundtrip.sql
```

### Step 3: Hash Verification Error Scenarios
```bash
# Create test database
sqlite3 test.db "CREATE TABLE test(id INTEGER); INSERT INTO test VALUES(1);"

# Generate SQL with hash
./bin/gitsqlite-linux-amd64 clean < test.db > test.sql

# Test 1: Modified content (simulate manual edit)
sed -i 's/INSERT INTO test VALUES(1)/INSERT INTO test VALUES(999)/' test.sql

./bin/gitsqlite-linux-amd64 smudge < test.sql > fail1.db
# Expected: ERROR with message "hash verification failed: expected <hash>, got <different-hash> (file may have been modified)"

# Test 2: Missing hash
./bin/gitsqlite-linux-amd64 clean < test.db > test.sql
head -n -1 test.sql > test_no_hash.sql  # Remove last line

./bin/gitsqlite-linux-amd64 smudge < test_no_hash.sql > fail2.db
# Expected: ERROR with message "missing gitsqlite hash signature"

# Test 3: Wrong hash value
./bin/gitsqlite-linux-amd64 clean < test.db > test.sql
sed -i 's/sha256:[a-f0-9]*/sha256:0000000000000000000000000000000000000000000000000000000000000000/' test.sql

./bin/gitsqlite-linux-amd64 smudge < test.sql > fail3.db
# Expected: ERROR with message "hash verification failed"

# Cleanup
rm test.db test.sql test_no_hash.sql fail*.db
```

### Step 4: Schema/Data Separation with Hash
```bash
# Create test database
sqlite3 schema_test.db "CREATE TABLE products(id INTEGER, name TEXT); INSERT INTO products VALUES(1,'Widget'), (2,'Gadget');"

# Test clean with schema separation
./bin/gitsqlite-linux-amd64 -schema clean < schema_test.db > schema_data.sql

# VERIFY: Schema file exists with hash
test -f .gitsqliteschema && echo "Schema file exists"
tail -1 .gitsqliteschema | grep -E '^-- gitsqlite-hash: sha256:[a-f0-9]{64}$' && echo "Schema hash valid"

# VERIFY: Data file exists with hash
tail -1 schema_data.sql | grep -E '^-- gitsqlite-hash: sha256:[a-f0-9]{64}$' && echo "Data hash valid"

# Test smudge with schema separation
./bin/gitsqlite-linux-amd64 -schema smudge < schema_data.sql > schema_restored.db

# VERIFY: Both hashes verified
sqlite3 schema_restored.db "SELECT * FROM products;"
# Expected: 1|Widget
#           2|Gadget

# Test schema hash verification failure
sed -i 's/CREATE TABLE products/CREATE TABLE items/' .gitsqliteschema

./bin/gitsqlite-linux-amd64 -schema smudge < schema_data.sql > fail_schema.db
# Expected: ERROR with message "schema hash verification failed"

# Cleanup
rm schema_test.db schema_data.sql schema_restored.db .gitsqliteschema fail_schema.db
```

### Step 5: Diff Operation (No Hash)
```bash
# Create test database
sqlite3 diff_test.db "CREATE TABLE items(id INTEGER); INSERT INTO items VALUES(1), (2);"

# Test diff operation
./bin/gitsqlite-linux-amd64 diff diff_test.db > diff_output.sql

# VERIFY: No hash in diff output
tail -1 diff_output.sql
# Expected: NOT a hash comment (should be COMMIT; or similar)

# VERIFY: Diff output is plain SQL
grep -q "CREATE TABLE items" diff_output.sql && echo "Diff contains SQL"
! grep -q "gitsqlite-hash" diff_output.sql && echo "Diff has no hash - CORRECT"

# Cleanup
rm diff_test.db diff_output.sql
```

### Step 6: Git Integration Test
```bash
# Create test repository
mkdir /tmp/gitsqlite-hash-test && cd /tmp/gitsqlite-hash-test
git init
git config user.name "Test User"
git config user.email "test@example.com"

# Configure filters with absolute path to binary
GITSQLITE_PATH=$(realpath /workdir/bin/gitsqlite-linux-amd64)
echo '*.db filter=gitsqlite' > .gitattributes
git config filter.gitsqlite.clean "$GITSQLITE_PATH clean"
git config filter.gitsqlite.smudge "$GITSQLITE_PATH smudge"

# Create and commit database
sqlite3 app.db "CREATE TABLE logs(id INTEGER, msg TEXT); INSERT INTO logs VALUES(1,'start');"
git add .gitattributes app.db
git commit -m "Initial database"

# VERIFY: Git stored SQL with hash (not binary)
git show HEAD:app.db | head -5
# Expected: SQL statements (PRAGMA, CREATE, INSERT)

git show HEAD:app.db | tail -1
# Expected: -- gitsqlite-hash: sha256:<hash>

# VERIFY: Working copy is binary
file app.db
# Expected: SQLite 3.x database

# Modify database
sqlite3 app.db "INSERT INTO logs VALUES(2,'update');"

# VERIFY: Git diff shows SQL changes (not binary diff)
git diff app.db
# Expected: +INSERT INTO logs VALUES(2,'update');

# Commit changes
git add app.db
git commit -m "Add log entry"

# VERIFY: Hash changed in Git
HASH1=$(git show HEAD~1:app.db | tail -1)
HASH2=$(git show HEAD:app.db | tail -1)
test "$HASH1" != "$HASH2" && echo "Hashes differ - CORRECT"

# Test checkout (smudge with hash verification)
rm app.db
git checkout HEAD -- app.db

# VERIFY: Database restored correctly
sqlite3 app.db "SELECT COUNT(*) FROM logs;"
# Expected: 2

# Test manual edit rejection
git show HEAD:app.db > manual_edit.sql
sed -i 's/update/TAMPERED/' manual_edit.sql
git config filter.gitsqlite.smudge "cat"  # Bypass smudge temporarily
echo "manual_edit.sql" > manual_edit.db
git config filter.gitsqlite.smudge "$GITSQLITE_PATH smudge"  # Re-enable

# Try to smudge manually edited file
$GITSQLITE_PATH smudge < manual_edit.sql > tampered.db 2>&1
# Expected: ERROR "hash verification failed"

# Cleanup
cd - && rm -rf /tmp/gitsqlite-hash-test
```

### Step 7: Performance Validation
```bash
# Create larger database (1MB+)
sqlite3 perf_test.db "
CREATE TABLE data(id INTEGER PRIMARY KEY, value TEXT);
INSERT INTO data SELECT NULL, hex(randomblob(100)) FROM (SELECT 0 UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) t1,
(SELECT 0 UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) t2,
(SELECT 0 UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) t3;
"

# Time clean operation
time ./bin/gitsqlite-linux-amd64 clean < perf_test.db > perf_test.sql
# Expected: <6ms (per agents.md) - though larger DB may take longer, should still be fast

# Time smudge operation
time ./bin/gitsqlite-linux-amd64 smudge < perf_test.sql > perf_restored.db
# Expected: <6ms baseline, slightly slower due to hash verification

# Verify integrity after performance test
./bin/gitsqlite-linux-amd64 clean < perf_restored.db > perf_roundtrip.sql
diff perf_test.sql perf_roundtrip.sql
# Expected: Identical

# Cleanup
rm perf_test.db perf_test.sql perf_restored.db perf_roundtrip.sql
```

### Step 8: Unit Test Execution (Optional)
```bash
# Run hash package unit tests
go test -v ./internal/hash/

# Expected output:
# === RUN   TestHashWriter
# --- PASS: TestHashWriter
# === RUN   TestHashWriterDeterministic
# --- PASS: TestHashWriterDeterministic
# === RUN   TestVerifyAndStripHash
# --- PASS: TestVerifyAndStripHash
# === RUN   TestVerifyAndStripHashInvalidHash
# --- PASS: TestVerifyAndStripHashInvalidHash
# === RUN   TestVerifyAndStripHashMissingHash
# --- PASS: TestVerifyAndStripHashMissingHash
# === RUN   TestVerifyAndStripHashModifiedContent
# --- PASS: TestVerifyAndStripHashModifiedContent
# === RUN   TestVerifyAndStripHashEmptyInput
# --- PASS: TestVerifyAndStripHashEmptyInput
# === RUN   TestRoundTrip
# --- PASS: TestRoundTrip
# PASS
```

---

## Summary

### ✅ Code Review Validation (Completed)
- Hash package implementation reviewed
- Clean/smudge/diff operations reviewed
- Requirements alignment confirmed
- Edge cases considered
- Documentation reviewed

### ⚠️ Manual Testing (Pending Build Environment)
- Build validation
- Core functionality testing
- Error scenario testing
- Schema separation testing
- Diff operation verification
- Git integration testing
- Performance validation
- Unit test execution

### 🔧 Build Environment Status
```
Go: NOT AVAILABLE (required for build)
SQLite: NOT AVAILABLE (required for testing)
PowerShell: NOT AVAILABLE (required for build script)
```

**Next Steps**: Execute manual testing checklist when build environment becomes available. All code changes have been reviewed and validated for correctness against project requirements from .github/agents.md.

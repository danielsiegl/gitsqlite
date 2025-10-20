# Troubleshooting Guide

This guide provides detailed troubleshooting procedures for common and uncommon issues with gitsqlite.

## Table of Contents

- [Quick Diagnostic Checklist](#quick-diagnostic-checklist)
- [Installation Issues](#installation-issues)
- [Git Filter Issues](#git-filter-issues)
- [Conversion Issues](#conversion-issues)
- [Performance Issues](#performance-issues)
- [Data Integrity Issues](#data-integrity-issues)
- [Platform-Specific Issues](#platform-specific-issues)
- [Advanced Diagnostics](#advanced-diagnostics)

## Quick Diagnostic Checklist

When encountering issues, run through this checklist first:

```bash
# 1. Verify gitsqlite is installed and accessible
gitsqlite -version

# 2. Verify SQLite3 is installed
sqlite3 -version

# 3. Check Git filter configuration
git config --list | grep filter.gitsqlite

# 4. Check .gitattributes configuration
cat .gitattributes | grep gitsqlite

# 5. Test with minimal example
echo "CREATE TABLE test(x); INSERT INTO test VALUES(1);" | \
  sqlite3 /tmp/test.db
gitsqlite clean < /tmp/test.db > /tmp/test.sql
cat /tmp/test.sql

# 6. Enable logging for detailed diagnostics
gitsqlite -log clean < /tmp/test.db > /tmp/test.sql
cat gitsqlite-clean-*.log
```

## Installation Issues

### Issue: "gitsqlite: command not found"

**Symptoms**: Shell cannot find gitsqlite executable.

**Diagnosis**:
```bash
# Check if gitsqlite is in PATH
which gitsqlite

# Check current directory
ls -la gitsqlite*

# Check PATH variable
echo $PATH
```

**Solutions**:

1. **Install to PATH location**:
   ```bash
   # Linux/macOS
   sudo mv gitsqlite /usr/local/bin/
   
   # Windows (PowerShell as Administrator)
   Move-Item gitsqlite.exe C:\Windows\System32\
   ```

2. **Add current directory to PATH**:
   ```bash
   # Linux/macOS (temporary)
   export PATH=$PATH:$(pwd)
   
   # Add to .bashrc or .zshrc for permanent
   echo 'export PATH=$PATH:/path/to/gitsqlite' >> ~/.bashrc
   ```

3. **Use absolute path in Git config**:
   ```bash
   git config filter.gitsqlite.clean "/full/path/to/gitsqlite clean"
   git config filter.gitsqlite.smudge "/full/path/to/gitsqlite smudge"
   ```

### Issue: "sqlite3: command not found"

**Symptoms**: gitsqlite reports it cannot find sqlite3.

**Diagnosis**:
```bash
# Check if sqlite3 is installed
which sqlite3
sqlite3 -version

# Check what gitsqlite is looking for
gitsqlite -log clean < test.db > test.sql
grep sqlite3 gitsqlite-clean-*.log
```

**Solutions**:

1. **Install SQLite3**:
   ```bash
   # Windows
   winget install SQLite.SQLite
   
   # macOS
   brew install sqlite3
   # or use system version (usually pre-installed)
   
   # Ubuntu/Debian
   sudo apt-get install sqlite3
   
   # Fedora/RHEL
   sudo dnf install sqlite
   ```

2. **Specify SQLite3 path explicitly**:
   ```bash
   # Find sqlite3 location
   which sqlite3  # /usr/local/bin/sqlite3
   
   # Use with gitsqlite
   gitsqlite -sqlite /usr/local/bin/sqlite3 clean < db.db
   
   # Update Git config
   git config filter.gitsqlite.clean "gitsqlite -sqlite /usr/local/bin/sqlite3 clean"
   git config filter.gitsqlite.smudge "gitsqlite -sqlite /usr/local/bin/sqlite3 smudge"
   ```

3. **Add sqlite3 to PATH**:
   ```bash
   # Add SQLite directory to PATH
   export PATH=$PATH:/path/to/sqlite
   ```

### Issue: Permission denied

**Symptoms**: Cannot execute gitsqlite even though it exists.

**Diagnosis**:
```bash
# Check file permissions
ls -la gitsqlite
```

**Solutions**:
```bash
# Make executable (Linux/macOS)
chmod +x gitsqlite

# On Windows, check file is not blocked
# Right-click → Properties → Unblock
```

## Git Filter Issues

### Issue: Git filter not triggering

**Symptoms**: Database files committed as binary instead of SQL.

**Diagnosis**:
```bash
# 1. Check .gitattributes exists and is tracked
ls -la .gitattributes
git ls-files .gitattributes

# 2. Check .gitattributes syntax
cat .gitattributes

# 3. Check Git configuration
git config --list | grep filter.gitsqlite

# 4. Test filter manually
echo "test" | git check-attr -a --stdin filter
```

**Solutions**:

1. **Ensure .gitattributes is committed**:
   ```bash
   git add .gitattributes
   git commit -m "Add .gitattributes for gitsqlite filter"
   ```

2. **Verify filter pattern matches your files**:
   ```bash
   # In .gitattributes
   *.db filter=gitsqlite          # Matches all .db files
   data/*.db filter=gitsqlite     # Matches only .db in data/ directory
   app.db filter=gitsqlite        # Matches specific file
   ```

3. **Check Git configuration scope**:
   ```bash
   # Check local config
   git config --local filter.gitsqlite.clean
   
   # Check global config
   git config --global filter.gitsqlite.clean
   
   # If missing, add it
   git config filter.gitsqlite.clean "gitsqlite clean"
   git config filter.gitsqlite.smudge "gitsqlite smudge"
   ```

4. **Force re-processing of files**:
   ```bash
   # Remove file from index and re-add
   git rm --cached *.db
   git add *.db
   git diff --cached  # Should show SQL diff
   ```

### Issue: Filter configured but still seeing binary files

**Symptoms**: Files show as binary in `git diff` despite filter configuration.

**Diagnosis**:
```bash
# Check if filter is actually running
git config --list | grep filter.gitsqlite

# Enable Git trace to see filter execution
GIT_TRACE=1 git add test.db
```

**Solutions**:

1. **Check filter is invoked**:
   ```bash
   # Should see "clean" filter being called
   GIT_TRACE=2 GIT_TRACE_PACKET=1 git add test.db 2>&1 | grep gitsqlite
   ```

2. **Verify filter doesn't fail silently**:
   ```bash
   # Test filter manually
   gitsqlite clean < test.db > test.sql
   echo $?  # Should be 0 (success)
   ```

3. **Check for conflicting .gitattributes**:
   ```bash
   # Global gitattributes
   git config --global core.attributesFile
   cat ~/.gitattributes
   
   # Repository gitattributes
   cat .gitattributes
   ```

### Issue: Merge conflicts with binary data

**Symptoms**: Merge shows binary conflict instead of SQL conflict.

**Diagnosis**:
```bash
# Check if file was properly filtered when committed
git log --all --source --full-history -- myfile.db

# Check how Git sees the file
git diff HEAD:myfile.db HEAD~1:myfile.db
```

**Solutions**:

1. **Convert existing binary files to filtered**:
   ```bash
   # Ensure filters are configured
   echo '*.db filter=gitsqlite' >> .gitattributes
   git config filter.gitsqlite.clean "gitsqlite clean"
   git config filter.gitsqlite.smudge "gitsqlite smudge"
   
   # Re-normalize repository
   git add --renormalize .
   git commit -m "Apply gitsqlite filters to existing files"
   ```

2. **Manual merge resolution**:
   ```bash
   # If you have binary conflict:
   # 1. Choose one version
   git checkout --ours myfile.db
   # or
   git checkout --theirs myfile.db
   
   # 2. Re-add to trigger filter
   git add myfile.db
   git commit
   ```

## Conversion Issues

### Issue: Empty output from clean operation

**Symptoms**: `gitsqlite clean < db.db` produces no output or empty file.

**Diagnosis**:
```bash
# 1. Verify input file is valid SQLite database
file database.db
sqlite3 database.db "SELECT name FROM sqlite_master LIMIT 1;"

# 2. Enable logging to see what's happening
gitsqlite -log clean < database.db > output.sql
cat gitsqlite-clean-*.log

# 3. Check file permissions
ls -la database.db

# 4. Test with minimal database
echo "CREATE TABLE t(x);" | sqlite3 /tmp/test.db
gitsqlite clean < /tmp/test.db
```

**Solutions**:

1. **Database is not valid SQLite**:
   ```bash
   # Verify and repair if needed
   sqlite3 database.db "PRAGMA integrity_check;"
   
   # If corrupted, try recovery
   sqlite3 database.db ".recover" | sqlite3 recovered.db
   ```

2. **Database is empty**:
   ```bash
   # Check for tables
   sqlite3 database.db ".tables"
   
   # Empty database produces minimal SQL
   # This is expected - output will be transaction wrapper only
   ```

3. **Permissions issue**:
   ```bash
   # Ensure read permission
   chmod +r database.db
   
   # Check file ownership
   ls -la database.db
   ```

4. **Encoding issues**:
   ```bash
   # Check database encoding
   sqlite3 database.db "PRAGMA encoding;"
   
   # gitsqlite should handle standard encodings
   # If using custom encoding, may need conversion
   ```

### Issue: Smudge produces corrupted database

**Symptoms**: Database created by smudge cannot be opened by SQLite.

**Diagnosis**:
```bash
# 1. Test the SQL input
sqlite3 :memory: < input.sql

# 2. Check for non-SQL content in input
head -20 input.sql
tail -20 input.sql

# 3. Enable logging
gitsqlite -log smudge < input.sql > output.db
cat gitsqlite-smudge-*.log

# 4. Verify output database
file output.db
sqlite3 output.db "PRAGMA integrity_check;"
```

**Solutions**:

1. **Input is not valid SQL**:
   ```bash
   # Test SQL syntax
   sqlite3 :memory: < input.sql
   
   # Check for errors in SQL
   grep -i error input.sql
   ```

2. **SQL contains unsupported features**:
   ```bash
   # Check for non-standard SQLite features
   grep -i "create virtual table" input.sql
   
   # Remove or replace unsupported statements
   ```

3. **Incomplete SQL transaction**:
   ```bash
   # Ensure SQL has proper transaction wrappers
   head -5 input.sql  # Should start with BEGIN TRANSACTION
   tail -5 input.sql  # Should end with COMMIT
   ```

4. **Round-trip test**:
   ```bash
   # Verify conversion works both ways
   gitsqlite clean < original.db > step1.sql
   gitsqlite smudge < step1.sql > step2.db
   gitsqlite clean < step2.db > step3.sql
   diff step1.sql step3.sql  # Should be identical
   ```

### Issue: Data loss or corruption after round-trip

**Symptoms**: Database after clean → smudge is missing data or has corrupted values.

**Diagnosis**:
```bash
# 1. Compare table counts
sqlite3 original.db "SELECT COUNT(*) FROM table_name;"
sqlite3 restored.db "SELECT COUNT(*) FROM table_name;"

# 2. Check for data type issues
sqlite3 original.db ".schema"
sqlite3 restored.db ".schema"

# 3. Enable logging to track operations
gitsqlite -log clean < original.db > output.sql
gitsqlite -log smudge < output.sql > restored.db

# 4. Compare databases
sqlite3 original.db ".dump" > original.sql
sqlite3 restored.db ".dump" > restored.sql
diff original.sql restored.sql
```

**Solutions**:

1. **Float precision issues**:
   ```bash
   # Adjust float precision to match your needs
   gitsqlite -float-precision 15 clean < original.db > output.sql
   
   # For Git filters
   git config filter.gitsqlite.clean "gitsqlite -float-precision 15 clean"
   ```

2. **Special characters or encoding**:
   ```bash
   # Check for special characters in data
   sqlite3 original.db "SELECT * FROM table_name WHERE name LIKE '%[special]%';"
   
   # SQLite should handle UTF-8 correctly
   sqlite3 original.db "PRAGMA encoding;"
   ```

3. **BLOB data issues**:
   ```bash
   # BLOBs are represented as hex in SQL dump
   # Verify BLOB columns are preserved
   sqlite3 restored.db "SELECT hex(blob_column) FROM table_name LIMIT 1;"
   ```

## Performance Issues

### Issue: Clean/smudge operation is very slow

**Symptoms**: Conversion takes minutes instead of seconds.

**Diagnosis**:
```bash
# 1. Check database size
ls -lh database.db

# 2. Enable logging to identify bottleneck
gitsqlite -log clean < database.db > output.sql
cat gitsqlite-clean-*.log | grep duration

# 3. Check system resources
top  # or htop
df -h  # Disk space
```

**Solutions**:

1. **Large database optimization**:
   ```bash
   # For very large databases (>100MB)
   # Consider using schema/data separation
   gitsqlite -data-only -schema clean < database.db > data.sql
   
   # This creates smaller files and faster diffs
   ```

2. **Disk I/O optimization**:
   ```bash
   # Use SSD for temporary files if available
   # Check temp directory location
   echo $TMPDIR  # or $TEMP on Windows
   
   # On Linux, use tmpfs for speed
   export TMPDIR=/dev/shm
   gitsqlite clean < database.db > output.sql
   ```

3. **Reduce float precision**:
   ```bash
   # Lower precision = faster processing
   gitsqlite -float-precision 6 clean < database.db > output.sql
   ```

4. **Database optimization before conversion**:
   ```bash
   # Vacuum database to reduce size
   sqlite3 database.db "VACUUM;"
   
   # Analyze to update statistics
   sqlite3 database.db "ANALYZE;"
   ```

### Issue: Git operations timeout with database files

**Symptoms**: `git add` or `git commit` hangs or times out.

**Diagnosis**:
```bash
# 1. Test filter manually with timeout
   timeout 60s gitsqlite clean < database.db > output.sql
echo $?  # 124 means timeout

# 2. Enable verbose logging
GIT_TRACE=1 git add database.db

# 3. Check filter process
ps aux | grep gitsqlite
```

**Solutions**:

1. **Increase Git timeout**:
   ```bash
   # Not directly configurable, but can split large files
   # Or increase system limits
   ulimit -t unlimited  # CPU time limit
   ```

2. **Process database in chunks**:
   ```bash
   # Split large database into smaller tables/files
   sqlite3 original.db <<EOF
   .output table1.sql
   .dump table1
   .output table2.sql
   .dump table2
   EOF
   ```

3. **Use background processing**:
   ```bash
   # For very large files, process outside Git
   gitsqlite clean < huge.db > huge.sql &
   # Add the SQL file instead
   ```

## Data Integrity Issues

### Issue: Foreign key violations after smudge

**Symptoms**: Restored database has broken foreign key relationships.

**Diagnosis**:
```bash
# Check for foreign key violations
sqlite3 restored.db "PRAGMA foreign_key_check;"

# Enable foreign keys and test
sqlite3 restored.db <<EOF
PRAGMA foreign_keys=ON;
PRAGMA foreign_key_check;
EOF
```

**Solutions**:

1. **Ensure foreign keys disabled during restoration**:
   ```bash
   # Check SQL dump
   head -5 output.sql  # Should have "PRAGMA foreign_keys=OFF;"
   
   # This is automatic in gitsqlite clean operation
   ```

2. **Fix broken relationships manually**:
   ```bash
   # Identify violations
   sqlite3 database.db "PRAGMA foreign_key_check;" > violations.txt
   
   # Fix data or drop constraints
   ```

3. **Schema order issues**:
   ```bash
   # Ensure tables created in correct order
   # gitsqlite preserves dump order from sqlite3
   # If issues persist, may need custom schema ordering
   ```

### Issue: UNIQUE constraint violations

**Symptoms**: Smudge fails with "UNIQUE constraint failed" error.

**Diagnosis**:
```bash
# Enable detailed error logging
gitsqlite -log smudge < input.sql > output.db 2>&1 | tee error.log

# Check for duplicate keys in SQL
grep INSERT input.sql | sort | uniq -d
```

**Solutions**:

1. **Merge conflict resolution**:
   ```bash
   # If from merge, may have duplicate INSERTs
   # Edit SQL to remove duplicates
   # Or use OR IGNORE
   sed 's/INSERT INTO/INSERT OR IGNORE INTO/' input.sql > fixed.sql
   ```

2. **Check original database**:
   ```bash
   # Verify original doesn't have issue
   sqlite3 original.db "SELECT COUNT(*) = COUNT(DISTINCT id) FROM table_name;"
   ```

### Issue: sqlite_sequence table inconsistencies

**Symptoms**: Auto-increment IDs reset or inconsistent after conversion.

**Diagnosis**:
```bash
# Check sqlite_sequence in both databases
sqlite3 original.db "SELECT * FROM sqlite_sequence;"
sqlite3 restored.db "SELECT * FROM sqlite_sequence;"

# Check auto-increment behavior
sqlite3 restored.db "INSERT INTO table_name (name) VALUES ('test'); SELECT last_insert_rowid();"
```

**Solutions**:

1. **Expected behavior**:
   ```bash
   # gitsqlite excludes sqlite_sequence from dumps
   # This is intentional - it's regenerated automatically
   # Auto-increment will continue from max ID
   ```

2. **If you need exact sequence**:
   ```bash
   # Manually dump and restore sqlite_sequence
   sqlite3 original.db "SELECT * FROM sqlite_sequence;" > sequence.txt
   # Restore after smudge
   sqlite3 restored.db < sequence.txt
   ```

## Platform-Specific Issues

### Windows Issues

#### Issue: Path with spaces causes errors

**Symptoms**: gitsqlite fails when database path contains spaces.

**Solutions**:
```powershell
# Use quotes in Git config
git config filter.gitsqlite.clean "gitsqlite clean"

# Avoid spaces in paths if possible
# Or use short path names (8.3 format)
dir /x  # Shows short names
```

#### Issue: Line ending differences

**Symptoms**: SQL files show differences due to CRLF vs LF.

**Solutions**:
```bash
# Configure Git to normalize line endings
git config core.autocrlf true

# Or specify in .gitattributes
echo '*.sql text eol=lf' >> .gitattributes
```

### macOS Issues

#### Issue: Homebrew sqlite3 vs system sqlite3

**Symptoms**: Different sqlite3 versions produce different output.

**Solutions**:
```bash
# Check which sqlite3 is being used
which sqlite3

# Explicitly use system version
gitsqlite -sqlite /usr/bin/sqlite3 clean < db.db

# Or use Homebrew version consistently
gitsqlite -sqlite /usr/local/bin/sqlite3 clean < db.db
```

### Linux Issues

#### Issue: Temporary directory permission denied

**Symptoms**: Cannot create temporary files.

**Solutions**:
```bash
# Check temp directory permissions
ls -la /tmp
df -h /tmp

# Set different temp directory
export TMPDIR=/home/user/tmp
mkdir -p $TMPDIR
```

## Advanced Diagnostics

### Debug with verbose logging

```bash
# Create logs directory
mkdir -p debug-logs

# Run with detailed logging
gitsqlite -log-dir debug-logs clean < database.db > output.sql

# Examine logs
cat debug-logs/gitsqlite-clean-*.log | jq '.'

# Look for errors
cat debug-logs/gitsqlite-clean-*.log | jq 'select(.level=="ERROR")'

# Check timing
cat debug-logs/gitsqlite-clean-*.log | jq 'select(.duration != null) | {msg, duration}'
```

### Trace Git filter execution

```bash
# Enable Git trace
export GIT_TRACE=1
export GIT_TRACE_PACKET=1

# Perform Git operation
git add database.db

# Should see gitsqlite being invoked
```

### Compare binary databases directly

```bash
# Dump both databases with sqlite3 directly
sqlite3 db1.db .dump > db1-direct.sql
sqlite3 db2.db .dump > db2-direct.sql

# Compare with gitsqlite output
gitsqlite clean < db1.db > db1-gitsqlite.sql
gitsqlite clean < db2.db > db2-gitsqlite.sql

# Check differences
diff db1-direct.sql db1-gitsqlite.sql
```

### Memory usage analysis

```bash
# Monitor memory usage during conversion
(gitsqlite clean < large.db > output.sql) &
PID=$!

while kill -0 $PID 2>/dev/null; do
    ps -o pid,vsz,rss,comm -p $PID
    sleep 1
done
```

### Validate round-trip at byte level

```bash
# Create checksum before
md5sum original.db > original.md5

# Round-trip conversion
gitsqlite clean < original.db | gitsqlite smudge > restored.db

# Create checksum after
md5sum restored.db > restored.md5

# Note: Checksums may differ due to:
# - sqlite_sequence changes
# - Timestamp updates
# - Database internal structure reorganization

# Better: Compare data, not bytes
sqlite3 original.db .dump > original.sql
sqlite3 restored.db .dump > restored.sql
diff original.sql restored.sql
```

## Getting Help

If you've tried the troubleshooting steps and still have issues:

1. **Gather diagnostic information**:
   ```bash
   # Create diagnostic report
   cat > diagnostic-report.txt <<EOF
   gitsqlite version: $(gitsqlite -version)
   sqlite3 version: $(sqlite3 -version)
   OS: $(uname -a)
   Git version: $(git --version)
   
   Git filter config:
   $(git config --list | grep filter.gitsqlite)
   
   .gitattributes:
   $(cat .gitattributes)
   
   Error log:
   $(cat gitsqlite-*.log 2>/dev/null)
   EOF
   ```

2. **Create minimal reproducible example**:
   ```bash
   # Create small test case that reproduces the issue
   sqlite3 test-case.db "CREATE TABLE t(x); INSERT INTO t VALUES(1);"
   gitsqlite clean < test-case.db > test.sql
   # Document the unexpected behavior
   ```

3. **Open GitHub issue** with:
   - gitsqlite version
   - Operating system
   - Steps to reproduce
   - Expected vs actual behavior
   - Diagnostic report
   - Minimal test case if possible

4. **Check existing issues**: https://github.com/danielsiegl/gitsqlite/issues

## See Also

- [README.md](README.md) - Main documentation
- [SCENARIOS.md](SCENARIOS.md) - Usage scenarios and best practices
- [log.md](log.md) - Logging documentation

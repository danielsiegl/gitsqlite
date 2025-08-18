# gitsqlite Logging Guide

This document provides comprehensive information about gitsqlite's logging capabilities for monitoring performance and troubleshooting issues during clean and smudge operations.

## Overview

gitsqlite provides structured JSON logging to help you:
- Monitor performance of database conversions
- Debug issues with clean/smudge operations
- Track timing and file operations
- Identify bottlenecks in large database processing

## Enabling Logging

### Basic Logging

Enable logging to create timestamped log files in the current directory:

```bash
# Enable logging (creates log files in current directory)
gitsqlite -log clean < database.db > output.sql
gitsqlite -log smudge < database.sql > database.db
```

### Custom Log Directory

Direct logs to a specific directory for better organization:

```bash
# Create logs directory and log there
mkdir logs
gitsqlite -log-dir ./logs clean < database.db > output.sql
gitsqlite -log-dir ./logs smudge < database.sql > database.db
```

## Log File Format

### File Naming Convention

Log files are created with unique timestamped names to prevent conflicts:
- **Format**: `gitsqlite-{operation}-{timestamp}.log`
- **Example**: `gitsqlite-clean-20250818T103045.123Z.log`

### Log Entry Structure

Each log entry is a JSON object with the following fields:

| Field | Description | Example |
|-------|-------------|---------|
| `time` | ISO 8601 timestamp | `"2025-08-18T10:30:45.123Z"` |
| `level` | Log level (INFO, WARN, ERROR) | `"INFO"` |
| `msg` | Human-readable message | `"Clean operation completed"` |
| `operation` | Current operation type | `"clean"` or `"smudge"` |
| `duration` | Human-readable duration (HH:MM:SS.mmm) | `"00:01:23.456"` |
| `input_size` | Input file size in bytes | `1048576` |
| `output_lines` | Number of SQL lines generated | `1234` |

## Example Log Entries

### Successful Clean Operation

```json
{
  "time": "2025-08-18T10:30:45.123Z",
  "level": "INFO",
  "msg": "gitsqlite started",
  "operation": "clean",
  "input_file": "/tmp/gitsqlite_temp_db_12345.db"
}
{
  "time": "2025-08-18T10:30:45.200Z",
  "level": "INFO",
  "msg": "Copy operation completed",
  "operation": "clean",
  "duration": "00:00:00.077",
  "bytes_copied": 1048576
}
{
  "time": "2025-08-18T10:30:46.350Z",
  "level": "INFO",
  "msg": "SQLite dump completed",
  "operation": "clean",
  "duration": "00:00:01.150",
  "output_lines": 1234
}
{
  "time": "2025-08-18T10:30:46.355Z",
  "level": "INFO",
  "msg": "Clean operation completed",
  "operation": "clean",
  "duration": "00:00:01.232",
  "input_size": 1048576,
  "output_lines": 1234
}
```

### Error Example

```json
{
  "time": "2025-08-18T10:31:02.685Z",
  "level": "ERROR",
  "msg": "sqlite3 command failed",
  "operation": "clean",
  "error": "unable to open database file",
  "exit_code": 1
}
```

## Log File Locations

### Default Location
- **Current directory**: Log files are created where you run the command
- **Naming**: `gitsqlite-clean.log` or `gitsqlite-smudge.log`

### Custom Location
- **Specified directory**: Files are created in the directory specified by `-log-dir`
- **Directory creation**: The directory will be created if it doesn't exist
- **Permissions**: Ensure write access to the target directory

## Git Filter Integration

### Enabling Logging for Git Filters

For debugging Git filter issues, you can enable logging in your Git configuration:

```bash
# Enable logging for Git filters
git config filter.gitsqlite.clean "gitsqlite -log clean"
git config filter.gitsqlite.smudge "gitsqlite -log smudge"

# Or with custom log directory
git config filter.gitsqlite.clean "gitsqlite -log-dir /tmp/gitsqlite-logs clean"
git config filter.gitsqlite.smudge "gitsqlite -log-dir /tmp/gitsqlite-logs smudge"
```

### Temporary Logging for Debugging

```bash
# Temporarily enable logging for Git filters
git config filter.gitsqlite.clean "gitsqlite -log clean"
git config filter.gitsqlite.smudge "gitsqlite -log smudge"

# Perform Git operations that trigger filters
git add your_database.db
git commit -m "test"

# Check log files for issues
ls gitsqlite-*.log

# Disable logging when done
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"
```

## Performance Monitoring

### Large Database Operations

For large databases (>100MB), monitoring logs helps track progress:

```bash
# Enable logging and monitor in real-time
gitsqlite -log clean < large_database.db > output.sql &
tail -f gitsqlite-clean-*.log
```

### Timing Analysis

Log entries include human-readable durations (HH:MM:SS.mmm format) for:
- Overall operation time
- File copy operations
- SQLite dump/restore operations
- Cleanup operations

## Best Practices

### When to Enable Logging

- **Development**: Always enable logging during development and testing
- **Troubleshooting**: Enable when experiencing issues with database conversions
- **Performance**: Monitor large database operations
- **Production**: Consider enabling for Git filter operations in critical repositories

### Log Management

- **Organization**: Use custom log directories to keep logs organized
- **Retention**: Regularly clean up old log files to save disk space
- **Analysis**: Use JSON parsing tools to analyze log data programmatically

### Security Considerations

- **File Paths**: Log files may contain temporary file paths
- **Database Names**: Original database filenames are logged
- **Permissions**: Ensure log directories have appropriate access controls

## Troubleshooting with Logs

### Common Log Patterns

**SQLite Not Found**:
```json
{
  "level": "ERROR",
  "msg": "sqlite3 command not found",
  "operation": "clean"
}
```

**Permission Issues**:
```json
{
  "level": "ERROR",
  "msg": "failed to create temporary file",
  "operation": "clean",
  "error": "permission denied"
}
```

**Invalid Database**:
```json
{
  "level": "ERROR",
  "msg": "sqlite3 dump failed",
  "operation": "clean",
  "error": "file is not a database"
}
```

### Log Analysis Tips

1. **Check timestamps** to identify slow operations
2. **Look for ERROR level** entries first
3. **Verify file sizes** match expectations
4. **Compare durations** across similar operations

## Command Line Examples

```bash
# Basic logging
gitsqlite -log clean < database.db > output.sql

# Custom log directory
gitsqlite -log-dir ./debug-logs clean < database.db > output.sql

# Combine with other flags
gitsqlite -sqlite /usr/local/bin/sqlite3 -log clean < database.db > output.sql

# Check logs after operation
cat gitsqlite-clean-*.log | jq '.msg'
```

## Integration with Development Workflow

### Automated Testing

Include logging in your test scripts:

```bash
#!/bin/bash
# Test script with logging
mkdir -p test-logs
gitsqlite -log-dir ./test-logs clean < test.db > test.sql
gitsqlite -log-dir ./test-logs smudge < test.sql > restored.db

# Check for errors in logs
if grep -q '"level":"ERROR"' test-logs/*.log; then
    echo "Test failed - check logs in test-logs/"
    exit 1
fi
```

### CI/CD Integration

Preserve logs as artifacts in your CI/CD pipeline for debugging failed builds.

---

For more information about gitsqlite, see the main [README.md](README.md).

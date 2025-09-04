#!/bin/bash

#bash scripts/smoketest.sh

# Change to the project root directory
cd "$(dirname "$0")/.."

#create a sqlite database with a table and some data
sqlite3 smoketest.db <<EOF
CREATE TABLE test (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO test (name) VALUES ('Alice'), ('Bob'), ('Charlie');
EOF
# Verify the database and table creation
echo "Database contents:"
sqlite3 smoketest.db <<EOF
SELECT name FROM test;
EOF

# Check if database was created successfully
if [ ! -f smoketest.db ]; then
    echo "FAILED: smoketest.db was not created"
    exit 1
fi

db_size=$(stat -c%s smoketest.db 2>/dev/null || wc -c < smoketest.db)
echo "Database file size: $db_size bytes"

if [ "$db_size" -eq 0 ]; then
    echo "FAILED: smoketest.db is empty"
    exit 1
fi

echo "Step 1: Database -> SQL (clean)"
./gitsqlite.exe clean < smoketest.db > smoketest_output1.sql

echo "Step 2: SQL -> Database (smudge)"
./gitsqlite.exe smudge < smoketest_output1.sql > smoketest_output2.db

echo "Step 3: Database -> SQL (clean again)"
./gitsqlite.exe clean < smoketest_output2.db > smoketest_output2.sql

echo "Step 4: Comparing SQL outputs"

# Get file sizes
size1=$(stat -c%s smoketest_output1.sql 2>/dev/null || wc -c < smoketest_output1.sql)
size2=$(stat -c%s smoketest_output2.sql 2>/dev/null || wc -c < smoketest_output2.sql)

echo "File sizes:"
echo "  smoketest_output1.sql: $size1 bytes"
echo "  smoketest_output2.sql: $size2 bytes"

# Check if files exist and have the same size
if [ ! -f smoketest_output1.sql ] || [ ! -f smoketest_output2.sql ]; then
    echo "FAILED: One or both output files missing"
    exit_code=1
elif [ "$size1" -eq 0 ] || [ "$size2" -eq 0 ]; then
    echo "FAILED: One or both output files are empty (0 bytes)"
    exit_code=1
elif [ "$size1" != "$size2" ]; then
    echo "FAILED: File sizes differ by $((size2 - size1)) bytes"
    exit_code=1
#check if smoketest_output2.sql is identical to smoketest_output1.sql
elif diff smoketest_output1.sql smoketest_output2.sql > /dev/null; then
    echo "SUCCESS: Round-trip test passed - files are identical (same size and content)"
    exit_code=0
else
    echo "FAILED: Round-trip test failed - files same size but content differs"
    diff smoketest_output1.sql smoketest_output2.sql
    exit_code=1
fi

# Cleanup
echo "Cleaning up..."
rm -f smoketest.db smoketest_output1.sql smoketest_output2.db smoketest_output2.sql

# Add new schema flag tests
echo ""
echo "=== Testing new schema flags ==="

#create a sqlite database with a table and some data
sqlite3 schema_test.db <<EOF
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO users (name) VALUES ('Alice'), ('Bob'), ('Charlie');
EOF

echo "Step 5: Testing -schema flag (clean)"
./gitsqlite.exe -schema clean < schema_test.db > schema_test_data.sql

if [ ! -f .gitsqliteschema ]; then
    echo "FAILED: .gitsqliteschema file was not created"
    exit_code=1
elif [ ! -f schema_test_data.sql ]; then
    echo "FAILED: schema_test_data.sql file was not created"
    exit_code=1
else
    echo "SUCCESS: Schema separation files created"
fi

echo "Step 6: Testing -schema flag (smudge)"
./gitsqlite.exe -schema smudge < schema_test_data.sql > schema_test_restored.db

if [ ! -f schema_test_restored.db ]; then
    echo "FAILED: schema_test_restored.db was not created"
    exit_code=1
else
    # Verify database contents
    restored_count=$(sqlite3 schema_test_restored.db "SELECT COUNT(*) FROM users;")
    if [ "$restored_count" = "3" ]; then
        echo "SUCCESS: Schema flag smudge test passed"
    else
        echo "FAILED: Restored database has $restored_count rows, expected 3"
        exit_code=1
    fi
fi

echo "Step 7: Testing -schema-file flag with custom filename"
./gitsqlite.exe -schema-file custom.schema clean < schema_test.db > schema_test_custom.sql

if [ ! -f custom.schema ]; then
    echo "FAILED: custom.schema file was not created"
    exit_code=1
elif [ ! -f schema_test_custom.sql ]; then
    echo "FAILED: schema_test_custom.sql file was not created"
    exit_code=1
else
    echo "SUCCESS: Custom schema file created"
fi

echo "Step 8: Testing -schema-file flag (smudge)"
./gitsqlite.exe -schema-file custom.schema smudge < schema_test_custom.sql > schema_test_custom_restored.db

if [ ! -f schema_test_custom_restored.db ]; then
    echo "FAILED: schema_test_custom_restored.db was not created"
    exit_code=1
else
    # Verify database contents
    custom_count=$(sqlite3 schema_test_custom_restored.db "SELECT COUNT(*) FROM users;")
    if [ "$custom_count" = "3" ]; then
        echo "SUCCESS: Custom schema file smudge test passed"
    else
        echo "FAILED: Custom restored database has $custom_count rows, expected 3"
        exit_code=1
    fi
fi

echo "Step 9: Testing diff operation with -schema flag"
./gitsqlite.exe -schema diff schema_test.db > schema_test_diff.sql

if [ ! -f schema_test_diff.sql ]; then
    echo "FAILED: schema_test_diff.sql was not created"
    exit_code=1
else
    # Compare diff output with clean output (should be identical for data)
    if diff schema_test_data.sql schema_test_diff.sql > /dev/null; then
        echo "SUCCESS: Diff operation with schema flag passed"
    else
        echo "FAILED: Diff output differs from clean output"
        exit_code=1
    fi
fi

# Cleanup schema test files
echo "Cleaning up schema test files..."
rm -f schema_test.db schema_test_data.sql schema_test_restored.db 
rm -f schema_test_custom.sql schema_test_custom_restored.db schema_test_diff.sql
rm -f .gitsqliteschema custom.schema

exit $exit_code

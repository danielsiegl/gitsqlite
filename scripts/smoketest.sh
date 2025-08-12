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

exit $exit_code

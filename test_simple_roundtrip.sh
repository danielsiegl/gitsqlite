#!/bin/bash

# Simple GitSQLite Roundtrip Test for Linux/WSL
# Quick test to verify clean and smudge operations work correctly

set -e

echo "🧪 Simple GitSQLite Roundtrip Test"
echo "================================="

# Find gitsqlite binary
GITSQLITE=""
if [ -f "./bin/gitsqlite-linux-amd64" ]; then
    GITSQLITE="./bin/gitsqlite-linux-amd64"
elif [ -f "./gitsqlite" ]; then
    GITSQLITE="./gitsqlite"
else
    echo "❌ GitSQLite binary not found!"
    echo "   Expected: ./bin/gitsqlite-linux-amd64 or ./gitsqlite"
    exit 1
fi

echo "✓ Using: $GITSQLITE"

# Check for sqlite3
if ! command -v sqlite3 &> /dev/null; then
    echo "❌ sqlite3 not found! Install with: sudo apt-get install sqlite3"
    exit 1
fi

# Create test database
echo "📦 Creating test database..."
sqlite3 test.db "
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO users (name, email) VALUES 
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com'),
    ('Charlie', 'charlie@example.com');
"

echo "✓ Test database created"

# Show original data
echo "📊 Original data:"
sqlite3 test.db "SELECT * FROM users;"

# Step 1: Clean (database -> SQL)
echo ""
echo "🧹 Step 1: Clean operation..."
$GITSQLITE clean < test.db > test.sql
echo "✓ Database converted to SQL ($(wc -l < test.sql) lines)"

# Step 2: Smudge (SQL -> database) 
echo ""
echo "🔄 Step 2: Smudge operation..."
$GITSQLITE smudge < test.sql > test_restored.db
echo "✓ SQL converted back to database"

# Verify data
echo ""
echo "🔍 Verification:"
echo "📊 Restored data:"
sqlite3 test_restored.db "SELECT * FROM users;"

# Compare record counts
ORIG_COUNT=$(sqlite3 test.db "SELECT COUNT(*) FROM users;")
REST_COUNT=$(sqlite3 test_restored.db "SELECT COUNT(*) FROM users;")

if [ "$ORIG_COUNT" = "$REST_COUNT" ]; then
    echo "✅ Success! Record counts match: $ORIG_COUNT"
else
    echo "❌ Failed! Record count mismatch: $ORIG_COUNT vs $REST_COUNT"
    exit 1
fi

# Cleanup
rm -f test.db test.sql test_restored.db

echo ""
echo "🎉 Roundtrip test completed successfully!"
echo "   GitSQLite clean and smudge operations are working correctly."

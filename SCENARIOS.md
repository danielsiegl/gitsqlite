# Usage Scenarios and Best Practices

This document provides real-world scenarios and best practices for using gitsqlite in different contexts.

## Table of Contents

- [Common Use Cases](#common-use-cases)
- [Team Collaboration Scenarios](#team-collaboration-scenarios)
- [CI/CD Integration](#cicd-integration)
- [Application-Specific Scenarios](#application-specific-scenarios)
- [Advanced Workflows](#advanced-workflows)

## Common Use Cases

### Scenario 1: Version Controlling Configuration Databases

**Use Case**: You have an application that stores configuration in a SQLite database and want to track changes over time.

**Setup**:
```bash
# Configure Git filters
echo '*.db filter=gitsqlite' >> .gitattributes
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"

# Add your configuration database
git add config.db
git commit -m "Add configuration database"
```

**Benefits**:
- See exactly what configuration changed between versions
- Easy rollback to previous configurations
- Clear audit trail of configuration changes

**Considerations**:
- Configuration databases are typically small, so performance is not a concern
- Schema changes are infrequent, making standard clean/smudge ideal

### Scenario 2: Tracking Application State in Development

**Use Case**: Your application generates a local database during development, and you want team members to share this state.

**Setup**:
```bash
# Use schema/data separation for cleaner diffs
echo '*.db filter=gitsqlite-data' >> .gitattributes
git config filter.gitsqlite-data.clean "gitsqlite -data-only -schema clean"
git config filter.gitsqlite-data.smudge "gitsqlite -schema smudge"

# Add both the database and schema
git add app.db .gitsqliteschema
git commit -m "Add development database with schema separation"
```

**Benefits**:
- Schema is versioned separately, making data-only changes clearer
- Diffs show only INSERT statements when data changes
- Team members can easily see what test data was added or modified

**Considerations**:
- Schema file must be committed alongside database
- If schema changes, both files need to be updated
- Best for databases where schema is relatively stable

### Scenario 3: Documenting Database Examples

**Use Case**: You're writing documentation or tutorials and want to include example SQLite databases that readers can inspect.

**Setup**:
```bash
# Configure diff viewer for documentation
echo '*.db diff=gitsqlite' >> .gitattributes
git config diff.gitsqlite.textconv "gitsqlite diff"

# Create example database
sqlite3 examples/tutorial.db < examples/tutorial.sql

# Add to repository (store as binary or with filters)
git add examples/tutorial.db
git commit -m "Add tutorial example database"
```

**Benefits**:
- Readers can view SQL structure directly in GitHub
- Git diff shows SQL changes, not binary diffs
- Examples stay in sync with documentation

**Considerations**:
- You can use diff filter independently of clean/smudge
- Database stored as binary is fine if you only need readable diffs

### Scenario 4: Migrating Legacy Database Files

**Use Case**: You have historical SQLite databases that were committed as binary files and want to convert them to versioned SQL.

**Setup**:
```bash
# Convert existing database to SQL format
git checkout main
gitsqlite clean < legacy.db > legacy.sql

# Remove old binary and add SQL version
git rm legacy.db
git add legacy.sql

# Configure filters for future commits
echo '*.db filter=gitsqlite' >> .gitattributes
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"

git commit -m "Convert legacy database to versioned SQL format"
```

**Benefits**:
- Historical data preserved but now in readable format
- Future changes will be tracked as SQL diffs
- Can still use .db extension with Git filters

**Considerations**:
- Large historical databases may create large SQL files
- Consider using schema/data separation for ongoing changes
- Old binary commits remain in history

## Team Collaboration Scenarios

### Scenario 5: Multi-Developer Database Changes

**Use Case**: Multiple developers work on the same database file, making different changes.

**Workflow**:
```bash
# Developer A: Adds new table
sqlite3 app.db "CREATE TABLE features (id INTEGER PRIMARY KEY, name TEXT);"
git add app.db
git commit -m "Add features table"
git push

# Developer B: Adds data to existing table (before pulling A's changes)
sqlite3 app.db "INSERT INTO users VALUES (4, 'David', 'david@example.com');"
git add app.db
git commit -m "Add David to users"
git pull --rebase  # May cause merge conflict
```

**Handling Conflicts**:
```bash
# If merge conflict occurs, you'll see SQL merge markers
# Manually review the SQL conflict in the database file
# Resolve by editing the SQL, then:
git add app.db
git rebase --continue
```

**Best Practices**:
- Use schema/data separation to minimize conflicts
- Coordinate schema changes across team
- Use feature branches for major database changes
- Consider specialized tools for complex merges (see README warning)

**Considerations**:
- Text-based merges work well for data additions
- Schema conflicts require careful manual resolution
- Foreign key relationships may break during bad merges

### Scenario 6: Code Review with Database Changes

**Use Case**: Pull request includes database changes that need to be reviewed.

**Setup**:
```bash
# Enable SQL diffs in GitHub
echo '*.db diff=gitsqlite linguist-generated=false' >> .gitattributes
git add .gitattributes
git commit -m "Enable SQL diffs for database files"
```

**Review Process**:
- Reviewers see SQL diffs directly in GitHub/GitLab
- Can verify schema changes without checking out branch
- Data changes appear as INSERT/UPDATE/DELETE statements
- Comments can reference specific SQL lines

**Benefits**:
- No need to checkout branch to inspect database changes
- Clear visibility into what data/schema changed
- Easier to spot potential issues in review

**Considerations**:
- Large data imports may create massive diffs
- Use `-data-only` mode for cleaner data-only reviews
- Consider splitting schema and data changes into separate PRs

## CI/CD Integration

### Scenario 7: Automated Database Testing in CI

**Use Case**: Run automated tests that verify database integrity after conversions.

**CI Configuration** (GitHub Actions example):
```yaml
name: Database Tests
on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Install dependencies
        run: |
          sudo apt-get update
          sudo apt-get install -y sqlite3
      
      - name: Install gitsqlite
        run: |
          curl -L -o gitsqlite https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite-linux-amd64
          chmod +x gitsqlite
          sudo mv gitsqlite /usr/local/bin/
      
      - name: Test round-trip conversion
        run: |
          # Test each database file
          for db in *.db; do
            echo "Testing $db"
            gitsqlite clean < "$db" | gitsqlite smudge > "test-$db"
            gitsqlite clean < "test-$db" > "test1.sql"
            gitsqlite clean < "$db" > "test2.sql"
            diff test1.sql test2.sql || exit 1
          done
      
      - name: Verify database integrity
        run: |
          # Check that databases are valid
          for db in *.db; do
            sqlite3 "$db" "PRAGMA integrity_check;" || exit 1
            sqlite3 "$db" "PRAGMA foreign_key_check;" || exit 1
          done
```

**Benefits**:
- Catch corruption issues early
- Verify round-trip integrity
- Automate quality checks

**Considerations**:
- CI needs both sqlite3 and gitsqlite installed
- Large databases may slow down CI pipeline
- Consider caching gitsqlite binary

### Scenario 8: Automated Database Deployment

**Use Case**: Deploy database changes to staging/production environments.

**Deployment Script**:
```bash
#!/bin/bash
# deploy-database.sh

set -e

ENV=$1  # staging or production
DB_FILE="app.db"

echo "Deploying database to $ENV"

# Checkout the database (Git filter handles conversion)
git checkout "$ENV"
git pull origin "$ENV"

# Database is automatically converted from SQL to SQLite by smudge filter
# Verify integrity
sqlite3 "$DB_FILE" "PRAGMA integrity_check;"

# Backup existing database
cp "$DB_FILE" "backups/${ENV}-$(date +%Y%m%d-%H%M%S).db"

# Deploy to application directory
cp "$DB_FILE" "/var/app/${ENV}/database.db"

echo "Deployment complete"
```

**Benefits**:
- Database changes flow through Git workflow
- Automatic conversion from versioned SQL to binary
- Built-in backup strategy

**Considerations**:
- Ensure Git filters are configured on deployment server
- Test schema migrations before production deployment
- Have rollback plan for failed deployments

## Application-Specific Scenarios

### Scenario 9: Sparx Enterprise Architect Models

**Use Case**: Version control Enterprise Architect .qeax model files (SQLite-based).

**⚠️ Important Warning**: While gitsqlite can provide visibility into changes, **DO NOT** rely on it for merging EA models. Use [LieberLieber LemonTree](https://www.lieberlieber.com/lemontree/) for proper model merging.

**Recommended Setup**:
```bash
# Configure for diff visibility only
echo '*.qeax diff=gitsqlite' >> .gitattributes
git config diff.gitsqlite.textconv "gitsqlite diff"

# Store as binary but view diffs as SQL
git add model.qeax
git commit -m "Add EA model"
```

**Workflow**:
- Use gitsqlite for **visibility** into what changed
- Use LemonTree for **merging** conflicting model changes
- Commit merged results back to Git

**Why This Approach**:
- EA models have complex relationships and constraints
- Automated SQL merging can break model integrity
- Domain-specific tools understand EA semantics

### Scenario 10: Mobile App Local Databases

**Use Case**: iOS/Android app development with local SQLite databases for testing.

**Setup**:
```bash
# Store test databases with schema separation
echo 'test-data/*.db filter=gitsqlite-data' >> .gitattributes
git config filter.gitsqlite-data.clean "gitsqlite -data-only -schema clean"
git config filter.gitsqlite-data.smudge "gitsqlite -schema smudge"

# Add test databases
git add test-data/*.db test-data/.gitsqliteschema
git commit -m "Add test databases for app testing"
```

**Benefits**:
- Share consistent test data across team
- Easy to update test datasets
- Schema changes visible in diffs

**Testing Workflow**:
```bash
# Update test data from app
cp ~/Library/Application\ Support/MyApp/database.db test-data/test-user.db

# Extract and commit just the data changes
git add test-data/test-user.db
git commit -m "Update test data with new user scenarios"
```

### Scenario 11: Game Development Save Files

**Use Case**: Track game save files (if they use SQLite) for testing.

**Setup**:
```bash
# Configure for save files
echo 'saves/*.sav filter=gitsqlite' >> .gitattributes
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"

# Version control test saves
git add saves/level-10-complete.sav
git commit -m "Add save file for level 10 completion testing"
```

**Benefits**:
- Reproduce specific game states for bug testing
- Share save states among QA team
- Track progression through development

**Considerations**:
- Only works if save files are SQLite format
- Some games use proprietary formats
- Large save files may not be practical

## Advanced Workflows

### Scenario 12: Database Schema Evolution

**Use Case**: Track schema changes over time while keeping data separate.

**Initial Setup**:
```bash
# Start with schema/data separation
echo '*.db filter=gitsqlite-data' >> .gitattributes
git config filter.gitsqlite-data.clean "gitsqlite -data-only -schema clean"
git config filter.gitsqlite-data.smudge "gitsqlite -schema smudge"

git add app.db .gitsqliteschema
git commit -m "v1.0: Initial schema and data"
```

**Schema Migration Workflow**:
```bash
# Create migration script
cat > migrations/001-add-email-column.sql <<EOF
ALTER TABLE users ADD COLUMN email TEXT;
UPDATE users SET email = name || '@example.com';
EOF

# Apply migration to development database
sqlite3 app.db < migrations/001-add-email-column.sql

# Commit both schema and data changes
git add app.db .gitsqliteschema migrations/
git commit -m "v1.1: Add email column to users"
```

**Benefits**:
- Clear history of schema evolution
- Migration scripts provide upgrade path
- Data and schema tracked separately

**Considerations**:
- Schema changes affect .gitsqliteschema file
- Test migrations before committing
- Consider using formal migration tools for production

### Scenario 13: Multi-Environment Database Sync

**Use Case**: Maintain different database states for development, staging, and production.

**Branch Strategy**:
```bash
# development branch - frequent data changes
git checkout development
echo "Development data changes frequently"
git config filter.gitsqlite-data.clean "gitsqlite -data-only -schema clean"

# staging branch - more stable data
git checkout staging
git merge development  # Merge schema changes

# production branch - minimal changes
git checkout production
git cherry-pick <specific-commits>  # Only tested changes
```

**Benefits**:
- Each environment has appropriate data
- Schema changes propagate through environments
- Clear promotion path from dev to production

**Considerations**:
- Merge conflicts more likely with data changes
- Consider keeping only schema in version control for production
- Use environment-specific data seeding scripts

### Scenario 14: Database Regression Testing

**Use Case**: Maintain database snapshots for regression testing.

**Setup**:
```bash
# Store test snapshots
mkdir test-snapshots
echo 'test-snapshots/*.db filter=gitsqlite' >> .gitattributes

# Create test snapshots
for test in baseline after-fix edge-case; do
    cp current.db "test-snapshots/$test.db"
done

git add test-snapshots/*.db
git commit -m "Add regression test database snapshots"
```

**Testing Script**:
```bash
#!/bin/bash
# regression-test.sh

for snapshot in test-snapshots/*.db; do
    echo "Testing $snapshot"
    
    # Run test queries
    result=$(sqlite3 "$snapshot" "SELECT COUNT(*) FROM users WHERE email IS NOT NULL;")
    
    if [ "$result" -ne 10 ]; then
        echo "FAILED: Expected 10 users with email, got $result"
        exit 1
    fi
done

echo "All regression tests passed"
```

**Benefits**:
- Reproducible test cases
- Easy to add new test scenarios
- Clear baseline for comparison

### Scenario 15: Cross-Platform Development

**Use Case**: Team uses Windows, macOS, and Linux - need consistent database handling.

**Setup** (Same on all platforms):
```bash
# Configure Git filters with platform detection
git config filter.gitsqlite.clean "gitsqlite clean"
git config filter.gitsqlite.smudge "gitsqlite smudge"

# Ensure consistent line endings
echo '*.db filter=gitsqlite' >> .gitattributes
echo '*.sql text eol=lf' >> .gitattributes
```

**Benefits**:
- gitsqlite ensures byte-for-byte identical output across platforms
- Float precision normalization prevents platform-specific differences
- Line ending normalization for SQL files

**Platform-Specific Notes**:
- **Windows**: Use winget for easy installation
- **macOS**: May need to specify sqlite3 path if using Homebrew version
- **Linux**: Standard package manager installation

**Considerations**:
- All team members need compatible gitsqlite versions
- Float precision must be consistent across team
- Use `-float-precision` flag if needed

## Summary

These scenarios demonstrate gitsqlite's flexibility for various use cases:

- **Simple**: Configuration tracking, example databases
- **Moderate**: Team collaboration, CI/CD integration
- **Complex**: Schema evolution, multi-environment sync
- **Specialized**: Application-specific databases with external merge tools

**General Guidelines**:
1. Start simple (basic clean/smudge) and add complexity as needed
2. Use schema/data separation for databases with frequent data changes
3. Enable logging (`-log`) when troubleshooting
4. Consider specialized tools for complex merge scenarios
5. Test round-trip conversion before committing to workflow
6. Document your team's chosen workflow in repository README

For more information, see:
- [README.md](README.md) - Installation and basic usage
- [TROUBLESHOOTING.md](TROUBLESHOOTING.md) - Detailed troubleshooting guide
- [log.md](log.md) - Logging documentation

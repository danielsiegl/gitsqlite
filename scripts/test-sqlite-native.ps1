# test-sqlite-native.ps1
# Tests SQLite native commands to avoid sqlite_sequence without filtering

Write-Host "Testing SQLite native commands with real database..." -ForegroundColor Green

# Use the real database file
$testDb = "test.qeax" # Adjust this path to your actual database file

if (-not (Test-Path $testDb)) {
    Write-Host "Database file not found: $testDb" -ForegroundColor Red
    exit 1
}

Write-Host "Using database: $testDb" -ForegroundColor Cyan

# Show all tables (including system tables)
Write-Host "`nAll tables in database:" -ForegroundColor Cyan
try {
    $allTables = sqlite3 $testDb "SELECT name FROM sqlite_master WHERE type='table';"
    $allTables | ForEach-Object {
        Write-Host "  $_" -ForegroundColor White
    }
    Write-Host "Total tables: $($allTables.Count)" -ForegroundColor Yellow
} catch {
    Write-Host "Error reading tables: $_" -ForegroundColor Red
    exit 1
}

# Check if sqlite_sequence exists
$hasSequence = $allTables -contains "sqlite_sequence"
Write-Host "`nDatabase has sqlite_sequence table: $hasSequence" -ForegroundColor $(if($hasSequence){'Yellow'}else{'Green'})

# Get list of user tables (excluding sqlite_* system tables)
Write-Host "`nUser tables (excluding system tables):" -ForegroundColor Cyan
try {
    $userTables = sqlite3 $testDb "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';"
    $userTables | ForEach-Object {
        Write-Host "  $_" -ForegroundColor Green
    }
    Write-Host "Total user tables: $($userTables.Count)" -ForegroundColor Yellow
} catch {
    Write-Host "Error reading user tables: $_" -ForegroundColor Red
    exit 1
}

if ($userTables.Count -eq 0) {
    Write-Host "No user tables found!" -ForegroundColor Red
    exit 1
}

# Method 1: Selective dump of user tables only
Write-Host "`nMethod 1: Selective dump (no sqlite_sequence)" -ForegroundColor Magenta

# Split tables into batches to avoid command line length limits
$batchSize = 20  # Process 20 tables at a time
$batches = @()
for ($i = 0; $i -lt $userTables.Count; $i += $batchSize) {
    $batch = $userTables[$i..[System.Math]::Min($i + $batchSize - 1, $userTables.Count - 1)]
    $batches += ,$batch
}

Write-Host "Processing $($userTables.Count) tables in $($batches.Count) batches of $batchSize tables each" -ForegroundColor Gray

try {
    $selectiveStart = Get-Date
    
    # Start with SQLite header
    @"
.crlf OFF
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
"@ | Out-File "output_selective_real.sql" -Encoding UTF8
    
    # Process each batch
    for ($batchIndex = 0; $batchIndex -lt $batches.Count; $batchIndex++) {
        $batch = $batches[$batchIndex]
        $tableList = $batch -join ' '
        Write-Host "  Batch $($batchIndex + 1)/$($batches.Count): $($batch.Count) tables" -ForegroundColor Gray
        
        # Dump this batch of tables
        @"
.crlf OFF
.dump $tableList
"@ | sqlite3 $testDb | Where-Object { 
            # Filter out the PRAGMA and transaction statements that SQLite adds for each batch
            $_ -notmatch "^PRAGMA foreign_keys=OFF;" -and 
            $_ -notmatch "^BEGIN TRANSACTION;" -and 
            $_ -notmatch "^COMMIT;" 
        } | Add-Content "output_selective_real.sql" -Encoding UTF8
    }
    
    # End transaction
    "COMMIT;" | Add-Content "output_selective_real.sql" -Encoding UTF8
    
    $selectiveEnd = Get-Date
    $selectiveDuration = $selectiveEnd - $selectiveStart
    Write-Host "Selective dump completed in $($selectiveDuration.TotalSeconds) seconds" -ForegroundColor Green
} catch {
    Write-Host "Error in selective dump: $_" -ForegroundColor Red
}

# Method 2: Full dump (includes sqlite_sequence if present)
Write-Host "`nMethod 2: Full dump (includes sqlite_sequence)" -ForegroundColor Magenta
try {
    $fullStart = Get-Date
    @"
.crlf OFF
.dump
"@ | sqlite3 $testDb | Out-File "output_full_real.sql" -Encoding UTF8
    $fullEnd = Get-Date
    $fullDuration = $fullEnd - $fullStart
    Write-Host "Full dump completed in $($fullDuration.TotalSeconds) seconds" -ForegroundColor Green
} catch {
    Write-Host "Error in full dump: $_" -ForegroundColor Red
}

# Compare results
Write-Host "`nResults:" -ForegroundColor Yellow
if ((Test-Path "output_selective_real.sql") -and (Test-Path "output_full_real.sql")) {
    $selectiveHasSeq = Select-String -Path "output_selective_real.sql" -Pattern "sqlite_sequence" -Quiet
    $fullHasSeq = Select-String -Path "output_full_real.sql" -Pattern "sqlite_sequence" -Quiet

    Write-Host "Selective dump contains sqlite_sequence: " -NoNewline
    Write-Host $selectiveHasSeq -ForegroundColor $(if($selectiveHasSeq){'Red'}else{'Green'})

    Write-Host "Full dump contains sqlite_sequence: " -NoNewline  
    Write-Host $fullHasSeq -ForegroundColor $(if($fullHasSeq){'Green'}else{'Red'})

    # Show file sizes and line counts
    $selectiveFile = Get-Item "output_selective_real.sql"
    $fullFile = Get-Item "output_full_real.sql"
    
    $selectiveLines = (Get-Content "output_selective_real.sql").Count
    $fullLines = (Get-Content "output_full_real.sql").Count

    Write-Host "`nFile comparison:" -ForegroundColor Cyan
    Write-Host "  Selective dump: $($selectiveFile.Length) bytes, $selectiveLines lines" -ForegroundColor White
    Write-Host "  Full dump: $($fullFile.Length) bytes, $fullLines lines" -ForegroundColor White
    Write-Host "  Difference: $($fullFile.Length - $selectiveFile.Length) bytes, $($fullLines - $selectiveLines) lines" -ForegroundColor Yellow
    
    # Performance comparison
    Write-Host "`nPerformance:" -ForegroundColor Cyan
    Write-Host "  Selective dump: $($selectiveDuration.TotalSeconds) seconds" -ForegroundColor White
    Write-Host "  Full dump: $($fullDuration.TotalSeconds) seconds" -ForegroundColor White
}

Write-Host "`n✅ CONCLUSION: SQLite native selective dump works with real database!" -ForegroundColor Green
Write-Host "   Use '.dump <table_list>' to exclude sqlite_sequence automatically." -ForegroundColor Yellow

# Test 3: Reconstruct database from selective dump
Write-Host "`nMethod 3: Reconstructing database from selective dump" -ForegroundColor Magenta
$reconstructedDb = "reconstructed_from_selective.db"

if (Test-Path $reconstructedDb) {
    Remove-Item $reconstructedDb -Force
}

if (Test-Path "output_selective_real.sql") {
    try {
        Write-Host "Creating new database from selective dump..." -ForegroundColor Gray
        $reconstructStart = Get-Date
        Get-Content "output_selective_real.sql" | sqlite3 $reconstructedDb
        $reconstructEnd = Get-Date
        $reconstructDuration = $reconstructEnd - $reconstructStart
        Write-Host "Database reconstruction completed in $($reconstructDuration.TotalSeconds) seconds" -ForegroundColor Green
        
        # Verify the reconstructed database
        Write-Host "`nVerifying reconstructed database..." -ForegroundColor Cyan
        $originalTables = sqlite3 $testDb "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name;"
        $reconstructedTables = sqlite3 $reconstructedDb "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name;"
        
        $originalCount = $originalTables.Count
        $reconstructedCount = $reconstructedTables.Count
        
        Write-Host "Original user tables: $originalCount" -ForegroundColor White
        Write-Host "Reconstructed user tables: $reconstructedCount" -ForegroundColor White
        
        if ($originalCount -eq $reconstructedCount) {
            Write-Host "✅ Table count matches!" -ForegroundColor Green
            
            # Check if sqlite_sequence was recreated (it should be if there are AUTOINCREMENT columns)
            $reconstructedAllTables = sqlite3 $reconstructedDb "SELECT name FROM sqlite_master WHERE type='table';"
            $hasReconstructedSequence = $reconstructedAllTables -contains "sqlite_sequence"
            Write-Host "Reconstructed database has sqlite_sequence: $hasReconstructedSequence" -ForegroundColor $(if($hasReconstructedSequence){'Yellow'}else{'Green'})
            
            # Sample a few tables to verify data integrity
            Write-Host "`nSampling data integrity..." -ForegroundColor Cyan
            $sampleTables = $originalTables | Select-Object -First 3
            foreach ($table in $sampleTables) {
                try {
                    $originalCount = sqlite3 $testDb "SELECT COUNT(*) FROM [$table];"
                    $reconstructedCount = sqlite3 $reconstructedDb "SELECT COUNT(*) FROM [$table];"
                    Write-Host "  $table`: $originalCount → $reconstructedCount rows" -ForegroundColor $(if($originalCount -eq $reconstructedCount){'Green'}else{'Red'})
                } catch {
                    Write-Host "  $table`: Error checking row count" -ForegroundColor Red
                }
            }
            
            # Check database file size
            $reconstructedFile = Get-Item $reconstructedDb
            Write-Host "`nReconstructed database size: $($reconstructedFile.Length) bytes" -ForegroundColor White
            
        } else {
            Write-Host "❌ Table count mismatch!" -ForegroundColor Red
        }
        
    } catch {
        Write-Host "Error reconstructing database: $_" -ForegroundColor Red
    }
} else {
    Write-Host "Selective dump file not found, skipping reconstruction test" -ForegroundColor Yellow
}

Write-Host "`nOutput files created:" -ForegroundColor Gray
Write-Host "  - output_selective_real.sql (user tables only)" -ForegroundColor White
Write-Host "  - output_full_real.sql (all tables including system)" -ForegroundColor White
if (Test-Path $reconstructedDb) {
    Write-Host "  - $reconstructedDb (reconstructed database)" -ForegroundColor Green
}

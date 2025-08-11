# Sample script demonstrating the gitsqlite round-trip operation
# This script tests the complete round-trip: SQL → smudge → database → clean → SQL

Write-Host "GitSQLite Round-trip Test - Complete Workflow Validation" -ForegroundColor Green
Write-Host "=========================================================" -ForegroundColor Green

# Check if sqlite3 is available in PATH first
try {
    $null = Get-Command sqlite3 -ErrorAction Stop
    Write-Host "SQLite3 found in PATH, using system sqlite3" -ForegroundColor Yellow
    $sqliteExe = "sqlite3"
} catch {
    Write-Host "SQLite3 not found in PATH, using winget installation path" -ForegroundColor Yellow
    # Set path to sqlite3 installed via winget
    $sqlitePath = "$env:LOCALAPPDATA\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe"
    $sqliteExe = "$sqlitePath\sqlite3.exe"
    
    # Verify the winget installation exists
    if (-not (Test-Path $sqliteExe)) {
        Write-Host ""
        Write-Host "Error: SQLite3 not found in PATH or winget location" -ForegroundColor Red
        Write-Host "Please install SQLite3 using: winget install -e --id SQLite.SQLite" -ForegroundColor Red
        Write-Host "Or run install_sqlite.bat to install and configure automatically" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
}

Write-Host "Using SQLite: $sqliteExe" -ForegroundColor Cyan
Write-Host ""

# Check if the Model.sql file exists
$modelSqlFile = "testdata\Model.sql"
if (-not (Test-Path $modelSqlFile)) {
    Write-Host "Error: Model.sql file not found at $modelSqlFile" -ForegroundColor Red
    Write-Host "Please ensure the testdata directory contains the Model.sql file" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "Using database schema from: $modelSqlFile" -ForegroundColor Cyan

# Function to download and test external SQL file
function Test-GitSqliteWithExternalFile {
    param(
        [string]$SqliteExe,
        [string]$Url,
        [string]$FileName
    )
    
    $tempSqlFile = "temp_$FileName"
    $dbFile = "temp_external.db"
    $outputFile = "temp_external_output.sql"
    
    try {
        Write-Host "Downloading SQL file from GitHub repository..." -ForegroundColor Green
        Write-Host "URL: $Url" -ForegroundColor Cyan
        
        # Download the file
        try {
            Invoke-WebRequest -Uri $Url -OutFile $tempSqlFile -UseBasicParsing
            Write-Host "✓ Downloaded: $tempSqlFile" -ForegroundColor Green
        } catch {
            throw "Failed to download file from $Url`: $_"
        }
        
        # Check file size
        $fileInfo = Get-Item $tempSqlFile
        $fileSizeKB = [math]::Round($fileInfo.Length / 1024, 2)
        Write-Host "Downloaded file size: $($fileInfo.Length) bytes ($fileSizeKB KB)" -ForegroundColor Cyan
        
        Write-Host "Converting downloaded SQL to database using gitsqlite smudge..." -ForegroundColor Green
        
        # Use gitsqlite smudge operation to create database from downloaded SQL file
        if ($SqliteExe -eq "sqlite3") {
            cmd /c ".\gitsqlite.exe smudge < `"$tempSqlFile`" > `"$dbFile`""
        } else {
            cmd /c ".\gitsqlite.exe smudge `"$SqliteExe`" < `"$tempSqlFile`" > `"$dbFile`""
        }
        
        if ($LASTEXITCODE -ne 0) {
            throw "gitsqlite smudge command failed with exit code $LASTEXITCODE"
        }
        
        # Verify the database was created
        if (-not (Test-Path $dbFile)) {
            throw "Database file was not created by smudge operation"
        }
        
        # Get database file size info
        $dbInfo = Get-Item $dbFile
        $dbSizeKB = [math]::Round($dbInfo.Length / 1024, 2)
        $dbSizeMB = [math]::Round($dbInfo.Length / (1024 * 1024), 2)
        Write-Host "Database created - Size: $($dbInfo.Length) bytes ($dbSizeKB KB / $dbSizeMB MB)" -ForegroundColor Cyan
        
        Write-Host "Converting database back to SQL using gitsqlite clean..." -ForegroundColor Green
        
        # Convert back to SQL
        if ($SqliteExe -eq "sqlite3") {
            cmd /c ".\gitsqlite.exe clean < `"$dbFile`" > `"$outputFile`""
        } else {
            cmd /c ".\gitsqlite.exe clean `"$SqliteExe`" < `"$dbFile`" > `"$outputFile`""
        }
        
        if ($LASTEXITCODE -ne 0) {
            throw "gitsqlite clean command failed with exit code $LASTEXITCODE"
        }
        
        # Compare original downloaded file with cleaned output
        Write-Host "Comparing original downloaded SQL with cleaned output..." -ForegroundColor Magenta
        
        $originalContent = Get-Content $tempSqlFile -Raw
        $cleanedContent = Get-Content $outputFile -Raw
        
        # Normalize line endings for comparison (convert both to Unix style)
        $originalContent = $originalContent -replace "`r`n", "`n"
        $cleanedContent = $cleanedContent -replace "`r`n", "`n"
        
        $originalLines = ($originalContent -split "`n").Count
        $cleanedLines = ($cleanedContent -split "`n").Count
        $originalSizeKB = [math]::Round(($originalContent.Length) / 1024, 2)
        $cleanedSizeKB = [math]::Round(($cleanedContent.Length) / 1024, 2)
        
        Write-Host "Original downloaded: $originalLines lines, $originalSizeKB KB" -ForegroundColor Cyan
        Write-Host "Cleaned output:      $cleanedLines lines, $cleanedSizeKB KB" -ForegroundColor Cyan
        
        if ($originalContent -eq $cleanedContent) {
            Write-Host "✓ PERFECT: External file round-trip successful!" -ForegroundColor Green
            Write-Host "The downloaded SQL file processes correctly through gitsqlite." -ForegroundColor Green
            $success = $true
        } else {
            Write-Host "✗ DIFFERENCE: External file round-trip shows differences!" -ForegroundColor Yellow
            Write-Host "This may be due to sqlite_sequence filtering or format normalization." -ForegroundColor Yellow
            
            # Show some statistics about the differences
            $diff = Compare-Object -ReferenceObject ($originalContent -split "`n") -DifferenceObject ($cleanedContent -split "`n")
            if ($diff) {
                $addedLines = ($diff | Where-Object { $_.SideIndicator -eq "=>" }).Count
                $removedLines = ($diff | Where-Object { $_.SideIndicator -eq "<=" }).Count
                Write-Host "Differences: $removedLines lines from original, $addedLines lines in output" -ForegroundColor Yellow
                
                # Show first few differences for analysis
                Write-Host ""
                Write-Host "First 5 differences (for analysis):" -ForegroundColor Yellow
                $diff | Select-Object -First 5 | ForEach-Object {
                    $source = if ($_.SideIndicator -eq "<=") { "Original" } else { "Cleaned" }
                    $color = if ($_.SideIndicator -eq "<=") { "Cyan" } else { "Magenta" }
                    Write-Host "$source`: $($_.InputObject)" -ForegroundColor $color
                }
            }
            $success = $false
        }
        
        # Copy files to testoutput folder for analysis
        $testOutputDir = "testoutput"
        if (-not (Test-Path $testOutputDir)) {
            New-Item -ItemType Directory -Path $testOutputDir -Force | Out-Null
        }
        
        try {
            $externalOriginalCopy = "$testOutputDir\04_external_original_$FileName"
            $externalCleanedCopy = "$testOutputDir\05_external_cleaned_$FileName"
            
            Copy-Item $tempSqlFile $externalOriginalCopy -Force
            Copy-Item $outputFile $externalCleanedCopy -Force
            
            Write-Host ""
            Write-Host "✓ Copied external original to: $externalOriginalCopy" -ForegroundColor Green
            Write-Host "✓ Copied external cleaned to: $externalCleanedCopy" -ForegroundColor Green
        } catch {
            Write-Host "Warning: Failed to copy external test files to output folder: $_" -ForegroundColor Yellow
        }
        
        return $success
        
    } catch {
        Write-Host "Error during external file test: $_" -ForegroundColor Red
        return $false
    } finally {
        # Clean up temporary files
        @($tempSqlFile, $dbFile, $outputFile) | ForEach-Object {
            if (Test-Path $_) {
                Remove-Item $_ -Force
            }
        }
    }
}

# Function to perform complete round-trip test
function Test-GitSqliteRoundtrip {
    param(
        [int]$TestNumber,
        [string]$SqliteExe,
        [string]$ModelSqlFile
    )
    
    $dbFile = "sample$TestNumber.db"
    $outputFile = "output$TestNumber.sql"
    
    try {
        Write-Host "Test $TestNumber - Converting SQL to database using gitsqlite smudge..." -ForegroundColor Green
        
        # Use gitsqlite smudge operation to create database from SQL file
        if ($SqliteExe -eq "sqlite3") {
            cmd /c ".\gitsqlite.exe smudge < `"$ModelSqlFile`" > `"$dbFile`""
        } else {
            cmd /c ".\gitsqlite.exe smudge `"$SqliteExe`" < `"$ModelSqlFile`" > `"$dbFile`""
        }
        
        if ($LASTEXITCODE -ne 0) {
            throw "gitsqlite smudge command failed with exit code $LASTEXITCODE"
        }
        
        # Verify the database was created
        if (-not (Test-Path $dbFile)) {
            throw "Database file was not created by smudge operation"
        }
        
        # Get file size info
        $fileInfo = Get-Item $dbFile
        $fileSizeKB = [math]::Round($fileInfo.Length / 1024, 2)
        $fileSizeMB = [math]::Round($fileInfo.Length / (1024 * 1024), 2)
        Write-Host "Database $TestNumber created - Size: $($fileInfo.Length) bytes ($fileSizeKB KB / $fileSizeMB MB)" -ForegroundColor Cyan
        
        Write-Host "Test $TestNumber - Converting database back to SQL using gitsqlite clean..." -ForegroundColor Green
        
        # Capture output to file for comparison
        if ($SqliteExe -eq "sqlite3") {
            cmd /c ".\gitsqlite.exe clean < $dbFile > $outputFile"
        } else {
            cmd /c ".\gitsqlite.exe clean `"$SqliteExe`" < $dbFile > $outputFile"
        }
        
        if ($LASTEXITCODE -ne 0) {
            throw "gitsqlite command failed with exit code $LASTEXITCODE"
        }
        
        # Display the output (first few lines only for large outputs)
        Write-Host "Output from Test $TestNumber (showing first 20 lines)" -ForegroundColor Yellow
        Write-Host "----------------------------------------------------" -ForegroundColor Yellow
        $outputLines = Get-Content $outputFile
        $linesToShow = [Math]::Min(20, $outputLines.Count)
        $outputLines[0..($linesToShow-1)] | Write-Host
        if ($outputLines.Count -gt 20) {
            Write-Host "... ($($outputLines.Count - 20) more lines) ..." -ForegroundColor Gray
        }
        Write-Host ""
        
        return $outputFile
        
    } catch {
        Write-Host "Error in Test $TestNumber`: $_" -ForegroundColor Red
        throw
    } finally {
        # Clean up database file
        if (Test-Path $dbFile) {
            Remove-Item $dbFile -Force
        }
    }
}

# Run the test twice
try {
    Write-Host "Running round-trip test - performing complete conversion cycle twice..." -ForegroundColor Magenta
    Write-Host ""
    
    # Initialize success flags
    $roundTripSuccess = $false
    $originalMatchSuccess = $false
    $externalFileSuccess = $false
    
    $output1 = Test-GitSqliteRoundtrip -TestNumber 1 -SqliteExe $sqliteExe -ModelSqlFile $modelSqlFile
    $output2 = Test-GitSqliteRoundtrip -TestNumber 2 -SqliteExe $sqliteExe -ModelSqlFile $modelSqlFile
    
    # Test with external file from GitHub
    Write-Host ""
    Write-Host "Testing with external SQL file from GitHub..." -ForegroundColor Magenta
    Write-Host "==============================================" -ForegroundColor Magenta
    $externalFileUrl = "https://raw.githubusercontent.com/danielsiegl/gitsqliteqeax/main/Model.qeax"
    $externalFileSuccess = Test-GitSqliteWithExternalFile -SqliteExe $sqliteExe -Url $externalFileUrl -FileName "Model.qeax"
    Write-Host ""
    
    # Compare the outputs
    Write-Host "Comparing outputs..." -ForegroundColor Magenta
    Write-Host "===================" -ForegroundColor Magenta
    
    $content1 = Get-Content $output1 -Raw
    $content2 = Get-Content $output2 -Raw
    
    # Get some statistics about the outputs
    $lines1 = ($content1 -split "`n").Count
    $lines2 = ($content2 -split "`n").Count
    $size1KB = [math]::Round(($content1.Length) / 1024, 2)
    $size2KB = [math]::Round(($content2.Length) / 1024, 2)
    
    Write-Host "Output 1: $lines1 lines, $size1KB KB" -ForegroundColor Cyan
    Write-Host "Output 2: $lines2 lines, $size2KB KB" -ForegroundColor Cyan
    Write-Host ""
    
    if ($content1 -eq $content2) {
        Write-Host "✓ SUCCESS: Both outputs are identical!" -ForegroundColor Green
        Write-Host "The gitsqlite conversion is consistent and reliable." -ForegroundColor Green
        $roundTripSuccess = $true
    } else {
        Write-Host "✗ FAILURE: Outputs differ!" -ForegroundColor Red
        Write-Host "This indicates a problem with the conversion process." -ForegroundColor Red
        $roundTripSuccess = $false
        
        # Show differences
        Write-Host ""
        Write-Host "Differences found:" -ForegroundColor Yellow
        Compare-Object -ReferenceObject ($content1 -split "`n") -DifferenceObject ($content2 -split "`n") | 
            ForEach-Object {
                $indicator = if ($_.SideIndicator -eq "<=") { "Test 1" } else { "Test 2" }
                Write-Host "$indicator`: $($_.InputObject)" -ForegroundColor $(if ($_.SideIndicator -eq "<=") { "Cyan" } else { "Yellow" })
            }
    }
    
    # Compare with original Model.sql file
    Write-Host ""
    Write-Host "Comparing with original Model.sql..." -ForegroundColor Magenta
    Write-Host "====================================" -ForegroundColor Magenta
    
    $originalContent = Get-Content $modelSqlFile -Raw
    $originalLines = ($originalContent -split "`n").Count
    $originalSizeKB = [math]::Round(($originalContent.Length) / 1024, 2)
    
    Write-Host "Original Model.sql: $originalLines lines, $originalSizeKB KB" -ForegroundColor Cyan
    
    if ($content1 -eq $originalContent) {
        Write-Host "✓ PERFECT: Generated SQL is identical to original Model.sql!" -ForegroundColor Green
        Write-Host "The round-trip conversion preserves data perfectly." -ForegroundColor Green
        $originalMatchSuccess = $true
    } else {
        Write-Host "✗ ERROR: Generated SQL differs from original Model.sql!" -ForegroundColor Red
        Write-Host "This indicates the conversion process is not preserving the original format." -ForegroundColor Red
        $originalMatchSuccess = $false
        
        # Show some statistics about the differences
        $diff = Compare-Object -ReferenceObject ($originalContent -split "`n") -DifferenceObject ($content1 -split "`n")
        if ($diff) {
            $addedLines = ($diff | Where-Object { $_.SideIndicator -eq "=>" }).Count
            $removedLines = ($diff | Where-Object { $_.SideIndicator -eq "<=" }).Count
            Write-Host "Differences: $removedLines lines from original, $addedLines lines in output" -ForegroundColor Red
            
            # Show first few differences for analysis
            Write-Host ""
            Write-Host "First 5 differences (for analysis):" -ForegroundColor Yellow
            $diff | Select-Object -First 5 | ForEach-Object {
                $source = if ($_.SideIndicator -eq "<=") { "Original" } else { "Generated" }
                $color = if ($_.SideIndicator -eq "<=") { "Cyan" } else { "Yellow" }
                Write-Host "$source`: $($_.InputObject)" -ForegroundColor $color
            }
        }
    }
    
    # Create testoutput folder and copy SQL files for analysis
    Write-Host ""
    Write-Host "Copying SQL files to testoutput folder..." -ForegroundColor Magenta
    Write-Host "=========================================" -ForegroundColor Magenta
    
    $testOutputDir = "testoutput"
    if (-not (Test-Path $testOutputDir)) {
        New-Item -ItemType Directory -Path $testOutputDir -Force | Out-Null
        Write-Host "Created testoutput directory" -ForegroundColor Green
    }
    
    # Copy original Model.sql
    $originalCopy = "$testOutputDir\01_original_model.sql"
    Copy-Item $modelSqlFile $originalCopy -Force
    Write-Host "✓ Copied original Model.sql to: $originalCopy" -ForegroundColor Green
    
    # Copy both generated outputs
    $output1Copy = "$testOutputDir\02_generated_test1.sql"
    $output2Copy = "$testOutputDir\03_generated_test2.sql"
    Copy-Item $output1 $output1Copy -Force
    Copy-Item $output2 $output2Copy -Force
    Write-Host "✓ Copied Test 1 output to: $output1Copy" -ForegroundColor Green
    Write-Host "✓ Copied Test 2 output to: $output2Copy" -ForegroundColor Green
    
    # Create a summary file
    $summaryFile = "$testOutputDir\00_test_summary.txt"
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $testResult = if ($roundTripSuccess -and $originalMatchSuccess) { "✓ PASSED" } else { "✗ FAILED" }
    
    # Build status section
    if ($roundTripSuccess -and $originalMatchSuccess) {
        $statusSection = @"
Test Status:
============
SUCCESS: The gitsqlite tool is working perfectly.
- Round-trip conversions are consistent
- Generated SQL matches the original format
- External file test: $(if ($externalFileSuccess) { "✓ PASSED" } else { "⚠ DIFFERENCES FOUND" })
"@
    } else {
        $statusLines = @("Test Status:", "============", "FAILURE: The gitsqlite tool has problems.")
        if (-not $roundTripSuccess) {
            $statusLines += "- Round-trip conversions are NOT consistent"
        }
        if (-not $originalMatchSuccess) {
            $statusLines += "- Generated SQL does NOT match original format"
        }
        $statusLines += "- External file test: $(if ($externalFileSuccess) { "✓ PASSED" } else { "⚠ DIFFERENCES FOUND" })"
        $statusSection = $statusLines -join "`n"
    }
    
    # Build final notes section
    if (-not ($roundTripSuccess -and $originalMatchSuccess)) {
        $finalNotes = "`n`nIMPORTANT: This test failed - investigate the issues before using in production!"
    } else {
        $finalNotes = ""
    }
    
    $summary = @"
GitSQLite Round-trip Test Summary
Generated: $timestamp

Test Results:
=============
Round-trip Consistency: $(if ($roundTripSuccess) { "✓ PASSED" } else { "✗ FAILED" }) - Both complete cycles $(if ($roundTripSuccess) { "produced identical results" } else { "produced DIFFERENT results" })
Original Match Test: $(if ($originalMatchSuccess) { "✓ PASSED" } else { "✗ FAILED" }) - Generated SQL $(if ($originalMatchSuccess) { "matches original Model.sql" } else { "differs from original Model.sql" })
External File Test: $(if ($externalFileSuccess) { "✓ PASSED" } else { "⚠ DIFFERENCES" }) - External GitHub SQL file $(if ($externalFileSuccess) { "processes identically" } else { "shows format differences" })
Overall Result: $testResult

File Information:
================
Original Model.sql:    $originalLines lines, $originalSizeKB KB
Generated Test 1:      $lines1 lines, $size1KB KB  
Generated Test 2:      $lines2 lines, $size2KB KB

$statusSection

Differences from Original:
=========================
- $removedLines lines removed from original
- $addedLines lines added in generated output
$(if (-not $originalMatchSuccess) { "- These differences indicate format preservation issues" } else { "- No format differences detected" })

Files in this directory:
=======================
00_test_summary.txt       - This summary file
01_original_model.sql     - Original Model.sql file
02_generated_test1.sql    - First complete round-trip output (SQL → smudge → clean → SQL)
03_generated_test2.sql    - Second complete round-trip output (SQL → smudge → clean → SQL)
04_external_original_*    - Original downloaded external SQL file from GitHub
05_external_cleaned_*     - Cleaned output from external SQL file round-trip

Notes:
======
For the tool to be production-ready, the core tests must pass:
1. Round-trip consistency (Test 1 vs Test 2) - CRITICAL
2. Original format preservation (Generated vs Original) - CRITICAL
3. External file processing - INFORMATIONAL (differences may be expected)

The external file test downloads Model.qeax from:
https://github.com/danielsiegl/gitsqliteqeax/blob/main/Model.qeax

External file differences are often due to:
- sqlite_sequence entries being filtered out
- Line ending normalization
- SQLite format standardization$finalNotes
"@
    
    Set-Content -Path $summaryFile -Value $summary -Encoding UTF8
    Write-Host "✓ Created test summary: $summaryFile" -ForegroundColor Green
    
    Write-Host ""
    Write-Host "All SQL files preserved in testoutput folder for analysis!" -ForegroundColor Green
    
    # Final result and exit code
    Write-Host ""
    if ($roundTripSuccess -and $originalMatchSuccess -and $externalFileSuccess) {
        Write-Host "All tests completed successfully!" -ForegroundColor Green
        $exitCode = 0
    } else {
        if (-not $roundTripSuccess) {
            Write-Host "✗ ERROR: Round-trip test FAILED - outputs are not identical!" -ForegroundColor Red
            Write-Host "This indicates a critical problem with the gitsqlite tool." -ForegroundColor Red
        }
        if (-not $originalMatchSuccess) {
            Write-Host "✗ ERROR: Generated SQL does not match original Model.sql!" -ForegroundColor Red
            Write-Host "The round-trip conversion is not preserving the original format." -ForegroundColor Red
        }
        if (-not $externalFileSuccess) {
            Write-Host "⚠ WARNING: External file test showed differences!" -ForegroundColor Yellow
            Write-Host "This may be expected due to sqlite_sequence filtering or format differences." -ForegroundColor Yellow
        }
        $exitCode = if ($roundTripSuccess -and $originalMatchSuccess) { 0 } else { 1 }
    }
    
} catch {
    Write-Host "Error during reliability test: $_" -ForegroundColor Red
    $exitCode = 2
} finally {
    # Clean up output files (but keep testoutput folder)
    Write-Host ""
    Write-Host "Cleaning up temporary files..." -ForegroundColor Green
    @("output1.sql", "output2.sql", "sample1.db", "sample2.db") | ForEach-Object {
        if (Test-Path $_) {
            Remove-Item $_ -Force
            Write-Host "Removed temporary file: $_" -ForegroundColor Gray
        }
    }
    Write-Host "Note: SQL files preserved in testoutput folder" -ForegroundColor Yellow
}

# Exit with appropriate code
if ($exitCode -ne 0) {
    Write-Host ""
    Write-Host "==========================================" -ForegroundColor Red
    Write-Host "             TEST FAILED                  " -ForegroundColor Red -BackgroundColor Black
    Write-Host "==========================================" -ForegroundColor Red
    Write-Host ""
    if ($exitCode -eq 1) {
        Write-Host "CRITICAL ERROR: The gitsqlite tool has failed validation!" -ForegroundColor Red
        if (-not $roundTripSuccess) {
            Write-Host "- Round-trip outputs are NOT identical!" -ForegroundColor Red
        }
        if (-not $originalMatchSuccess) {
            Write-Host "- Generated SQL does NOT match original Model.sql!" -ForegroundColor Red
        }
        Write-Host "This tool cannot be trusted for Git version control." -ForegroundColor Red
        Write-Host ""
        Write-Host "Action Required:" -ForegroundColor Yellow
        Write-Host "1. Check the testoutput folder for detailed comparison" -ForegroundColor Yellow
        Write-Host "2. Compare 02_generated_test1.sql with 03_generated_test2.sql" -ForegroundColor Yellow
        Write-Host "3. Compare generated SQL with 01_original_model.sql" -ForegroundColor Yellow
        Write-Host "4. Fix the gitsqlite tool before using it in production" -ForegroundColor Yellow
    } elseif ($exitCode -eq 2) {
        Write-Host "SCRIPT ERROR: Test execution failed!" -ForegroundColor Red
        Write-Host "Check the error messages above for details." -ForegroundColor Red
    }
    Write-Host ""
    Write-Host "Exiting with error code $exitCode" -ForegroundColor Red
    Write-Host "==========================================" -ForegroundColor Red
}
exit $exitCode

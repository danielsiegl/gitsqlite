#!/usr/bin/env pwsh
# Script to evaluate round-trip test results for gitsqlite smoketesting
# Compares two SQL files to ensure they are identical (same size and content)

param(
    [Parameter(Mandatory=$false)]
    [string]$File1 = "smoketest_output1.sql",
    
    [Parameter(Mandatory=$false)]
    [string]$File2 = "smoketest_output2.sql",
    
    [Parameter(Mandatory=$false)]
    [switch]$Cleanup = $false,
    
    [Parameter(Mandatory=$false)]
    [string[]]$CleanupFiles = @("smoketest.db", "smoketest_output1.sql", "smoketest_output2.db", "smoketest_output2.sql")
)

Write-Host "Step 4: Comparing SQL outputs"

# Check if files exist
if (-not (Test-Path $File1) -or -not (Test-Path $File2)) {
    Write-Error "FAILED: One or both output files missing"
    Write-Host "  File1: $File1 - $(if (Test-Path $File1) { "EXISTS" } else { "MISSING" })"
    Write-Host "  File2: $File2 - $(if (Test-Path $File2) { "EXISTS" } else { "MISSING" })"
    exit 1
}

# Get file sizes
$size1 = (Get-Item $File1).Length
$size2 = (Get-Item $File2).Length

Write-Host "File sizes:"
Write-Host "  $File1`: $size1 bytes"
Write-Host "  $File2`: $size2 bytes"

# Check if files are empty
if ($size1 -eq 0 -or $size2 -eq 0) {
    Write-Error "FAILED: One or both output files are empty (0 bytes)"
    exit 1
}

# Check if file sizes differ
if ($size1 -ne $size2) {
    $sizeDiff = $size2 - $size1
    Write-Error "FAILED: File sizes differ by $sizeDiff bytes"
    exit 1
}

# Compare file contents
$file1Content = Get-Content $File1 -Raw
$file2Content = Get-Content $File2 -Raw

if ($file1Content -eq $file2Content) {
    Write-Host "SUCCESS: Round-trip test passed - files are identical (same size and content)" -ForegroundColor Green
} else {
    Write-Error "FAILED: Round-trip test failed - files same size but content differs"
    
    # Show first few differences for debugging
    Write-Host "Content comparison details:"
    $lines1 = Get-Content $File1
    $lines2 = Get-Content $File2
    
    $maxLines = [Math]::Min($lines1.Count, $lines2.Count)
    $diffCount = 0
    
    for ($i = 0; $i -lt $maxLines -and $diffCount -lt 10; $i++) {
        if ($lines1[$i] -ne $lines2[$i]) {
            $diffCount++
            Write-Host "  Line $($i+1): DIFFERS"
            Write-Host "    File1: $($lines1[$i])"
            Write-Host "    File2: $($lines2[$i])"
        }
    }
    
    if ($diffCount -eq 10) {
        Write-Host "  ... (showing only first 10 differences)"
    }
    
    exit 1
}

# Cleanup if requested
if ($Cleanup) {
    Write-Host "Cleaning up..."
    foreach ($file in $CleanupFiles) {
        if (Test-Path $file) {
            Remove-Item $file -Force
            Write-Host "  Removed: $file"
        }
    }
}

Write-Host "✅ Evaluation completed successfully"

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

# Compare file contents first
Write-Host "Comparing file contents..."
$file1Content = Get-Content $File1 -Raw
$file2Content = Get-Content $File2 -Raw

if ($file1Content -ne $file2Content) {
    Write-Error "FAILED: Round-trip test failed - file contents differ"
    
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

Write-Host "✅ Content comparison: Files are identical"

# Check for CRLF line endings
Write-Host "Checking for CRLF line endings:"
$file1Bytes = [System.IO.File]::ReadAllBytes($File1)
$file2Bytes = [System.IO.File]::ReadAllBytes($File2)

$file1HasCRLF = $false
$file2HasCRLF = $false

# Check for CRLF sequences (0x0D 0x0A)
for ($i = 0; $i -lt $file1Bytes.Length - 1; $i++) {
    if ($file1Bytes[$i] -eq 0x0D -and $file1Bytes[$i + 1] -eq 0x0A) {
        $file1HasCRLF = $true
        break
    }
}

for ($i = 0; $i -lt $file2Bytes.Length - 1; $i++) {
    if ($file2Bytes[$i] -eq 0x0D -and $file2Bytes[$i + 1] -eq 0x0A) {
        $file2HasCRLF = $true
        break
    }
}

Write-Host "  $File1`: $(if ($file1HasCRLF) { "CONTAINS CRLF" } else { "LF only" })"
Write-Host "  $File2`: $(if ($file2HasCRLF) { "CONTAINS CRLF" } else { "LF only" })"

if ($file1HasCRLF -or $file2HasCRLF) {
    Write-Error "FAILED: One or both output files contain CRLF line endings (should be LF only)"
    exit 1
}

Write-Host "✅ CRLF check: Both files use LF-only line endings"

# Check if file sizes differ
if ($size1 -ne $size2) {
    $sizeDiff = $size2 - $size1
    Write-Error "FAILED: File sizes differ by $sizeDiff bytes"
    exit 1
}

Write-Host "✅ File size check: Both files are $size1 bytes"

Write-Host "SUCCESS: Round-trip test passed - files are identical (content, size, and line endings)" -ForegroundColor Green

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

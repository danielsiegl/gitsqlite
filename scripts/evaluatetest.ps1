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

# Initialize test failure tracking
$testsFailed = @()

# Check if files exist
if (-not (Test-Path $File1) -or -not (Test-Path $File2)) {
    $testsFailed += "One or both output files missing"
    Write-Host "FAILED: One or both output files missing" -ForegroundColor Red
    Write-Host "  File1: $File1 - $(if (Test-Path $File1) { "EXISTS" } else { "MISSING" })"
    Write-Host "  File2: $File2 - $(if (Test-Path $File2) { "EXISTS" } else { "MISSING" })"
}

# Compare file contents first (only if both files exist)
if ((Test-Path $File1) -and (Test-Path $File2)) {
    Write-Host "Comparing file contents..."
    $file1Content = Get-Content $File1 -Raw
    $file2Content = Get-Content $File2 -Raw

    if ($file1Content -ne $file2Content) {
        $testsFailed += "Round-trip test failed - file contents differ"
        Write-Host "FAILED: Round-trip test failed - file contents differ" -ForegroundColor Red
        
        # Show file size information first
        $size1 = (Get-Item $File1).Length
        $size2 = (Get-Item $File2).Length
        Write-Host "File sizes: $File1 = $size1 bytes, $File2 = $size2 bytes"
        
        if ($size1 -ne $size2) {
            Write-Host "Size difference: $($size2 - $size1) bytes"
        }
        
        # Show first few differences for debugging
        Write-Host "Content comparison details:"
        $lines1 = Get-Content $File1
        $lines2 = Get-Content $File2
        
        $maxLines = [Math]::Max($lines1.Count, $lines2.Count)
        $diffCount = 0
        
        Write-Host "Line counts: File1 = $($lines1.Count), File2 = $($lines2.Count)"
        
        for ($i = 0; $i -lt $maxLines -and $diffCount -lt 10; $i++) {
            $line1 = if ($i -lt $lines1.Count) { $lines1[$i] } else { "<EOF>" }
            $line2 = if ($i -lt $lines2.Count) { $lines2[$i] } else { "<EOF>" }
            
            if ($line1 -ne $line2) {
                $diffCount++
                Write-Host "  Line $($i+1): DIFFERS"
                Write-Host "    File1: $line1"
                Write-Host "    File2: $line2"
            }
        }
        
        if ($diffCount -eq 10) {
            Write-Host "  ... (showing only first 10 differences)"
        }
    } else {
        Write-Host "✅ Content comparison: Files are identical"
    }
} else {
    Write-Host "⏭️ Skipping content comparison - one or both files missing"
}

# Check for CRLF line endings (only if both files exist)
if ((Test-Path $File1) -and (Test-Path $File2)) {
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
        $testsFailed += "One or both output files contain CRLF line endings (should be LF only)"
        Write-Host "FAILED: One or both output files contain CRLF line endings (should be LF only)" -ForegroundColor Red
    } else {
        Write-Host "✅ CRLF check: Both files use LF-only line endings"
    }
} else {
    Write-Host "⏭️ Skipping CRLF check - one or both files missing"
}

# Check file sizes (final validation - only if both files exist)
if ((Test-Path $File1) -and (Test-Path $File2)) {
    $size1 = (Get-Item $File1).Length
    $size2 = (Get-Item $File2).Length

    Write-Host "File sizes:"
    Write-Host "  $File1`: $size1 bytes"
    Write-Host "  $File2`: $size2 bytes"

    # Check if files are empty
    if ($size1 -eq 0 -or $size2 -eq 0) {
        $testsFailed += "One or both output files are empty (0 bytes)"
        Write-Host "FAILED: One or both output files are empty (0 bytes)" -ForegroundColor Red
    }

    # Check if file sizes differ
    if ($size1 -ne $size2) {
        $sizeDiff = $size2 - $size1
        $testsFailed += "File sizes differ by $sizeDiff bytes"
        Write-Host "FAILED: File sizes differ by $sizeDiff bytes" -ForegroundColor Red
    } else {
        Write-Host "✅ File size check: Both files are $size1 bytes"
    }
} else {
    Write-Host "⏭️ Skipping file size check - one or both files missing"
}

# Final result evaluation
if ($testsFailed.Count -eq 0) {
    Write-Host "SUCCESS: Round-trip test passed - files are identical (content, size, and line endings)" -ForegroundColor Green
} else {
    Write-Host "FAILURE SUMMARY:" -ForegroundColor Red
    foreach ($failure in $testsFailed) {
        Write-Host "  - $failure" -ForegroundColor Red
    }
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

Write-Host "✅ Evaluation completed $(if ($testsFailed.Count -eq 0) { "successfully" } else { "with $($testsFailed.Count) failure(s)" })"

# Exit with error code if any tests failed
if ($testsFailed.Count -gt 0) {
    exit 1
}

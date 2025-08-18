# gitsqlite Smoke Test - Simple Version
# Tests: SQL -> smudge -> DB -> clean -> SQL

Write-Host "gitsqlite Smoke Test" -ForegroundColor Green
Write-Host "===================" -ForegroundColor Green

# Find and change to git repository root
$currentDir = $PSScriptRoot
while ($currentDir -and -not (Test-Path (Join-Path $currentDir ".git"))) {
    $currentDir = Split-Path $currentDir -Parent
}

if (-not $currentDir) {
    Write-Host "Error: Could not find git repository root" -ForegroundColor Red
    exit 1
}

Set-Location $currentDir
Write-Host "Working directory: $(Get-Location)" -ForegroundColor Gray

# Check prerequisites
if (-not (Test-Path "gitsqlite.exe")) {
    Write-Host "Error: gitsqlite.exe not found. Run 'go build' first." -ForegroundColor Red
    exit 1
}

if (-not (Test-Path "testdata\Model.sql")) {
    Write-Host "Error: testdata\Model.sql not found." -ForegroundColor Red
    exit 1
}

$exitCode = 0

try {
    Write-Host "Step 1: SQL -> Database (smudge)..." -ForegroundColor Yellow
    
    # Use cmd for proper redirection
    $result = cmd /c ".\gitsqlite.exe smudge < testdata\Model.sql > smoketest.db 2>&1"
    
    if ($LASTEXITCODE -ne 0) {
        throw "Smudge operation failed with exit code $LASTEXITCODE. Output: $result"
    }
    
    if (-not (Test-Path "smoketest.db")) {
        throw "Database file was not created"
    }
    
    $dbSize = (Get-Item "smoketest.db").Length
    Write-Host "[OK] Database created: smoketest.db ($dbSize bytes)" -ForegroundColor Green

    Write-Host "Step 2: Database -> SQL (clean)..." -ForegroundColor Yellow
    
    # Use cmd for proper redirection
    $result2 = cmd /c ".\gitsqlite.exe clean < smoketest.db > smoketest_output.sql 2>&1"
    
    if ($LASTEXITCODE -ne 0) {
        throw "Clean operation failed with exit code $LASTEXITCODE. Output: $result2"
    }
    
    if (-not (Test-Path "smoketest_output.sql")) {
        throw "Output SQL file was not created"
    }
    
    $outputSize = (Get-Item "smoketest_output.sql").Length
    Write-Host "[OK] SQL generated: smoketest_output.sql ($outputSize bytes)" -ForegroundColor Green

    Write-Host "Step 3: Comparing files..." -ForegroundColor Yellow
    
    $originalBytes = [System.IO.File]::ReadAllBytes("testdata\Model.sql")
    $outputBytes = [System.IO.File]::ReadAllBytes("smoketest_output.sql")
    
    Write-Host "Original size: $($originalBytes.Length) bytes" -ForegroundColor Cyan
    Write-Host "Output size:   $($outputBytes.Length) bytes" -ForegroundColor Cyan
    
    if ($originalBytes.Length -eq $outputBytes.Length) {
        # Byte-by-byte comparison
        $identical = $true
        for ($i = 0; $i -lt $originalBytes.Length; $i++) {
            if ($originalBytes[$i] -ne $outputBytes[$i]) {
                $identical = $false
                Write-Host "[FAIL] Files differ at byte position $i" -ForegroundColor Red
                break
            }
        }
        
        if ($identical) {
            Write-Host "[SUCCESS] Files are binary identical!" -ForegroundColor Green
            $exitCode = 0
        } else {
            $exitCode = 1
        }
    } else {
        Write-Host "[ERROR] File sizes differ by $($outputBytes.Length - $originalBytes.Length) bytes" -ForegroundColor Yellow
        Write-Host "[ERROR] Round-trip preserves data but with formatting differences" -ForegroundColor Yellow
        $exitCode = 1  # This is acceptable for SQL formatting differences
    }

} catch {
    Write-Host "[ERROR] $($_.Exception.Message)" -ForegroundColor Red
    $exitCode = 2
} finally {
    # Cleanup - preserve the output SQL file for inspection
    Write-Host "Cleaning up..." -ForegroundColor Gray
    if (Test-Path "smoketest.db") { 
        Remove-Item "smoketest.db" -Force 
        Write-Host "Removed: smoketest.db" -ForegroundColor Gray
    }
    if (Test-Path "smoketest_output.sql") {
        Write-Host "Preserved: smoketest_output.sql (for inspection)" -ForegroundColor Gray
    }
}

Write-Host ""
if ($exitCode -eq 0) {
    Write-Host "SMOKE TEST PASSED" -ForegroundColor Green
} else {
    Write-Host "SMOKE TEST FAILED" -ForegroundColor Red
}

exit $exitCode

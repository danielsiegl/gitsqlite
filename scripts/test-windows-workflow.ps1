#!/usr/bin/env pwsh
# Local test script to replicate the Windows GitHub Actions workflow steps
# This helps test the exact same operations locally before pushing to CI

Write-Host "=== Windows Workflow Test Script ===" -ForegroundColor Green
Write-Host "Replicating the exact steps from GitHub Actions Windows workflow" -ForegroundColor Green
Write-Host ""

# Change to repository root
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

if (-not (Test-Path "smoketest.db")) {
    Write-Host "Creating test database first..." -ForegroundColor Yellow
    & "./scripts/createtestdatabase.ps1"
    if (-not (Test-Path "smoketest.db")) {
        Write-Host "Error: Failed to create smoketest.db" -ForegroundColor Red
        exit 1
    }
}

$exitCode = 0

try {
    Write-Host ""
    Write-Host "=== Step 1: Database -> SQL (clean) ===" -ForegroundColor Yellow
    Write-Host "Command: Get-Content smoketest.db -AsByteStream | .\gitsqlite.exe clean > smoketest_output1.sql"
    Write-Host "NOTE: Using explicit file writing to preserve line endings instead of PowerShell redirection"
    
    $cleanOutput1 = Get-Content smoketest.db -AsByteStream | .\gitsqlite.exe clean
    [System.IO.File]::WriteAllText("smoketest_output1.sql", $cleanOutput1, [System.Text.UTF8Encoding]::new($false))
    
    if ($LASTEXITCODE -ne 0) {
        throw "Step 1 failed with exit code $LASTEXITCODE"
    }
    
    if (-not (Test-Path "smoketest_output1.sql")) {
        throw "Step 1: Output file smoketest_output1.sql was not created"
    }
    
    $size1 = (Get-Item "smoketest_output1.sql").Length
    Write-Host "[OK] Step 1 completed: smoketest_output1.sql ($size1 bytes)" -ForegroundColor Green

    Write-Host ""
    Write-Host "=== Step 2: SQL -> Database (smudge) ===" -ForegroundColor Yellow
    Write-Host "Command: Get-Content smoketest_output1.sql | .\gitsqlite.exe smudge > smoketest_output2.db"
    Write-Host "NOTE: Using explicit file handling for binary database output"
    
    $sqlContent = [System.IO.File]::ReadAllText("smoketest_output1.sql", [System.Text.UTF8Encoding]::new($false))
    
    # Create a process to handle binary output properly
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = ".\gitsqlite.exe"
    $psi.Arguments = "smudge"
    $psi.UseShellExecute = $false
    $psi.RedirectStandardInput = $true
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardError = $true
    
    $proc = [System.Diagnostics.Process]::Start($psi)
    $proc.StandardInput.Write($sqlContent)
    $proc.StandardInput.Close()
    
    # Read binary output
    $outputStream = $proc.StandardOutput.BaseStream
    $buffer = New-Object byte[] 4096
    $ms = New-Object System.IO.MemoryStream
    while (($read = $outputStream.Read($buffer, 0, $buffer.Length)) -gt 0) {
        $ms.Write($buffer, 0, $read)
    }
    $proc.WaitForExit()
    
    if ($proc.ExitCode -ne 0) {
        throw "Step 2 failed with exit code $($proc.ExitCode)"
    }
    
    [System.IO.File]::WriteAllBytes("smoketest_output2.db", $ms.ToArray())
    $ms.Close()
    
    if ($LASTEXITCODE -ne 0) {
        throw "Step 2 failed with exit code $LASTEXITCODE"
    }
    
    if (-not (Test-Path "smoketest_output2.db")) {
        throw "Step 2: Output file smoketest_output2.db was not created"
    }
    
    $size2 = (Get-Item "smoketest_output2.db").Length
    Write-Host "[OK] Step 2 completed: smoketest_output2.db ($size2 bytes)" -ForegroundColor Green

    Write-Host ""
    Write-Host "=== Step 3: Database -> SQL (clean again) ===" -ForegroundColor Yellow
    Write-Host "Command: Get-Content smoketest_output2.db -AsByteStream | .\gitsqlite.exe clean > smoketest_output2.sql"
    Write-Host "NOTE: Using explicit file writing to preserve line endings instead of PowerShell redirection"
    
    $cleanOutput2 = Get-Content smoketest_output2.db -AsByteStream | .\gitsqlite.exe clean
    [System.IO.File]::WriteAllText("smoketest_output2.sql", $cleanOutput2, [System.Text.UTF8Encoding]::new($false))
    
    if ($LASTEXITCODE -ne 0) {
        throw "Step 3 failed with exit code $LASTEXITCODE"
    }
    
    if (-not (Test-Path "smoketest_output2.sql")) {
        throw "Step 3: Output file smoketest_output2.sql was not created"
    }
    
    $size3 = (Get-Item "smoketest_output2.sql").Length
    Write-Host "[OK] Step 3 completed: smoketest_output2.sql ($size3 bytes)" -ForegroundColor Green

    Write-Host ""
    Write-Host "=== Step 4: Evaluating test results ===" -ForegroundColor Yellow
    Write-Host "Running: .\scripts\evaluatetest.ps1"
    
    & ".\scripts\evaluatetest.ps1"
    $evalExitCode = $LASTEXITCODE
    
    if ($evalExitCode -eq 0) {
        Write-Host ""
        Write-Host "🎉 SUCCESS: All tests passed!" -ForegroundColor Green
        Write-Host "The workflow should work in GitHub Actions." -ForegroundColor Green
    } else {
        Write-Host ""
        Write-Host "❌ FAILURE: Tests failed (exit code: $evalExitCode)" -ForegroundColor Red
        Write-Host "Fix the issues before pushing to GitHub Actions." -ForegroundColor Red
        $exitCode = $evalExitCode
    }

} catch {
    Write-Host ""
    Write-Host "❌ ERROR: $($_.Exception.Message)" -ForegroundColor Red
    $exitCode = 1
}

Write-Host ""
Write-Host "=== Test Summary ===" -ForegroundColor Cyan
if (Test-Path "smoketest_output1.sql") {
    $size1 = (Get-Item "smoketest_output1.sql").Length
    Write-Host "smoketest_output1.sql: $size1 bytes"
} else {
    Write-Host "smoketest_output1.sql: NOT CREATED" -ForegroundColor Red
}

if (Test-Path "smoketest_output2.db") {
    $size2 = (Get-Item "smoketest_output2.db").Length
    Write-Host "smoketest_output2.db: $size2 bytes"
} else {
    Write-Host "smoketest_output2.db: NOT CREATED" -ForegroundColor Red
}

if (Test-Path "smoketest_output2.sql") {
    $size3 = (Get-Item "smoketest_output2.sql").Length
    Write-Host "smoketest_output2.sql: $size3 bytes"
} else {
    Write-Host "smoketest_output2.sql: NOT CREATED" -ForegroundColor Red
}

Write-Host ""
Write-Host "To clean up test files, run: Remove-Item smoketest_output*.sql, smoketest_output*.db" -ForegroundColor Gray

exit $exitCode

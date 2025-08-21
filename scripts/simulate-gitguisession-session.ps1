# Simulates the gitsqlite call pattern observed during a GitGui session
# Based on logs from 2025-08-21T08:22:42 to 2025-08-21T08:23:19

param(
    [string]$TestDatabase = "testdata_model.db",
    [string]$TestSql = "testdata\Model.sql",
    [int]$Iterations = 1,
    [switch]$Verbose
)

Write-Host "GitGui Session Simulation Script" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Green
Write-Host "This script simulates the exact timing pattern observed during a GitGui session"
Write-Host "where some processes had to be killed manually."
Write-Host "Using larger test files: Database=$(Get-Item $TestDatabase | ForEach-Object Length) bytes, SQL=$(Get-Item $TestSql | ForEach-Object Length) bytes"
Write-Host ""

# Verify test files exist
if (-not (Test-Path $TestDatabase)) {
    Write-Error "Test database '$TestDatabase' not found. Please ensure it exists."
    exit 1
}

if (-not (Test-Path "gitsqlite.exe")) {
    Write-Error "gitsqlite.exe not found. Please build it first with: go build -o gitsqlite.exe ."
    exit 1
}

function Invoke-GitSqliteWithTimeout {
    param(
        [string]$Operation,
        [string]$InputFile,
        [string]$OutputFile,
        [int]$TimeoutMs = 5000,
        [string]$Label
    )
    
    Write-Host "[$(Get-Date -Format 'HH:mm:ss.fff')] Starting: $Label ($Operation)" -ForegroundColor Cyan
    
    try {
        # Use simpler approach with direct piping
        if ($Operation -eq "clean") {
            $result = & { Get-Content $InputFile -AsByteStream | .\gitsqlite.exe -log $Operation } 2>&1
        } else {
            $result = & { Get-Content $InputFile | .\gitsqlite.exe -log $Operation } 2>&1
        }
        
        # Save output to file
        if ($result -and $result.Count -gt 0) {
            if ($Operation -eq "clean") {
                [System.IO.File]::WriteAllText($OutputFile, ($result -join "`n"), [System.Text.UTF8Encoding]::new($false))
            } else {
                [System.IO.File]::WriteAllBytes($OutputFile, [System.Text.Encoding]::UTF8.GetBytes(($result -join "`n")))
            }
        }
        
        Write-Host "[$(Get-Date -Format 'HH:mm:ss.fff')] ✓ SUCCESS: $Label" -ForegroundColor Green
        return $true
    } catch {
        Write-Host "[$(Get-Date -Format 'HH:mm:ss.fff')] ✗ FAILED: $Label ($_)" -ForegroundColor Red
        return $false
    }
}

# Pattern observed in GitGui session logs:
# T+0ms: smudge - KILLED (after ~157ms)
# T+641ms: smudge - SUCCESS
# T+1214ms: clean - SUCCESS  
# T+2054ms: clean - KILLED (after ~840ms)
# T+35280ms: clean - SUCCESS (33 second gap - likely user intervention)
# T+35746ms: clean - SUCCESS
# T+36326ms: clean - SUCCESS

$sessionPattern = @(
    @{ Delay = 0; Op = "smudge"; Input = $TestSql; Output = "temp_smudge1.db"; Timeout = 200; Label = "Smudge #1 (expect timeout)" }
    @{ Delay = 641; Op = "smudge"; Input = $TestSql; Output = "temp_smudge2.db"; Timeout = 5000; Label = "Smudge #2 (should succeed)" }
    @{ Delay = 573; Op = "clean"; Input = $TestDatabase; Output = "temp_clean1.sql"; Timeout = 5000; Label = "Clean #1 (should succeed)" }
    @{ Delay = 840; Op = "clean"; Input = $TestDatabase; Output = "temp_clean2.sql"; Timeout = 900; Label = "Clean #2 (expect timeout)" }
    @{ Delay = 1000; Op = "clean"; Input = $TestDatabase; Output = "temp_clean3.sql"; Timeout = 5000; Label = "Clean #3 (after gap)" }
    @{ Delay = 466; Op = "clean"; Input = $TestDatabase; Output = "temp_clean4.sql"; Timeout = 5000; Label = "Clean #4 (rapid fire)" }
    @{ Delay = 580; Op = "clean"; Input = $TestDatabase; Output = "temp_clean5.sql"; Timeout = 5000; Label = "Clean #5 (rapid fire)" }
)

for ($iter = 1; $iter -le $Iterations; $iter++) {
    Write-Host "`n=== Iteration $iter of $Iterations ===" -ForegroundColor Magenta
    $sessionStart = Get-Date
    
    $successCount = 0
    $failureCount = 0
    
    foreach ($step in $sessionPattern) {
        Start-Sleep -Milliseconds $step.Delay
        
        $result = Invoke-GitSqliteWithTimeout -Operation $step.Op -InputFile $step.Input -OutputFile $step.Output -TimeoutMs $step.Timeout -Label $step.Label
        
        if ($result) {
            $successCount++
        } else {
            $failureCount++
        }
        
        if ($Verbose) {
            $elapsed = (Get-Date) - $sessionStart
            Write-Host "  Elapsed: $($elapsed.TotalMilliseconds.ToString('F0'))ms" -ForegroundColor Gray
        }
    }
    
    $totalTime = (Get-Date) - $sessionStart
    Write-Host "`nIteration $iter Summary:" -ForegroundColor White
    Write-Host "  Total time: $($totalTime.TotalSeconds.ToString('F1'))s" -ForegroundColor White
    Write-Host "  Successful operations: $successCount" -ForegroundColor Green
    Write-Host "  Failed/timed out operations: $failureCount" -ForegroundColor Red
    
    if ($iter -lt $Iterations) {
        Write-Host "`nWaiting 2 seconds before next iteration..." -ForegroundColor Gray
        Start-Sleep -Seconds 2
    }
}

# Cleanup temp files
Write-Host "`nCleaning up temporary files..." -ForegroundColor Gray
Get-ChildItem "temp_*.db", "temp_*.sql" -ErrorAction SilentlyContinue | Remove-Item -Force

Write-Host "`nSimulation complete!" -ForegroundColor Green
Write-Host "Check the logs directory for detailed gitsqlite operation logs." -ForegroundColor Gray

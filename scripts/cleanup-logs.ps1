# cleanup-logs.ps1
# Deletes all gitsqlite log files where the last line signals success

Write-Host "Cleaning up successful gitsqlite log files..." -ForegroundColor Green

$deleted = 0
$kept = 0

# Check log files in current directory
Get-ChildItem -Path "gitsqlite_*.log" -ErrorAction SilentlyContinue | ForEach-Object {
    $lastLine = Get-Content $_.FullName | Select-Object -Last 1 -ErrorAction SilentlyContinue
    if ($lastLine -and $lastLine -like '*"gitsqlite finished successfully"*') {
        Remove-Item $_.FullName -Force -ErrorAction SilentlyContinue
        Write-Host "Deleted successful log: $($_.Name)" -ForegroundColor Gray
        $deleted++
    } else {
        Write-Host "Kept log with errors: $($_.Name)" -ForegroundColor Yellow
        $kept++
    }
}

# Check log files in logs subdirectory if it exists
if (Test-Path "logs") {
    Get-ChildItem -Path "logs\*.log" -ErrorAction SilentlyContinue | ForEach-Object {
        $lastLine = Get-Content $_.FullName | Select-Object -Last 1 -ErrorAction SilentlyContinue
        if ($lastLine -and $lastLine -like '*"gitsqlite finished successfully"*') {
            Remove-Item $_.FullName -Force -ErrorAction SilentlyContinue
            Write-Host "Deleted successful log: logs\$($_.Name)" -ForegroundColor Gray
            $deleted++
        } else {
            Write-Host "Kept log with errors: logs\$($_.Name)" -ForegroundColor Yellow
            $kept++
        }
    }
}

Write-Host "`nSummary:" -ForegroundColor Green
Write-Host "  Successful logs deleted: $deleted" -ForegroundColor Green
Write-Host "  Logs with errors kept: $kept" -ForegroundColor Yellow

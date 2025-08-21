# analyze-session-logs.ps1
# Analyzes gitsqlite log files and outputs timing patterns
# Useful for understanding SmartGit session behavior and creating simulation scripts

param(
    [string]$OutputFormat = "timing" # "timing", "detailed", or "csv"
)

Write-Host "GitSQLite Session Log Analyzer" -ForegroundColor Green
Write-Host "===============================" -ForegroundColor Green

function Get-LogInfo {
    param([string]$LogPath)
    
    $content = Get-Content $LogPath -ErrorAction SilentlyContinue
    if (-not $content) {
        return $null
    }
    
    $firstLine = $content | Select-Object -First 1
    $lastLine = $content | Select-Object -Last 1
    
    # Extract timestamp from first line
    $timestamp = $null
    if ($firstLine -match '"time":"([^"]+)"') {
        try {
            $timestamp = [datetime]::Parse($matches[1])
        } catch {
            $timestamp = $null
        }
    }
    
    # Extract operation type
    $operation = "unknown"
    if ($firstLine -match '"args":\["[^"]*","[^"]*","([^"]+)"\]') {
        $operation = $matches[1]
    }
    
    # Extract PID
    $processId = "unknown"
    if ($firstLine -match '"pid":(\d+)') {
        $processId = $matches[1]
    }
    
    # Determine completion status
    $status = "INCOMPLETE"
    if ($lastLine -match 'gitsqlite finished successfully') {
        $status = "SUCCESS"
    } elseif ($lastLine -match '"level":"ERROR"') {
        $status = "ERROR"
    } elseif ($content.Count -lt 5) {
        $status = "KILLED"
    } else {
        # Check specific patterns to determine what happened
        $hasRestore = ($content | Where-Object { $_ -match "SQLite restore completed" }).Count -gt 0
        $hasDumpStart = ($content | Where-Object { $_ -match "Starting SQLite .dump command" }).Count -gt 0
        $hasDumpComplete = ($content | Where-Object { $_ -match "SQLite dump completed|Clean operation completed" }).Count -gt 0
        $hasFinish = ($content | Where-Object { $_ -match "gitsqlite finished successfully" }).Count -gt 0
        
        if ($hasFinish) {
            $status = "SUCCESS"
        } elseif ($hasDumpStart -and -not $hasDumpComplete) {
            $status = "KILLED_DURING_DUMP"
        } elseif ($hasRestore -and -not $hasFinish) {
            $status = "KILLED_DURING_RESTORE"
        } else {
            $status = "INCOMPLETE"
        }
    }
    
    return @{
        Path = $LogPath
        Timestamp = $timestamp
        Operation = $operation
        PID = $processId
        Status = $status
        LineCount = $content.Count
    }
}

$allLogs = @()

# Collect logs from current directory
Write-Host "Analyzing logs in current directory..." -ForegroundColor Cyan
Get-ChildItem "gitsqlite_*.log" -ErrorAction SilentlyContinue | ForEach-Object {
    $logInfo = Get-LogInfo $_.FullName
    if ($logInfo -and $logInfo.Timestamp) {
        $allLogs += $logInfo
    }
}

# Collect logs from logs subdirectory if it exists
if (Test-Path "logs") {
    Write-Host "Analyzing logs in 'logs' subdirectory..." -ForegroundColor Cyan
    Get-ChildItem "logs\gitsqlite_*.log" -ErrorAction SilentlyContinue | ForEach-Object {
        $logInfo = Get-LogInfo $_.FullName
        if ($logInfo -and $logInfo.Timestamp) {
            $allLogs += $logInfo
        }
    }
}

if ($allLogs.Count -eq 0) {
    Write-Host "No gitsqlite log files found." -ForegroundColor Yellow
    exit 0
}

# Sort logs by timestamp
$sortedLogs = $allLogs | Sort-Object Timestamp

Write-Host "Found $($sortedLogs.Count) log files" -ForegroundColor White
Write-Host ""

# Find session boundaries (gaps longer than 5 minutes indicate separate sessions)
$sessions = @()
$currentSession = @()
$sessionThresholdMinutes = 5

for ($i = 0; $i -lt $sortedLogs.Count; $i++) {
    $log = $sortedLogs[$i]
    
    if ($currentSession.Count -eq 0) {
        # Start new session
        $currentSession += $log
    } else {
        $lastLog = $currentSession[-1]
        $timeDiff = ($log.Timestamp - $lastLog.Timestamp).TotalMinutes
        
        if ($timeDiff -gt $sessionThresholdMinutes) {
            # End current session and start new one
            if ($currentSession.Count -gt 0) {
                $sessions += ,@($currentSession)
            }
            $currentSession = @($log)
        } else {
            # Continue current session
            $currentSession += $log
        }
    }
}

# Add the last session
if ($currentSession.Count -gt 0) {
    $sessions += ,@($currentSession)
}

Write-Host "Detected $($sessions.Count) session(s):" -ForegroundColor White

for ($sessionIndex = 0; $sessionIndex -lt $sessions.Count; $sessionIndex++) {
    $session = $sessions[$sessionIndex]
    $sessionStart = $session[0].Timestamp
    $sessionEnd = $session[-1].Timestamp
    $duration = $sessionEnd - $sessionStart
    
    Write-Host ""
    Write-Host "=== Session $($sessionIndex + 1) ===" -ForegroundColor Magenta
    Write-Host "Start: $($sessionStart.ToString('yyyy-MM-dd HH:mm:ss.fff'))" -ForegroundColor Gray
    Write-Host "End:   $($sessionEnd.ToString('yyyy-MM-dd HH:mm:ss.fff'))" -ForegroundColor Gray
    Write-Host "Duration: $($duration.TotalSeconds.ToString('F1'))s" -ForegroundColor Gray
    Write-Host ""
    
    if ($OutputFormat -eq "timing") {
        # Output timing format with PID
        $baseTime = $session[0].Timestamp
        foreach ($log in $session) {
            $offset = ($log.Timestamp - $baseTime).TotalMilliseconds
            Write-Host "T+$([int]$offset)ms: $($log.Operation) - $($log.Status) (PID:$($log.PID))"
        }
    } elseif ($OutputFormat -eq "detailed") {
        # Output detailed format
        foreach ($log in $session) {
            $offset = ($log.Timestamp - $sessionStart).TotalMilliseconds
            Write-Host "$($log.Timestamp.ToString('HH:mm:ss.fff')) (T+$([int]$offset)ms): $($log.Operation) - $($log.Status) - PID:$($log.PID) - Lines:$($log.LineCount)"
        }
    } elseif ($OutputFormat -eq "csv") {
        # Output CSV format
        if ($sessionIndex -eq 0) {
            Write-Host "Session,Timestamp,OffsetMs,Operation,Status,PID,LineCount,LogFile"
        }
        foreach ($log in $session) {
            $offset = ($log.Timestamp - $sessionStart).TotalMilliseconds
            $fileName = Split-Path $log.Path -Leaf
            Write-Host "$($sessionIndex + 1),$($log.Timestamp.ToString('yyyy-MM-dd HH:mm:ss.fff')),$([int]$offset),$($log.Operation),$($log.Status),$($log.PID),$($log.LineCount),$fileName"
        }
    }
}

Write-Host ""
Write-Host "Analysis complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Usage examples:" -ForegroundColor Yellow
Write-Host "  .\scripts\analyze-session-logs.ps1                          # Basic timing output with PIDs"
Write-Host "  .\scripts\analyze-session-logs.ps1 -OutputFormat detailed   # Detailed output"
Write-Host "  .\scripts\analyze-session-logs.ps1 -OutputFormat csv        # CSV output"

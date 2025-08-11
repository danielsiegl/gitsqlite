# Script to install SQLite via winget and add it to the PATH
# Run as Administrator for system-wide PATH changes, or as regular user for user-only PATH changes

Write-Host "Installing SQLite via winget..." -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

# Install SQLite using winget
try {
    winget install -e --id SQLite.SQLite
    if ($LASTEXITCODE -ne 0) {
        Write-Host ""
        Write-Host "Note: winget install returned error code $LASTEXITCODE" -ForegroundColor Yellow
        Write-Host "This could mean SQLite is already installed or there was an installation issue" -ForegroundColor Yellow
        Write-Host "Checking if SQLite is already available..." -ForegroundColor Yellow
    } else {
        Write-Host ""
        Write-Host "SQLite installed successfully!" -ForegroundColor Green
    }
} catch {
    Write-Host "Error running winget: $_" -ForegroundColor Red
}

Write-Host ""
Write-Host "Checking SQLite installation..." -ForegroundColor Green
Write-Host "==============================" -ForegroundColor Green

# Set the SQLite installation path
$sqlitePath = "$env:LOCALAPPDATA\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe"
$sqliteExe = "$sqlitePath\sqlite3.exe"

# Check if SQLite executable exists
if (-not (Test-Path $sqliteExe)) {
    Write-Host ""
    Write-Host "SQLite executable not found at expected winget location:" -ForegroundColor Yellow
    Write-Host $sqliteExe -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Checking if sqlite3 is available in PATH..." -ForegroundColor Yellow
    
    # Try to run sqlite3 to see if it's available elsewhere
    try {
        $null = Get-Command sqlite3 -ErrorAction Stop
        $version = & sqlite3 -version 2>$null
        Write-Host ""
        Write-Host "Good! SQLite is already available in your PATH." -ForegroundColor Green
        Write-Host "Version: $version" -ForegroundColor Cyan
        Write-Host "No additional configuration needed." -ForegroundColor Green
        Write-Host ""
        Write-Host "To test, run: sqlite3 --version" -ForegroundColor Cyan
        Write-Host ""
        Read-Host "Press Enter to exit"
        exit 0
    } catch {
        Write-Host ""
        Write-Host "Error: SQLite not found in winget location or PATH" -ForegroundColor Red
        Write-Host "Please check the installation manually or install SQLite via:" -ForegroundColor Red
        Write-Host "  winget install -e --id SQLite.SQLite" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
} else {
    Write-Host "SQLite found at: $sqliteExe" -ForegroundColor Green
}

Write-Host ""
Write-Host "Adding SQLite to PATH..." -ForegroundColor Green
Write-Host "========================" -ForegroundColor Green

# Get current user PATH
try {
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")
    if (-not $currentPath) {
        $currentPath = ""
    }
} catch {
    $currentPath = ""
}

# Check if SQLite path is already in PATH
if ($currentPath -like "*$sqlitePath*") {
    Write-Host "SQLite path is already in the user PATH" -ForegroundColor Yellow
} else {
    Write-Host "Adding SQLite to user PATH..." -ForegroundColor Yellow
    try {
        if ($currentPath) {
            $newPath = "$currentPath;$sqlitePath"
        } else {
            $newPath = $sqlitePath
        }
        
        [Environment]::SetEnvironmentVariable("PATH", $newPath, "User")
        
        # Also update the current session's PATH
        $env:PATH += ";$sqlitePath"
        
        Write-Host "SQLite path added to user PATH successfully" -ForegroundColor Green
        Write-Host "Current session PATH updated as well" -ForegroundColor Green
    } catch {
        Write-Host "Error: Failed to add SQLite to user PATH: $_" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 3
    }
}

Write-Host ""
Write-Host "Installation complete!" -ForegroundColor Green
Write-Host "======================" -ForegroundColor Green
Write-Host "SQLite has been installed and added to your PATH." -ForegroundColor Green
Write-Host "You may need to restart your command prompt or VS Code to use sqlite3 directly." -ForegroundColor Yellow
Write-Host ""
Write-Host "For VS Code users:" -ForegroundColor Cyan
Write-Host "------------------" -ForegroundColor Cyan
Write-Host "VS Code terminal may not immediately pick up PATH changes." -ForegroundColor Yellow
Write-Host "Try these steps in order:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. First, test in this current terminal window:" -ForegroundColor White
Write-Host "   sqlite3 --version" -ForegroundColor Gray
Write-Host ""
Write-Host "2. If that works, restart VS Code completely to refresh the terminal environment" -ForegroundColor White
Write-Host ""
Write-Host "3. If VS Code terminal still doesn't work, try:" -ForegroundColor White
Write-Host "   - Close all VS Code windows" -ForegroundColor Gray
Write-Host "   - Open a new PowerShell and verify: sqlite3 --version" -ForegroundColor Gray
Write-Host "   - Then reopen VS Code" -ForegroundColor Gray
Write-Host ""
Write-Host "4. Alternative: Use the full path in your gitsqlite commands:" -ForegroundColor White
Write-Host "   gitsqlite clean `"$sqliteExe`" < database.db" -ForegroundColor Gray
Write-Host ""

# Test SQLite in current session
Write-Host "Testing SQLite in current session..." -ForegroundColor Green
try {
    $version = & sqlite3 -version 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ SQLite is working in this terminal session" -ForegroundColor Green
        Write-Host "Version: $version" -ForegroundColor Cyan
    } else {
        throw "SQLite test failed"
    }
} catch {
    Write-Host "✗ SQLite test failed in current session" -ForegroundColor Red
    Write-Host "You may need to restart your terminal or VS Code" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "You can now use gitsqlite without specifying the SQLite path:" -ForegroundColor Green
Write-Host "  gitsqlite clean < database.db" -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to exit"

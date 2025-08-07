# Sample script demonstrating the gitsqlite clean operation
# Prerequisites: sqlite3 must be installed via winget
# Install with: install_sqlite.bat or winget install -e --id SQLite.SQLite and make sure sqlite3 is in PATH

Write-Host "Sample gitsqlite clean operation demo" -ForegroundColor Green
Write-Host "====================================" -ForegroundColor Green

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

Write-Host "Creating sample SQLite database..." -ForegroundColor Green
$createDbCommand = 'CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT); INSERT INTO users (name, email) VALUES (''John Doe'', ''john@example.com''), (''Jane Smith'', ''jane@example.com'');'

try {
    & $sqliteExe "sample.db" $createDbCommand
    if ($LASTEXITCODE -ne 0) {
        throw "SQLite command failed with exit code $LASTEXITCODE"
    }
} catch {
    Write-Host "Error creating sample database: $_" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Read-Host "Press Enter to exit"
Write-Host ""
Write-Host "Running gitsqlite clean operation..." -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Green

try {
    if ($sqliteExe -eq "sqlite3") {
        Write-Host "Using gitsqlite with SQLite executable found in PATH" -ForegroundColor Yellow
        # Use cmd for proper binary file handling instead of PowerShell piping
        cmd /c ".\gitsqlite.exe clean < sample.db"
    } else {
        Write-Host "Using gitsqlite with SQLite executable: $sqliteExe" -ForegroundColor Yellow
        # Use cmd for proper binary file handling with custom SQLite path
        cmd /c ".\gitsqlite.exe clean `"$sqliteExe`" < sample.db"
    }
    
    if ($LASTEXITCODE -ne 0) {
        throw "gitsqlite command failed with exit code $LASTEXITCODE"
    }
} catch {
    Write-Host "Error running gitsqlite: $_" -ForegroundColor Red
    # Clean up before exiting
    if (Test-Path "sample.db") {
        Remove-Item "sample.db" -Force
    }
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Cleaning up..." -ForegroundColor Green
if (Test-Path "sample.db") {
    Remove-Item "sample.db" -Force
}

Write-Host ""
Write-Host "Done! The above output shows the SQL commands that recreate the database." -ForegroundColor Green

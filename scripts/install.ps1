# Install SQLite 3 and gitsqlite.exe, and ensure both are on PATH

$ErrorActionPreference = 'Stop'

# Target bin directory (user-local)
$BinDir = "$env:USERPROFILE\bin"
if (-not (Test-Path $BinDir)) {
    New-Item -ItemType Directory -Path $BinDir | Out-Null
}

# Ensure bin directory is on PATH
if (-not ($env:PATH -split ';' | Where-Object { $_ -eq $BinDir })) {
    Write-Host "Adding $BinDir to user PATH..." -ForegroundColor Yellow
    $oldPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
    if ($oldPath -notlike "*${BinDir}*") {
        [Environment]::SetEnvironmentVariable('PATH', "$oldPath;$BinDir", 'User')
        Write-Host "You may need to restart your terminal for PATH changes to take effect." -ForegroundColor Cyan
    }
}

# Install SQLite 3 via winget if not present
Write-Host "Checking for sqlite3..." -ForegroundColor Yellow
if (-not (Get-Command sqlite3 -ErrorAction SilentlyContinue)) {
    Write-Host "Installing SQLite 3 via winget..." -ForegroundColor Yellow
    winget install -e --id SQLite.SQLite -h
} else {
    Write-Host "SQLite 3 is already installed." -ForegroundColor Green
}

# Download latest gitsqlite.exe from GitHub Releases
$gitsqliteUrl = "https://github.com/danielsiegl/gitsqlite/releases/latest/download/gitsqlite.exe"
$gitsqliteExe = Join-Path $BinDir "gitsqlite.exe"
Write-Host "Downloading latest gitsqlite.exe..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $gitsqliteUrl -OutFile $gitsqliteExe -UseBasicParsing

# Confirm installation
if (Test-Path $gitsqliteExe) {
    Write-Host "gitsqlite.exe installed at $gitsqliteExe" -ForegroundColor Green
} else {
    Write-Host "Failed to install gitsqlite.exe!" -ForegroundColor Red
}

Write-Host "\nInstallation complete. Open a new terminal to use 'sqlite3' and 'gitsqlite' from any location." -ForegroundColor Green

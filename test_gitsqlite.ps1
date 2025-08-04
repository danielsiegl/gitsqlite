# Sample script demonstrating the gitsqlite clean operation
# Now uses embedded SQLite - no external dependencies needed!

Write-Host "Sample gitsqlite clean operation demo" -ForegroundColor Green
Write-Host "====================================" -ForegroundColor Green

Write-Host "Creating sample SQLite database..." -ForegroundColor Green
$createDbCommand = 'CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT); INSERT INTO users (name, email) VALUES (''John Doe'', ''john@example.com''), (''Jane Smith'', ''jane@example.com'');'

# Create SQL content and pipe to gitsqlite smudge to create binary database
try {
    # Write SQL to temp file, then use gitsqlite smudge to create database
    $sqlFile = "temp.sql"
    $createDbCommand | Out-File -FilePath $sqlFile -Encoding UTF8 -NoNewline
    
    # Use file redirection to handle binary data properly
    cmd /c ".\gitsqlite.exe smudge < `"$sqlFile`" > sample.db"
    
    # Clean up temp file
    Remove-Item $sqlFile -Force
    
    if ($LASTEXITCODE -ne 0) {
        throw "gitsqlite smudge failed with exit code $LASTEXITCODE"
    }
    
    # Display file size information
    $fileInfo = Get-Item "sample.db"
    $fileSizeBytes = $fileInfo.Length
    $fileSizeKB = [math]::Round($fileSizeBytes / 1024, 2)
    
    Write-Host "Sample database created successfully" -ForegroundColor Green
    Write-Host "Database file size: $fileSizeBytes bytes ($fileSizeKB KB)" -ForegroundColor Cyan
} catch {
    Write-Host "Error creating sample database: $_" -ForegroundColor Red
    if (Test-Path "temp.sql") { Remove-Item "temp.sql" -Force }
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "Running gitsqlite clean operation..." -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Green

try {
    # Use cmd for proper binary file handling
    cmd /c ".\gitsqlite.exe clean < sample.db"
    
    if ($LASTEXITCODE -ne 0) {
        throw "gitsqlite clean failed with exit code $LASTEXITCODE"
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

@echo off
REM Sample script demonstrating the gitsqlite clean operation
REM Prerequisites: sqlite3 must be installed via winget
REM Install with: install_sqlite.bat or winget install -e --id SQLite.SQLite and make sure sqlite3 is in PATH

REM Check if sqlite3 is available in PATH first
sqlite3 -version >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo SQLite3 found in PATH, using system sqlite3
    set "SQLITE_EXE=sqlite3"
) else (
    echo SQLite3 not found in PATH, using winget installation path
    REM Set path to sqlite3 installed via winget
    set "SQLITE_PATH=%LOCALAPPDATA%\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe"
    set "SQLITE_EXE=%SQLITE_PATH%\sqlite3.exe"
    
    REM Verify the winget installation exists
    if not exist "%SQLITE_EXE%" (
        echo.
        echo Error: SQLite3 not found in PATH or winget location
        echo Please install SQLite3 using: winget install -e --id SQLite.SQLite
        echo Or run install_sqlite.bat to install and configure automatically
        pause
        exit /b 1
    )
)

echo Using SQLite: %SQLITE_EXE%
echo.

echo Creating sample SQLite database...
"%SQLITE_EXE%" sample.db "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT); INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com'), ('Jane Smith', 'jane@example.com');"

echo.
echo Running gitsqlite clean operation...
echo =====================================
if "%SQLITE_EXE%" =="sqlite3" (
    echo Using gitsqlite with SQLite executable found in PATH
    gitsqlite.exe clean  < sample.db
) else (
    echo Using gitsqlite with SQLite executable: %SQLITE_EXE%
    gitsqlite.exe clean "%SQLITE_EXE%" < sample.db
)

echo.
echo Cleaning up...
del sample.db

echo.
echo Done! The above output shows the SQL commands that recreate the database.

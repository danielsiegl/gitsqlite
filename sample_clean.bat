@echo off
REM Sample script demonstrating the gitsqlite clean operation
REM Prerequisites: sqlite3 must be installed via winget
REM Install with: winget install -e --id SQLite.SQLite

REM Set path to sqlite3 installed via winget
set "SQLITE_PATH=%LOCALAPPDATA%\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe"
set "SQLITE_EXE=%SQLITE_PATH%\sqlite3.exe"

echo Creating sample SQLite database...
"%SQLITE_EXE%" sample.db "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT); INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com'), ('Jane Smith', 'jane@example.com');"

echo.
echo Running gitsqlite clean operation...
echo =====================================
gitsqlite.exe clean "%SQLITE_EXE%" < sample.db

echo.
echo Cleaning up...
del sample.db

echo.
echo Done! The above output shows the SQL commands that recreate the database.

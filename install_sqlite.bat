@echo off
REM Script to install SQLite via winget and add it to the PATH
REM Run as Administrator for system-wide PATH changes, or as regular user for user-only PATH changes

echo Installing SQLite via winget...
echo ================================

REM Install SQLite using winget
winget install -e --id SQLite.SQLite

if %ERRORLEVEL% neq 0 (
    echo.
    echo Note: winget install returned error code %ERRORLEVEL%
    echo This could mean SQLite is already installed or there was an installation issue
    echo Checking if SQLite is already available...
) else (
    echo.
    echo SQLite installed successfully!
)

echo.
echo Checking SQLite installation...
echo ==============================

REM Set the SQLite installation path
set "SQLITE_PATH=%LOCALAPPDATA%\Microsoft\WinGet\Packages\SQLite.SQLite_Microsoft.Winget.Source_8wekyb3d8bbwe"

REM Check if SQLite executable exists
if not exist "%SQLITE_PATH%\sqlite3.exe" (
    echo.
    echo SQLite executable not found at expected winget location:
    echo %SQLITE_PATH%\sqlite3.exe
    echo.
    echo Checking if sqlite3 is available in PATH...
    
    REM Try to run sqlite3 to see if it's available elsewhere
    sqlite3 -version >nul 2>&1
    if %ERRORLEVEL% equ 0 (
        echo.
        echo Good! SQLite is already available in your PATH.
        echo No additional configuration needed.
        echo.
        echo To test, run: sqlite3 --version
        echo.
        pause
        exit /b 0
    ) else (
        echo.
        echo Error: SQLite not found in winget location or PATH
        echo Please check the installation manually or install SQLite via:
        echo   winget install -e --id SQLite.SQLite
        pause
        exit /b 1
    )
) else (
    echo SQLite found at: %SQLITE_PATH%\sqlite3.exe
)

echo.
echo Adding SQLite to PATH...
echo ========================

REM Add to user PATH (doesn't require admin privileges)
for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set "CURRENT_PATH=%%B"

REM Check if SQLite path is already in PATH
echo %CURRENT_PATH% | findstr /C:"%SQLITE_PATH%" >nul
if %ERRORLEVEL% equ 0 (
    echo SQLite path is already in the user PATH
) else (
    echo Adding SQLite to user PATH...
    setx PATH "%CURRENT_PATH%;%SQLITE_PATH%"
    if %ERRORLEVEL% equ 0 (
        echo SQLite path added to user PATH successfully
    ) else (
        echo Error: Failed to add SQLite to user PATH
        pause
        exit /b 3
    )
)

echo.
echo Installation complete!
echo ======================
echo SQLite has been installed and added to your PATH.
echo You may need to restart your command prompt or all VS Code Windows to use sqlite3 directly.
echo.
echo To test the installation, open a new command prompt and run:
echo   sqlite3 --version
echo.
echo You can now use gitsqlite without specifying the SQLite path:
echo   gitsqlite clean ^< database.db
echo.
pause

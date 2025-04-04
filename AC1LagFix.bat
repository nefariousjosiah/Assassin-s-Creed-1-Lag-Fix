@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires administrative privileges. Make sure to run as an admin.
    pause
    exit /b
)

set hostsFile=%SystemRoot%\System32\drivers\etc\hosts
set entry1=203.132.26.155 localhost
set entry2=216.98.50.240 localhost

:: Check and add first entry
findstr /C:"%entry1%" "%hostsFile%" >nul
if %errorLevel% neq 0 (
    echo %entry1% >> "%hostsFile%"
    echo Added: %entry1%
) else (
    echo Entry already exists: %entry1%
)

:: Check and add second entry
findstr /C:"%entry2%" "%hostsFile%" >nul
if %errorLevel% neq 0 (
    echo %entry2% >> "%hostsFile%"
    echo Added: %entry2%
) else (
    echo Entry already exists: %entry2%
)

echo Entries updated successfully. You can now enjoy Assassin's Creed 1.
pause

@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires administrative privileges. Make sure to run as an admin.
    pause
    exit /b
)

set hostsFile=%SystemRoot%\System32\drivers\etc\hosts
set entry=203.132.26.155	localhost

findstr /C:"%entry%" "%hostsFile%" >nul
if %errorLevel% neq 0 (
    echo %entry% >> "%hostsFile%"
    echo Entry added successfully, you can now enjoy Assassin's Creed 1.
) else (
    echo Entry already exists in the hosts file.
)

pause

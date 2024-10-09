@echo off
:: This script is designed to automate the process of cleaning up temporary files and logs on a Windows system.

:: Set the title of the command prompt window
title System Cleanup Script

:: Prompt the user to confirm they want to run the script
echo Are you sure you want to run the system cleanup script? (y/n)
set /p confirm=

:: Check the user's response
if %confirm%==y (
    :: Delete temporary files
    echo Deleting temporary files...
    del /q /f /s %temp%\*
    echo Temporary files deleted.

    :: Delete system logs
    echo Deleting system logs...
    del /q /f /s %windir%\Logs\*
    echo System logs deleted.

    :: Empty the recycle bin
    echo Emptying the recycle bin...
    rd /s /q %systemdrive%\$Recycle.Bin
    echo Recycle bin emptied.

    :: Display a success message
    echo System cleanup complete.
) else (
    echo Script cancelled.
)

:: Pause the script before closing
pause
@echo off
goto check_admin

:get_admin
    echo Running with elevated privileges...
    
    :: The main command to execute
    powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"

    echo.
    echo Script execution finished.
    exit /b

:check_admin
    :: Checks if the current user is an administrator
    NET SESSION >NUL 2>&1
    if %errorLevel% == 0 (
        goto get_admin
    ) else (
        echo Requesting Administrator Privileges...
        
        :: Relaunch the script with elevated privileges using PowerShell
        powershell Start-Process -FilePath "%~dpnx0" -Verb RunAs
        exit /b
    )
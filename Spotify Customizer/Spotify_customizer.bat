@echo off
echo Running Spicetify CLI Installation with Marketplace Auto-Confirmation...

:: The 'echo y' provides the 'y' input followed by a newline (Enter)
(echo y) | powershell -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"

echo.
echo Installation command executed. Check the output above for results.
exit
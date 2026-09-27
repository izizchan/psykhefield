@echo off
rem Launcher for the published psykhe-server.exe (keep it next to the exe).
rem The exe with no arguments runs local mode: 8 bots, client port 127.0.0.1:7878,
rem battle log 127.0.0.1:7879. Run "psykhe-server.exe --help" for the options.
rem This wrapper only exists so the window stays open when the server exits with an
rem error (a bare double-click would close it before you can read the message).
cd /d "%~dp0"
psykhe-server.exe %*
if errorlevel 1 (
  echo.
  echo [ERROR] the server exited with an error.
  echo If the port is already in use, close the other server first.
  pause
)

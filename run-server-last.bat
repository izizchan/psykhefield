@echo off
rem PsykheField server - the settings used on 2026-09-29 19:46:49 UTC
rem Overwritten every time the server starts. Rename this file to keep a preset.
chcp 65001 >nul
cd /d "%~dp0"
"%~dp0psykhe-server.exe" --local --bots 1 --fake-rtt 5,5,15,15,40,40,80,120 --max-players 26 --ws-listen 127.0.0.1:7878 --log-listen 127.0.0.1:7879
if errorlevel 1 pause

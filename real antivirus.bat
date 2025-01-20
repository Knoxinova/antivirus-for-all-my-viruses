@echo off
COLOR 0A
:menu
cls
echo Welcome to the antivirus division of my viruses
echo.
echo - A to scan and remove
echo - B to leave
echo - C for my GitHub
set /p choice="Enter A, B, or C: "

if /i "%choice%"=="A" goto scan
if /i "%choice%"=="B" goto leave
if /i "%choice%"=="C" goto web

:web
start /max https://github.com/knoxinova
goto menu

:leave
echo Goodbye, come again soon!
timeout 1>nul
exit

:scan
echo Scanning for viruses...
for /r C:\ %%f in (VIRUS.exe VIRUS.bat Loopvirus.bat knoxsantivirus.bat) do (
    if exist "%%f" (
        echo Removing %%f...
        del "%%f"
        echo %%f removed successfully!
    )
)
cls
goto menu

@echo off
set /a port=10000
SETLOCAL ENABLEDELAYEDEXPANSION

for /r "%~dp0" %%f in (CLSID.list) do (
    set CLSID_LIST=%%f
    echo Found CLSID.list at: !CLSID_LIST!
    goto PROCESS
)

echo CLSID.list not found in any subfolder!
exit /b 1

:PROCESS
FOR /F %%i IN (!CLSID_LIST!) DO (
   echo %%i !port!
   jus.exe -z -l !port! -c %%i >> kaz.log
   set RET=!ERRORLEVEL!
   if "!RET!" == "1" set /a port=port+1
)

ENDLOCAL

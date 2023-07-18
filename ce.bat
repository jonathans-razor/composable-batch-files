@echo off
if "%~1" == "" (
  call :main j1
  exit/b
)
if "%~1" == "j1" goto main
if "%~1" == "j2" goto main



:_
:help
cls
echo. & echo * Create clean slate j1 and j2 files.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo. & echo   If blank, j1 is used. Else j1 or j2 can be used.

echo. & echo * Batch file style: Single purpose.

echo. & echo * Samples:
echo   %~n0

exit/b
rem creation date: Jun-29-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
echo. & echo * Process j file.
call cp ff btd %1>nul
call e "%cbf-fn%">nul
exit/b



:_

:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Current directory contains. Check for characters in the current path.
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Character to check for.

echo. & echo * Return Code: If equal to 0, you know that %cbf-fn% contains the passed in characters.

exit/b

lu: Sep-29-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main
call el /c>nul
echo %cd%| find /i "%1">nul
if errorlevel 1 (
  call err The characters "%1" were not found in the current path.
  exit/b 1
)

exit/b



:_

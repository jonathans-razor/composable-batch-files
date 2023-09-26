:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Filename contains. Check for characters in a filename.
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Fliename in current folder

echo. & echo * Return Code: If equal to 0, you know that %cbf-fn% contains the passed in characters.

exit/b

lu: Sep-21-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main
call el /c>nul
echo %1| find /i "%2">nul
if errorlevel 1 (
  call err Expected a %2 type file.
  exit/b 1
)

exit/b



:_

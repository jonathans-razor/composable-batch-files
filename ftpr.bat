:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

rem qq
echo. & echo * File type presence.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: File type current folder

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
if not exist *.%1 (
  call err No "%1" file(s^) exist in the current folder.
  exit/b 1
) else (
  rem echo * Found "%1" file(s^).
)

exit/b



:_

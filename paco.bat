:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

cls

echo. & echo * Parameter contains. Check for characters in a passed in parameter.
echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Fliename in current folder

echo. & echo   Return Code: If equal to 0, you know that cbf-fn contains the passed in characters.

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

  rem We don't want to see an error message for a missing periond because that is not 
  rem necessarily an error. Oct-20-2023

  if "%2" == "." exit/b 1
  call err Expected "%2" in parameter 1.
  exit/b 1
)

exit/b



:_

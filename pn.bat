:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Validate a path value. Using "pn" instead of "n" helps clarify the intent of the call.

echo. & echo   Usage: %0 [Parameter 1]

echo. & echo * Parameter 1: Alias.

echo. & echo * Batch file style: Single purpose.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

set cbf-pt=

call n %1

if errorlevel 1 exit/b

if "%cbf-pt%" == "" (
  call err For parameter 1 "%1", the cbf-pt is not defined. Nov-12-2021_7_00_PM
  exit/b 4
)

if not exist "%cbf-pt%" (
  err For parameter 1 "%1", the cbf-pt "%cbf-pt%" does not exist. Sep-5-2021_8_04_PM
  exit/b 3
)

exit/b





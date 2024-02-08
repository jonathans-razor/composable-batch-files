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

rem Feb-7-2024: new double dictionary code.
call n %1 2>null

rem The alias is found in the primary dictionary, so exit.
if not errorlevel 1 exit/b

if not exist "%cbf-default-sd%" exit/b

call el /c>nul

call "%cbf-default-sd%" %1 2>null

if errorlevel 1 err A dictionary entry for "%1" was not found. Feb-7-2024-7-00-PM

if "%cbf-pt%" == "" (
  call err For parameter 1 "%1", the cbf-pt is not defined. Nov-12-2021_7_00_PM
  exit/b 4
)

if not exist "%cbf-pt%" (
  err For parameter 1 "%1", the cbf-pt "%cbf-pt%" does not exist. Sep-5-2021_8_04_PM
  exit/b 3
)

exit/b




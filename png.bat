:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Leverage cbf-png, an image type, variable.

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: cbf-png DCV to reference.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

call m clear_errorlevel_silently

call n %1

if errorlevel 1 (
  exit/b
)

if "%cbf-png%" == "" (
  echo.
  echo * Error: cbf-png is not defined for %1.
  exit/b
)

set cbf-fn=%cbf-png%

call m double_click

call r

exit/b



:_

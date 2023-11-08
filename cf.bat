@echo off



:_

set cbf-filep=* Surf to Confluence.

title=%cbf-filep%



:_

echo. & echo * Route callers.

if "%~1"=="" %0 msl

goto validate-input

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:validate-input

set cbf-cf=
call m cel

call n %1

if errorlevel 1 exit/b

if "%cbf-cf%" == "" (
  echo.
  echo * cbf-cf is not defined for %1. Jan-18-2022_12_27pm
  exit/b
)

set cbf-parameter=%cbf-cf%

set cbf-app=%cbf-default-browser%

if not %errorlevel% == 0 (
  echo. & echo * Error - EL: %errorlevel% on Apr-11-2022-3
  exit/b
)



:_

:main

rem @echo on
start "My Title" "%cbf-app%" "%cbf-parameter%"
rem @echo off

exit/b

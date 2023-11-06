:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

cls

echo. & echo * Open a folder using a DCV.

echo. & echo * Usage: %0 [space separated parameter(s)]
echo   Parameter 1: Alias you wish to process.
echo   Parameter 2: Dynamically constructed cbf variable.

echo. & echo * Batch file style: Single Purpose
echo   Entangled variable: cbf-fc_path
echo   Pit of Success Strategy: If cb_conf is not, found the algorithm will look for cbf-url.

echo. & echo * Example(s):
echo   %0 2154 html
echo   %0 csu forms
echo   %0 ay fn

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

call m clear_errorlevel_silently>nul

call m reset

call n %1

if errorlevel 1 exit/b

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf-%2" for the alias "%1".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf-expanded-variable%

if not exist "%cbf-expanded-variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf-expanded-variable%" does not exist.
  rem exit/b
)

call m convert_to_path %cbf-expanded-variable%

rem echo.
rem echo %cbf-pt%

cd /d "%cbf-pt%"

exit/b


Footnote
>< >< >< 



:_

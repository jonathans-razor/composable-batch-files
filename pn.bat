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

echo. & echo   Batch file style: Single purpose.

echo. & echo * Entangled CBF variable: cbf-pt

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

set cbf-pt=

call sdv %1 || exit/b

if "%cbf-pt%" == "" (
  call err From %~nx0: For parameter 1 "%1", the cbf-pt is not defined. Feb-8-2024-1-22-PM
  exit/b 4
)

if not exist "%cbf-pt%" (
  call err From %~nx0: For parameter 1 "%1", the cbf-pt "%cbf-pt%" does not exist. Feb-8-2024-1-22-PM
  exit/b 3
)

exit/b



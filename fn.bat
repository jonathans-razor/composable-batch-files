:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Validate a path value.

echo. & echo   Usage: %0 [Parameter 1]

echo. & echo * Parameter 1: Alias.

echo. & echo   Batch file style: Single purpose.

echo. & echo * Entangled CBF variable: cbf-fn

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

set cbf-fn=

call paco "%~1" . && goto set-cbf-fn "%~1"

call sdv %1 || exit/b

goto validate-fn

:set-cbf-fn

set cbf-fn=%1

:validate-fn

if %cbf-fn% == "" (
  call err From %~nx0: For parameter 1 %1, cbf-fn is not defined. Feb-16-2024-11-12-PM
  exit/b 4
)

if not exist %cbf-fn% (
  call err From %~nx0: For parameter 1 %1, cbf-fn %cbf-fn% does not exist. Feb-16-2024-11-13-PM
  exit/b 3
)

exit/b



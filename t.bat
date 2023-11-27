:_

@echo off

set cbf-title=CBF: %0
title %cbf-title%

if "%~1" == "?" goto help
if "%~1" == "" goto ta

goto preprocess



:_

:help

echo. & echo * Transform directory.
echo. & echo   Usage: %0 [Parameter 1]
echo. & echo   Parameter 1: Path alias or the name of a child folder or ".." which emulates the cd command.
echo. & echo   Batch file style: Single purpose.
echo. & echo   Entangled variable: cbf-pt

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:ta

echo. & echo * Ta.

call %0 a
cls

exit/b



:_

:preprocess

rem echo. & echo * Analyze environment and decide upon the proper course of action. This is an order of operations.

set cbf-previous-pt=%cbf-pt%

call m cel

set cbf-app=
set cbf-pt=

call pn %1

if errorlevel 1 exit/b

goto main



:_+

rem Pseudo Case Statement



::_

:next_case_item

if not "%cbf-fn%" == "" (
  echo. & echo * So try filename.
  set cbf-desired-path=%cbf-fn%
  goto try-hierarchical-priority
  exit/b
)



::_

:next_case_item

if not "%cbf-ex%" == "" (
  echo. & echo * So try Excel.
  set cbf-desired-path=%cbf-ex%
  goto try-hierarchical-priority
  exit/b
)



::_

:next_case_item

if not "%cbf-app%" == "" (
  echo. & echo * So try cbf-app.
  set cbf-desired-path=%cbf-app%
  goto try-hierarchical-priority
  exit/b
)



::_

:next_case_item

echo.
echo * Error: Can't find anywhere to go. skw May-4-2020_8_17_PM

exit/b



:_

:try-hierarchical-priority

rem echo. & echo * Try hierarchical priority.

call m expand_to_path_only "%cbf-desired-path%"

if not exist "%cbf-pt%" (
  echo. & echo * Error: Could not find path "%cbf-pt%".
  exit/b
)

goto main



:_
:main
cd /d "%cbf-pt%"
exit/b



:_

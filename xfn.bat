:_

@echo off



:_

set cbf-filep=* Remote double-click equivalent way to run a file.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

echo.
echo. %cbf-filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Filename alias that you want to run or "double click" if you will.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

echo.
echo %cbf-filep%

set cbf-app=
set cbf-fn=
set cbf-url=

call n %~1

if %errorlevel% == 1 (
  echo.
  echo * Error: Cannot find label "%~1".
  exit/b
)

if "%cbf-fn%" == "" (
  echo.
  echo * Nickname Error: There is no cbf-fn defined for '%~1'.
  exit/b 1
)

call m double_click

call r

exit/b



:_

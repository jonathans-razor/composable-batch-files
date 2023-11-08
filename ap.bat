:_

@echo off



:_

set cbf-filep=* Application-centric way of running an application with an optional filename parameter.

echo.
echo %cbf-filep% Jun-9-2020_3_28_PM



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto validate-input



:_ (!rfsp) (mov-6)

:help

echo.
echo %cbf-filep%

echo.
echo Usage: %0 [space separated parameters]

echo.
echo Parameter 1: Application nickname.

echo.
echo Parameter 2 (Optional): Filename alias.

echo.
echo Entangled variable: cbf-app

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate-input

call m cel

call an %1

if %errorlevel% == 1 (
  exit/b
)

if "%~2" == "" goto percent_2_is_blank

call fnv %2

if %errorlevel% == 1 (
  exit/b
)

set cbf-parameter=%cbf-fn%

goto main



:percent_2_is_blank

set cbf-parameter=



:_

:main

echo. & echo * Main function of %0.bat.

call r

exit/b



:_

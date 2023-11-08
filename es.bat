:_

@echo off



:_

set cbf-filep=* Edit the settings file of an alias.

echo.
echo %cbf-filep%



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the setting file you wish to edit.

echo.
echo %parameter_1%

exit/b



:_

:main

rem lu: May-15-2019

set cbf-settings_file=

call n %1

if "%cbf-settings_file%" == "" (
  echo.
  echo * Error: CBF Settings file is not set.
  exit/b
)

call e %cbf-settings_file%

exit/b



:_ (!rfsp) (mov-7)

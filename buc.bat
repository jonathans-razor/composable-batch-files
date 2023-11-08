:_

@echo off



:_

set cbf-filep=* Back up current file to code quick backup folder.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto validate_user_input



:_

:help

echo.
echo %cbf-filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename of file in the current folder.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Examples:

echo.
echo %0 pom.xml

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_user_input

call n cqb 

if errorlevel 1 exit/b

if not exist "%~1" (
  echo.
  echo * Error: Percent 1 does not exist.
  exit/b
)



:_

:main

xcopy "%~1" "%cbf-pt%"

call t cqbu

call d

exit/b



:_ (!rfsp) (mov-7)

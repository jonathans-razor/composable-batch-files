:_

@echo off



:_

echo. & echo * Use Sublime and sfn to edit a file.

if "%~1" == "" exit
if "%~1" == "?" sfn ?

goto validate-input



:_

:help

echo. & echo * The help for this file is in sfn.bat. 

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate-input

set cbf-fn=

call sfn %*

if errorlevel 1 exit/b

if "%cbf-fn%" == "" (
  echo.
  echo * Error: cbf-fn is undefined for "%1". Aug-6-2021_10_54_AM
  exit/b
)

call an sm>nul

if errorlevel 1 exit/b



:_

:main

set cbf-parameter=%cbf-fn%

call r

exit/b



:_ (!rfsp) (mov-7)

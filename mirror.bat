:_

@echo off



:_

set cbf-filep=* The batch file is a mirror of sorts for the command line.
set cbf-filep=%cbf-filep% This file attempts to demonostrate how it's easy to see what command
set cbf-filep=%cbf-filep% you are running. This can help you build easy and cool scripts.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto %1



:_

:help

echo.
echo %cbf-filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:1

echo. & echo * You entered %1.

echo.


exit/b



:_

:2

echo. & echo * You entered the number %1.

echo.


exit/b



:_

:3

echo. & echo * %1 is what you typed.

echo.


exit/b



:_

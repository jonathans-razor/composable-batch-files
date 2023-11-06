:_

@echo off



:_

set cbf-filep=* Convert the passed in parameter to lower case.



:_

set fp=* Route callers.

if "%~1" == "" goto help
if "%~1" == ""-help- goto help

if "%~1" == "?" goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

rem lu: 

echo.
echo   Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1: Parameter to convert to lower case.

echo.
echo %parameter-1%

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

echo>%tmp%\%1

dir /b/l %tmp%\%1>%tmp%\lower.tmp

set /p cbf-lower=<%tmp%\lower.tmp

del %tmp%\%1

del %tmp%\lower.tmp

rem echo. & echo cbf-lower: %cbf-lower%

exit/b



:_

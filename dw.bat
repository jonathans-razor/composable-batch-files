:_

@echo off



:_

set cbf-filep=* Run NG UI from a dedicated command line window.



:_

set fp=* Route callers.

if -%~1- == -- goto help
if -%~1- == ---help- goto help

if -%~1- == -?- goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1: Folder alias. 

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

title=%cbf-filep%

call t %1

if errorlevel 1 exit/b

if /i "%~2" == "y" (
  rem run npm install
  call nm inst
)

call nm run-ui

exit/b



:_

:_

@echo off



:_

set cbf-filep=* Given an alias and a DCV, returns the set DCV value.



:_

set fp=* Route callers.

if -%~1- == -- goto help

if -%~2- == -- goto help

if -%~1- == -?- goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

rem skw:

rem lu: 

echo.
echo Batch file style: Single purpose

echo.
echo Entangled variable: cbf-%0

echo.
echo Pit of Success Strategy: For example, if cbf-cf is not found, the algorithm will look for cbf-url.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1: Alias

set parameter-2=Parameter 2: DCV

echo.
echo %parameter-1%

echo.
echo %parameter-2%

echo.
echo Example(s):

echo.
echo %0

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

call i /c>nul

call n %1

if errorlevel 1 exit/b

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  call err There is no definition for "cbf-%2" for the alias "%1". Feb-17-2023-12-37
  exit/b
)

echo.
echo * DCV - cbf-%2: %cbf-expanded-variable%

exit/b



:_

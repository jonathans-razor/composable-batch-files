:_
@echo off

title CBF: %0

if "%~1" == "?" goto help

goto %1
goto main



:_
:help

cls

echo. & echo * Archive for old batch file functions.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   x

echo. & echo   Batch file style: Multipurpose
echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 

exit/b

lu: 
Feb-22-2024



:_
        .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
       / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
            `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:dc
:double_click
:set_cbf-app_equal_to_cbf-fn

echo. & echo * Simulate a remote double click. Deprecated. Going forward, use dc.bat. **************

rem Strangely, this also works. Feb-1-2018
rem set cbf-app="%cbf-fn% - Shortcut.lnk"

if "%cbf-fn%"=="" (
  exit/b
)

set cbf-app=%cbf-fn%

set cbf-parameter=

exit/b

lu:
Feb-1-2018



:_

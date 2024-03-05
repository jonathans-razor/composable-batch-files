:_
@echo off

title CBF: %0

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto process-td-parameter



:_
:help

cls

echo. & echo * Run localhost application. Uses td parameter.

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
:process-td-parameter

call t %1>nul || exit/b



:_
:main

rem echo cd: %cd%

rem @echo on
call m fw %cd%

rem echo. & echo * Error Level: %errorlevel% - qjq - cbf-: %cbf-% - Mar-5-2024-2-41-PM
rem echo %cbf-distilled-file-folder%

rem echo. & echo * Error Level: %errorlevel% - qjq - cbf-: %cbf-% - Mar-5-2024-2-42-PM
call n %cbf-distilled-file-folder%>nul

rem echo %cbf-srv%

call nm %cbf-srv%

rem qq
if not "%cbf-lh%" == "" call lh %cbf-lh%

exit/b



:_

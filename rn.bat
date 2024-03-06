:_
@echo off

echo. & echo * Run localhost application. Uses td parameter and fwp awareness.

if "%~1" == "" goto preprocess
if "%~1" == "?" goto help

goto process-td-parameter



:_
:help

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

call t %1 || exit/b

call fn package.json || exit/b

goto main



:_
:preprocess

call fn package.json || exit/b

call m fw %cd%

call n %cbf-distilled-file-folder%>nul

goto main



:main

call nm %cbf-srv% || exit/b

if not "%cbf-lh%" == "" call lh %cbf-lh%>nul

exit/b



:_

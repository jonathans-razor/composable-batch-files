:_ (!bfrn)
@echo off

echo. & echo * Run localhost application. Uses td parameter and fwp awareness.

if "%~1" == "" goto preprocess
if "%~1" == "?" goto help

set cbf-lh=
set cbf-srv=

goto process-td-parameter



:_
:help

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   x

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 
echo   %~n0 vuet

exit/b

lu: 
Mar-11-2024
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

call fn package.json || err Apr-15-2024-5-18-PM

call m fw %cd% || err Apr-15-2024-5-19-PM

call n %cbf-distilled-file-folder% || err Apr-15-2024-5-20-PM

goto main



:main

if "%cbf-srv%" == "" err cbf-srv is not defined. Mar-11-2024-4-39-PM

call nm %cbf-srv% || err Apr-9-2024-2-54-PM

if not "%cbf-lh%" == "" (
  call is-numeric "%cbf-lh%" && call lh %cbf-lh%
)

exit/b



:_ (!efrn)

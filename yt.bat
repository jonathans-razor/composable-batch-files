:_
@echo off

if "%~1" == "" goto preprocess
if "%~1" == "?" goto help

set cbf-yt=

goto process-td-parameter



:_
:help

echo. & echo * Surf YouTube. Uses td parameter and fwp awareness.

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

goto main



:_
:preprocess

call m fw %cd%

call n %cbf-distilled-file-folder%>nul

goto main



:main

if "%cbf-yt%" == "" err cbf-yt is not defined. Mar-11-2024-4-49-PM

call an fx>nul

set cbf-parameter=%cbf-yt%

call r

exit/b



:_

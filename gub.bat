@echo off




:_

echo. & echo * Route callers.

if "%~1" == "" goto perform-default-action

if "%~1" == "?" goto help

goto main



:_
:help
cls
echo. & echo * Run a utility from the Git User Bin.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Git utility to run.
echo. & echo * Parameter 2: (Optional): Possible parameter required by said Git utility.

echo. & echo echo * Batch file style: Single purpose

echo. & echo * Entangled variable: cbf-%0

echo. & echo * Pit of Success Strategy: For example, if cbf-cf is not found, the algorithm will look for cbf-url.

echo. & echo * Samples:
echo  %0 arch
rem Run a bash file from windows command prompt!
echo  %0 bash hw

exit/b
rem Coreutils - GNU core utilities



:_  .--.      .--.      .--.      .--.      .--.
  :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::: 
         `--'      `--'      `--'      `--'      `--'     



:_

:perform-default-action

echo. & echo * Peform the default action which is 

echo.


exit/b



:_

:main

call pn gub>nul

echo.
"%cbf-pt%\%1" %2 %3 %4 %5 %6 %7

exit/b



:_

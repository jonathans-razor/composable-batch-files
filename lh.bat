:_

@echo off
if "%~1" == "?" goto help
goto main



:_
:help
cls
echo. & echo  * Localhost operations.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Port number.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 8000

exit/b

lu: 
Sep-26-2023


:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

if "%~1" == "" (
  set cbf-port=8000
) else (
  set cbf-port=%1
)

echo. & echo * Run localhost on port %cbf-port%.

set cbf-parameter=http://localhost:%cbf-port%

call an br

call r

exit/b



:_

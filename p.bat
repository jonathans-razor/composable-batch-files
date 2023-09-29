:_

@echo off
if "%~1" == "?" goto help
goto main



:_
:help
cls
echo. & echo * Push selected repositories.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo   Batch file style: Single purpose

echo. & echo   Samples:
echo   %~n0 

exit/b

rem creation date: Sep-20-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

cls

set cbf-current-folder=%cd%

call sep
call pa ql

call sep
call pa iw

call sep
call pa c

cd /d %cbf-current-folder%

exit/b



:_

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

rem call sep
rem f

call sep
call t c & call g dirt

call sep
call t dsa & call g dirt

rem call sep
rem ql

rem call sep
rem  iw

cd /d %cbf-current-folder%

exit/b



:_

:_

@echo off

call paco "%~1" . && goto commit-current-folder

if not "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo * Push predetermined repositories.

echo. & echo   Usage: %~n0 (NO parameters)

echo. & echo   Batch file style: Multipurpose

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

call rf r>nul


:_
call sep
call t c & call g dirt



:_
call sep
call t dsa & call g dirt



:_                             *********************************
:close

call rf>nul
echo.

exit/b



:_
call sep
call t ql & call g dirt



:_
call sep
call t prat & call g dirt



:_
call sep
call t f & call g dirt



:_
rem qq
:commit-current-folder

call g dirt

exit/b



:_

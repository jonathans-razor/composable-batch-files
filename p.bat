:_

@echo off


if "%~1" == "" goto main
if "%~1" == "?" goto help

rem qq
call paco "%~1" . && goto commit-current-folder

goto push-predetermined-repositories



:_
:help

cls

echo. & echo * Push repositories.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo     If blank, push predetermined repositories.
echo     If equal to ".", push current folder.
echo     If equal to an alias, switch to alias' folder then push.

echo. & echo   Batch file style: Multipurpose

echo. & echo * Samples:
echo     %~n0 
echo     %~n0 .
echo     %~n0 cbf

exit/b

rem creation date: Sep-20-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:push-predetermined-repositories

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
:commit-current-folder

echo. & echo * Commit current folder.

call g dirt

exit/b



:_

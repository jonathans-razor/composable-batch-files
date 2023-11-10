:_

@echo off

if "%~1" == "" goto push-predetermined-repositories
if "%~1" == "?" goto help

call paco "%~1" . && goto commit-current-folder

if not "%~1" == "" (
  call pa %1
  exit/b
)



:_
:help

cls

echo. & echo * Push predetermined repositories and more.

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

:
call sep
call t c & call g dirt

:
call sep
call t dsa & call g dirt

:
call sep
call t ql & call g dirt

:
call sep
call t prat & call g dirt

:
rem echo. & echo * Exiting here ***************************************.
call rf>nul
echo.
echo.
goto exit

:
call sep
call t f & call g dirt

:Necessary Edge Case Spacer - Please do not delete.



:_
:commit-current-folder
call g dirt
exit/b



:_
:exit
:_

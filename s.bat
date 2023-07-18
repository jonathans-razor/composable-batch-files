:_

@echo off

if "%~1" == "?" goto help
goto preprocess



:_

:help

echo. & echo * Git status batch file.

echo. & echo Usage: %0 [Optional Parameter 1]

set parameter_1=Parameter 1: Path alias parameter. If left blank, current folder is used.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:preprocess

set fp=* Preprocess.

call m clear-errorlevel

if not "%~1" == "" call t %~1

if errorlevel 1 exit/b



:_

call g status
echo.

rem (!rfsp) (mov-2)



:_

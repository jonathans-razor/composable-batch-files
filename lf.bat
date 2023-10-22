:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help
goto %1



:_
:help

cls

echo. & echo  * Language functions batch file.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Function alias you wish to run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 vers

exit/b

lu: 
Sep-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Language Functions Template Code Family (!fylg) (skw language-functions-series-jj)



::_
:echo-parameters
:ep
echo. & echo * Echo parameters
echo. & echo %*
exit/b



::_
:hw
echo. & echo * Hello world from a batch file.
exit/b



::_
:rs
echo. & echo * Reverse string, with some help from Python.
call t d>nul
call ph reverse-string %*
exit/b



::_
:star
rem echo. & echo * Start the server.
call t nwe>nul
start "[Server Title]" cmd /k [executable name start syntax] .
exit/b



::_

:run

rem echo. & echo * Run a [language name] program.

call fe "%~1" || exit/b
call paco "%~1" .[language extension] || exit/b

shift
echo.
[language executable name] %*

exit/b



::_
:vers
echo. & echo * Version Oct-22-2023_12_08_PM.
exit/b



:_

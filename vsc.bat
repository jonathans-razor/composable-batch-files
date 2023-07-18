:_

@echo off
if "%~1" == "" goto run-application-without-parameter
if "%~1" == "?" goto help
goto main



:_
:help
cls
echo. & echo * Run Visual Studio Code while leveraging the e.bat decision algorithm.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo  

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 

exit/b


rem creation date: Jul-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:run-application-without-parameter
code
echo. & echo * Run application without parameter.
exit/b



:_
:main
e.bat %* /e:%0
exit/b



:_ (!efno)

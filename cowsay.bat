:_

@echo off
if "%~1" == "?" goto help
rem qq
if "%~1" == "" cowsay Wait. What?
goto main



:_
:help
cls
echo. & echo * Talking cow.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: What should the cow say?
echo. & echo   If left blank, the cow is confused.

echo. & echo * Samples:
echo   %~n0 Hi mom!

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

cls

echo.
echo.
echo     -----------------
echo      %*  
echo     -----------------
echo                    \       C  C
echo                     \      ----
echo                      \    (O O)\________________
echo                           (   )\                )\/\
echo                            ---  II              )
echo                                 II---------W  I
echo                                 II           II
echo                                 II           II
echo.
echo.

exit/b


:_

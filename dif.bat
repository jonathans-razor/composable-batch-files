@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help
if "%~2" == "" goto help
goto main



:help
cls
echo. & echo * Compare files.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: First file to compare.
echo. & echo * Parameter 2: Second file to compare.

echo. & echo * Sample(s):
echo   %~n0 
exit/b

skw: Are 2 files the same?

rem creation date: Apr-19-2023


:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
call gub diff %1 %2
if errorlevel 1 exit/b
echo. & echo * The files are identical.
exit/b
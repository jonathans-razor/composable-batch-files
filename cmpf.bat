@echo off
if "%~1" == "?" goto help
goto main



:help
cls
echo. & echo * Compare files.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:

echo. & echo * Sample(s):
echo   %~n0 
exit/b

skw: Are 2 files the same?

rem creation date: Apr-14-2023


:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
call gub cmp %1 %2
if errorlevel 1 exit/b
echo. & echo * The files are identical.
exit/b
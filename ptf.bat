@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help
goto main



:help
cls
echo. & echo * Pipe to file.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: Command whose output you wish to pipe to file.
echo  

echo. & echo * Batch file style: Single purpose

echo. & echo * Sample(s):
echo   %~n0 set

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
%1>%tmp%\pipe-to-file.txt
call an npp>nul
start "Test Title" "%cbf-app%" "%tmp%\pipe-to-file.txt"
exit/b
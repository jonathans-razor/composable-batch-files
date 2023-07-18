@echo off
if "%~1" == "?" goto help
goto %1



:help
cls
echo. & echo * Kill a process.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo  

echo. & echo * Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:3

echo. & echo * Thread dump a process into the logs.

kill -%1

exit/b

cd: May-01-2023

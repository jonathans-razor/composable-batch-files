:_

@echo off
if "%~1" == "?" goto help
goto main



:_
:help
cls
echo. & echo * 

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
:main
call k 1 2 3
exit/b



:_

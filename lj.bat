:_

@echo off

title CBF: %0

echo. & echo  * Override j1.txt with clipboard contents and open the file.

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    x

echo. & echo    Batch file style: Single purpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Dec-4-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
call t dsa>nul
python clip.py
call e j1>nul
exit/b



:_

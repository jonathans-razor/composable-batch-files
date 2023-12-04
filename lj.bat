:_

@echo off

title CBF: %0

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo  * Override j1.txt with clipboard contents and open the file.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    x

echo. & echo    Batch file style: Single purpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Dec-2-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
call t dsa
python clip.py
call e j1
exit/b



:_

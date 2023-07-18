:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto preprocess



:_

:help


echo. & echo * Dir search with td parameter.
echo. & echo Usage: %0 [space separated parameter(s)]
echo. & echo * Folder alias to switch to.
echo. & echo * Same parameter as asked for by d.bat.
echo. & echo * Batch file style: Single purpose.

exit/b

rem lu: May-3-2022



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:preprocess
call t %1



:_
:main
call d %2
exit/b



:_

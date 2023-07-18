:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help
echo. & echo * Transform folder to parent folder.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Alias of the child folder you wish to open.
exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main
call tdp %1
call of
exit/b
rem lu: May-20-2019



:_

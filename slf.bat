:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto %1



:_
:help

cls

echo. & echo  * Supoorted language batch file that demonstrates language functions.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the language function you wish to run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Sep-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Language Functions Template Code Family (!lfs, !fylg) (skw supported-languages-series-jj)



::_
:ep

echo. & echo * Echo parameters from %0.bat.

echo. & echo %*

exit/b



::_
:hw

echo. & echo * Hello world from batch file %0.bat.

exit/b



:_ (!eflfb)

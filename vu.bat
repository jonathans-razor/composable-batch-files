:_
@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo  * Vue runner.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the function you wish to run.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 

exit/b

lu: 
Jan-18-2024



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Vue Applications Family (!fyvu)



::_
:a1

echo. & echo * Run Vue application %1.

call t d>nul
cd hello-world-vuejs
br index.html

exit/b



::_
:a2

echo. & echo * Vue button.

call t vubu>nul
br index.html

exit/b



::_
:a3
:vue

echo. & echo * Run project vue-3-and-composition-api-tutorial. Vue tuturial by Traversy Media.

call t vue>nul
call nm dev>nul
call vc .
call fx vue lh br

exit/b



::_
:a4
:bu2

echo. & echo * Button 2. This works.

rem qq
call t d>nul
cd vue-button-2\my-project
call nm ruse
call lh 8080

exit/b



:_
:a5

echo. & echo *

rem   qq
set cbf-

exit/b



:_

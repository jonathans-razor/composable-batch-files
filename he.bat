:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto main
goto %1



:_
:help

cls

echo. & echo  * Hello world everyone. Runs all hello world programs separately or together.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1 (Optional):
echo    Name of hello world you want to run.
echo    If left blank, all hello worlds are run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 
echo    %~n0 js

exit/b

lu: 
Oct-12-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:cs

call dn hw

exit/b



:_

:go

call gol hw

exit/b



:_

:js

call nd hw

exit/b



:_

:jv

call jv hw

exit/b



:_

:ng

call gu hw

exit/b



:_

:perl

perl hello-world.pl

exit/b



:_

:py

call ph hw

exit/b



:_  React

:re

call t dsa>nul
cd hello-world-react
call nm star>nul

exit/b



:_

:ts

call tys hw

exit/b



:_
:main

cls

echo. & echo * Hello world from everyone.

call :cs
call :go
call :ng
call :js
call :jv
call :py
call :re
call :ts

exit/b



:_+ Language Functions Template Code Family (!fylg) (skw language-functions-series-jj)



::_
:echo-parameters
:ep

cls

echo. & echo * Echo parameters

rem call gg ep
rem call jv ep
rem qq
call lf ep
rem call nd ep
rem call ph ep

exit/b



::_
:hw
:slhw

cls

echo. & echo * Hello world from language-functions-series-jj supported languages.

call gg hw
call jv hw
call lf hw
call ph hw
call nd hw

exit/b



::_
:rs
:slrs

cls

echo. & echo * Reverse string.

rem call nd rs
rem call gg rs 
rem call jv rs
rem call lf rs
rem call ph rs

exit/b



::_
:vers

cls

echo. & echo * Version.

call gg vers
call jv vers
call lf vers
call nd vers
call ph vers

exit/b



:_

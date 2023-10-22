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

echo. & echo * Echo parameters from %0.bat.

:
call sep
call gg ep 44 hat cat 1 2 3 4 5 6 7

:
call sep
call jv ep Oct-22-2023 1 2 3

:
call sep
call lf ep hat cat 1 2 3 Oct-22-2023

:
call sep
call nd ep Oct-22-2023

:
call sep
call ph ep

:
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

echo. & echo * Reverse string for %0.

:
call sep
rem call lf rs
rem call nd rs Oct-22-2023-2
rem call ph rs Oct-22-2023
rem call gg rs 
rem qq

rem call jv rs
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
:hw3

cls

echo. & echo * Call the 3 different versions of hello world.

call t d>nul

:
call sep
echo. & echo * Version 1.
echo.
python hello-world.py

:
call sep
echo. & echo * Version 2.
call ph hello-world.py

:
call sep
echo. & echo * Version 3.
call ph hw

:
echo.
exit/b



:_
:rs3

cls

echo. & echo * Call the 3 different versions of reverse string.

call t d>nul

:
call sep
echo. & echo * Version 1.
python reverse-string.py Oct-22-2023

:
call sep
echo. & echo * Version 2.
call ph rsf

:
call sep
echo. & echo * Version 3.
call ph rs Oct-22-2023-tonto

:
echo.
exit/b



:_

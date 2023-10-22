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

:gg

call gg hw

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

:gu

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

echo. & echo * React hello-world from %0.

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

:
call sep
call :cs

:
call sep
call :gg

:
call sep
call :gu

:
call sep
call :js

:
call sep
call :jv

:
call sep
call :py

:
call sep
call :re

:
call sep
call :ts

:
echo.
exit/b



:_

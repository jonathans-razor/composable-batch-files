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

call t iw>nul
cd hello-world-c-sharp
call dn run hello-world.go

exit/b



:_

:go

call t iw>nul
call gol run hello-world.go

exit/b



:_

:js

call t iw>nul
call nd run hello-world.js

exit/b



:_

:jv

call t iw>nul
call jv run HelloWorld.java

exit/b



:_

:ng

rem qq
call t iw>nul
cd hello-world-angular
call ang run

exit/b



:_

:py

call t iw>nul
call pyt run hello-world.py

exit/b



:_

:ts

rem echo. & echo * Hello world from TypeScript.
call nd run hello-world.ts

exit/b



:_
:main

cls

echo. & echo * Hello world from everyone.

call :cs
call :go
call :js
call :jv
call :py

exit/b



:_

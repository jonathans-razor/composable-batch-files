:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help
goto %1



:_
:help

cls

echo. & echo  * Language functions aggregrate runner tester batch file.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Function alias you wish to run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 vers

exit/b

lu: 
Sep-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



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



:_+ Language Functions Template Code Family (!fylg) (skw supported-languages-series-jj)



::_
:dt

cls

echo. & echo * Date time from %0.bat.

:
call sep
rem call gg ep 44 hat cat 1 2 3 4 5 6 7

:
call sep
rem call jv ep Oct-22-2023 1 2 3

:
call sep
rem call nd ep Oct-22-2023

:
call sep
call ph dt

:
echo.
exit/b



::_
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
call lfb ep hat cat 1 2 3 Oct-22-2023

:
call sep
call nd ep Oct-22-2023

:
call sep
call ph ep

:
echo.
exit/b



::_
:hw

cls

echo. & echo * Hello world from supported-languages-series-jj.

:
call dn %1

:
call gg %1

:
call jv %1

:
call lfb %1

:
call nd %1

:
call ph %1

:corner-case

exit/b



::_
:rs

echo. & echo * Reverse string from %0.

cls

:
call sep
call gg rs Oct-22-2023-6

:
call sep
call jv rs Oct-22-2023-7

:
call sep
call nd rs Oct-22-2023-2

:
call sep
call ph rs Oct-22-2023-8

:
echo.
exit/b



::_
:vers

cls

echo. & echo * Version from %0.

:
call sep
call gg vers

:
call sep
call jv vers

:
call sep
call nd vers

:
call sep
call ph vers

exit/b



:_ (!eflf)

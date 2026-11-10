:_

@echo off
if "%~1" == "?" goto help
if "%~1" == "" goto help
goto %1



:_
:help

cls

echo. & echo  * Supported Languages functions aggregrate runner tester batch file.

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



:_+ Language Functions Template Code Family (!fclg) (skw supported-languages-series-jj)



::_
:ep

cls

echo. & echo * Echo parameters from %0.bat. **** Under construction. Jan-2-2024

if "%~2" == "" err Parameter 2: The parameters to are required.

:
call sep
call dn ep %2

:
call sep
call gg ep %2

:
call sep
call jv ep %2

:
call sep
call lfb ep %2

:
call sep
call nd ep %2

:
call sep
call ph %2

:corner-case

echo.

exit/b



::_
:hw
:hws

cls

echo. & echo * Hello worlds from supported-languages-series-jj.

:Angular
echo. & echo * Hello world from Angular is available at "gu hw".

:Batch
call slf %1

:C#/.NET
call dn %1

:Golang
call gg %1

:Java
call jv %1

:JavaScript
call nd %1

:JavaScript - Browser Version
echo. & echo * Hello world from JavaScript Browser version at "nd hwb".

:Perl
echo. & echo * Hello world from Perl is available at "perl hello-world.pl".

:Python
call ph %1

:React
echo. & echo * Hello world from React is available at "nm hw".

:TypeScript
call ts hw

:Vue.js - Simple Hello World
call fx vuejs-hw fn br

:Vue.js tutorial.
rem call nm vue

:corner-case

exit/b



::_
:rs

cls

echo. & echo * Reverse string from supported-languages-series-jj.

call sep 2024

if "%~2" == "" (
  set cbf-string-to-reverse=Desserts
) else (
  set cbf-string-to-reverse=%2
)

:
echo.
call dn %1 %cbf-string-to-reverse%

:
echo.
call gg %1 %cbf-string-to-reverse%

:
echo.
call jv %1 %cbf-string-to-reverse%

:
echo.
call nd %1 %cbf-string-to-reverse%

:
echo.
call ph %1 %cbf-string-to-reverse%

:corner-case

echo.
call sep 2024

exit/b



::_
:vers

cls

echo. & echo * Versions from supported languages from %0.bat.
call sep 2024

:
echo.
call dn vers

:
echo.
call gg vers

:
echo.
call jv vers

:
echo.
call nd vers

:
echo.
call ph vers

:corner-case

echo.
call sep 2024

exit/b



:_ (!eflf)

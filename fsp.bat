:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * Perennial filenames search.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1: Nickname function to execute.

exit/b



:_

  .--.      .--.      .--.      .--.      .--.
:::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
       `--'      `--'      `--'      `--'      `--' 



:_

:concop

echo. & echo * Conflicted Copy Report

rem lu: Feb-15-2019

echo.
set cbf-fn=%temp%\conflicted copy report.txt

echo. > "%cbf-fn%"
 >> "%cbf-fn%"

echo -------------------------------------------------------- >> "%cbf-fn%"

rem 1.
call t s
echo. >> "%cbf-fn%"
echo ******* Current folder: %cd% >> "%cbf-fn%"
echo. >> "%cbf-fn%"
dir "*conflict*.*" /s >> "%cbf-fn%"

rem 2.
call t mecfg
echo. >> "%cbf-fn%"
echo ******* Current folder: %cd% >> "%cbf-fn%"
echo. >> "%cbf-fn%"
dir "*conflict*.*" /s >> "%cbf-fn%"

rem 3.
call t drmecfg
echo. >> "%cbf-fn%"
echo ******* Current folder: %cd% >> "%cbf-fn%"
echo. >> "%cbf-fn%"
dir "*conflict*.*" /s >> "%cbf-fn%"

rem 4.
call t smecfg
echo. >> "%cbf-fn%"
echo ******* Current folder: %cd% >> "%cbf-fn%"
echo. >> "%cbf-fn%"
dir "*conflict*.*" /s >> "%cbf-fn%"

call an no

call m assoc_pf

call r

exit/b



:_

:log4
:log4j

echo. & echo * Log4j.

call t m2

call fs log4j*.jar

exit/b



:_ (!rfsp) (mov-6)

:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call paco "%~1" . && goto run

goto %1



:_
:help
cls
echo. & echo * Python.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:

echo. & echo   Batch file style: Multipurpose

echo. & echo * Samples:
echo   %~n0 hello-world.py

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:upgr

echo. & echo * Upgrade Python.

python -m pip install --upgrade pip

exit/b



:_
:list
:pass in an array of numbers

:pass in an array of strings



echo. & echo * Show installed modules.

echo.
pip list

exit/b




:_
:unin

echo. & echo * Uninstall module.

if "%~2" == "" (
  call err Expected module name. Sep-21-2023_12_48_PM
  exit/b
)

@echo on
pip uninstall %2

exit/b



:_
:inst

echo. & echo * Install module.

if "%~2" == "" (
  call err Expected module name. Sep-21-2023_12_47_PM
  exit/b
)

echo.
@echo on
pip install %2

exit/b



:_
:uvic

echo. & echo * Run uvicorn.

echo.
uvicorn hello-world-api-using-python-and-fastapi:app --reload

exit/b

lu:
Sep-27-2023



:_+ Language Feature Family (!fylgphy) (skw language-functions-series-jj)



::_
:docs
call sf phdocs
exit/b



::_
:dt
echo. & echo * Date time from %0.
call t d>nul
echo.
python date.py
exit/b



::_
:dtt
:rf-dtt
rem echo. & echo * Date time from %0. NOTE: This is an official timestamp so whitespace is allowed.
rem echo.
python date-time.py
exit/b



::_
:ep
echo. & echo * Echo parameters from %0.bat.
call t dsa>nul
call %0 echo-parameters.py %*
exit/b



::_
:hw
echo. & echo * Hello world from %0.bat.
call t dsa>nul
call ph hello-world.py
exit/b



::_
:rsf

echo. & echo * Reverse string with furnished parameter from "%0".
call t dsa>nul
call :run reverse-string.py hello-Oct-22-2023
exit/b
This works!



::_
:rsf2

cls

echo. & echo * Reverse string with furnished parameter from %0.bat.
call t dsa>nul
call :run reverse-string.py %*
exit/b
This reverses the label name, not the passed in string.



::_
:rsf3

cls

echo. & echo * Reverse string with furnished parameter from %0.bat.
call t dsa>nul
shift
shift
call :run reverse-string.py %*
exit/b
This also reverses the label name, not the passed in string.



::_
:rsf4

cls

echo. & echo * Reverse string with furnished parameter from %0.bat.
call t dsa>nul
call :rs-test reverse-string.py %*
exit/b



::_
:rs-test

cls

echo. & echo * Reverse string test from %0.bat.
call t dsa>nul
echo. & echo p0: %0
echo. & echo p1: %1
echo. & echo p2: %2
echo. & echo p3: %3
shift/2
echo. & echo p0: %0
echo. & echo p1: %1
echo. & echo p2: %2
echo. & echo p3: %3
exit/b



::_
:rs
echo. & echo * Reverse string from %0.
call t dsa>nul
echo.
python reverse-string.py %2
exit/b



::_

:irun

echo. & echo * Internal run Python file from %0.bat.

rem call fe "%~1" || exit/b
rem call paco "%~1" .py || exit/b

echo. & echo p0: %0
echo. & echo p1: %1
echo. & echo p2: %2
echo. & echo p3: %3

shift
shift
shift/2

echo. & echo p0: %0
echo. & echo p1: %1
echo. & echo p2: %2
echo. & echo p3: %3

echo.
@echo on
python %*
@echo off

exit/b



::_

:run

rem echo. & echo * Run Python file from %0.bat.

call fe "%~1" || exit/b
call paco "%~1" .py || exit/b

echo.
python %*

exit/b



::_
:vers

echo. & echo * Version from %0.bat.

echo.
python --version

exit/b

* Sep-21-2023_12_05_PM: Python 3.11.5

* Sep-21-2023_11_54_AM: Python 3.10.0



:_ (!efpyt)

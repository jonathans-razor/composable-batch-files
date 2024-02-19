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

lu:
Jan-2-2024

supported-languages-series-jj



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
:uvic

echo. & echo * Run uvicorn.

echo.
uvicorn hello-world-api-using-python-and-fastapi:app --reload

exit/b

lu:
Sep-27-2023



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
:venv

echo. & echo * Install virtual environment.

echo.
python -m venv .venv

exit/b
lu:
Nov-1-2023



:_
:ave

echo. & echo * Activate virtual environment.

call fn .venv || exit/b

echo.
.venv/Scripts/activate

exit/b
lu:
Nov-1-2023



:_
:dve

echo. & echo * Dectivate virtual environment.

call fn .venv || exit/b

echo.
.venv/Scripts/deactivate

exit/b
lu:
Nov-1-2023



:_
:inst-r

echo. & echo * Install requests.

echo.
@echo on
pip install requests

exit/b



:_
:inst-f

echo. & echo * Install flask.

echo.
pip install flask

exit/b



:_
:inst-fs

echo. & echo * Install flask sqlalchemy.

echo.
pip install flask-sqlalchemy

exit/b



:_
:lr

echo. & echo * List requirements.

echo.
pip freeze>requirements.txt

exit/b
lu:
Nov-1-2023



:_
:star

echo. & echo * Start a Flask application.

call fn .venv || exit/b

set FLASK_APP=application.py
set FLASK_ENV=development

echo.
start "Flask" cmd /k flask run --debug

exit/b

rem lu:
Nov-1-2023



:_+ Versions Family (!fcvers)



::_
:vers

echo. & echo * Version from %0.bat.

echo.
python --version

exit/b

 Date          Version  Machine
 -----------  --------  -------

  Jan-9-2024    3.12.1      XPS

 Dec-11-2023    3.11.5      XPS

 Sep-21-2023    3.10.0      XPS



::_
:vers-pip

echo. & echo * Pip version from %0.bat.

echo.
pip --version

exit/b



::_
:verso

echo. & echo * Online versions information.

set cbf-parameter=https://en.wikipedia.org/wiki/History_of_Python#Table_of_versions

call an br

call r

exit/b



:_+ Virtual Environment Setup



::_
:sve

echo. & echo * Set up a OpenAI virtual environment.

call t oa

python -m venv openai-env

exit/b



::_
:acti

echo. & echo * Activate OpenAI virtual environment.

call t oa

openai-env\Scripts\activate

exit/b



::_
:deac

echo. & echo * Deactivate OpenAI virtual environment.

call t oa>nul

echo.
openai-env\Scripts\deactivate

exit/b



:_
:iopl

echo. & echo * Install OpenAI Python library.

pip install --upgrade openai

exit/b



:_+ Language Feature Family (!fclgphy) (skw supported-languages-series-jj)



::_
:a2n
cls

echo. & echo * Add 2 numbers.

rem python add-2-numbers.py 55 102
@echo on
call %0 add-2-numbers.py 55 102

exit/b



::_
:c4f
cls
echo. & echo * Call 4 functions.
echo.
python call-4-functions.py

exit/b



::_
:docs

echo. & echo * Online doucmentation.

call fx %0 docs

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
call pn c>nul
python %cbf-pt%\date-time.py

exit/b



::_
:ep

echo. & echo * Echo parameters from %0.bat.
call t dsa>nul
call %0 echo-parameters.py %*

exit/b



::_
:fz

echo. & echo * Fizz from %0.
call t d>nul
echo.
%0 fizz.py

exit/b



::_
:hw

rem echo. & echo * Hello world from %0.bat.

call t dsa>nul
call ph hello-world.py

exit/b



::_
:rs

echo. & echo * Reverse string (%2) from %0.bat.

call t d>nul

%0 reverse-string.py %2

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
:ls
echo. & echo * Lower case string from %0.
call t d>nul
if "%~2" == "" (
  call err Expected a string in parameter 2, which is missing.
  exit/b
)

echo.
python lower-case-string.py %2
exit/b



::_
:us
echo. & echo * Upper case string from %0.
call t d>nul
if "%~2" == "" (
  call err Expected a string in parameter 2, which is missing.
  exit/b
)

echo.
python upper-case-string.py %2
exit/b



::_

:irun

echo. & echo * Internal run Python file from %0.bat.

rem call fn "%~1" || exit/b
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

call fn "%~1" || exit/b 5
call paco "%~1" .py || exit/b

echo.
python %*

exit/b



:_ (!efpyt)

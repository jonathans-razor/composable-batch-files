:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help
cls
echo. & echo * Python.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo   Parameter 1:
echo  

echo. & echo   Batch file style: Multipurpose

echo. & echo   Samples:
echo   %~n0 
echo   %~n0 hello-world.py

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:upgr

python -m pip install --upgrade pip

exit/b



:_
:vers

echo.
rem py --version
python --version

exit/b

* Sep-21-2023_12_05_PM: Python 3.11.5

* Sep-21-2023_11_54_AM: Python 3.10.0



:_
:list

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



:_
:r
:run

rem echo. & echo * Run Python file.

call fe "%~2" || exit/b
call paco "%~2" .py || exit/b

echo.
python "%~2" %3 %4 %5 %6 %7 %8 %9

exit/b



:_

:_

@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help

echo %1| find /i ".">nul
if errorlevel 1 goto %1

goto execute-python-file



:_
:help
cls
echo. & echo * Python

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

:execute-python-file
:run

echo. & echo * Run python file.

call fe "%~1" & if errorlevel 1 exit/b
call fnc "%~1" .py & if errorlevel 1 exit/b

echo.
python "%~1"

exit/b



:_

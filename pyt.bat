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

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:inst

echo. & echo * Install module.

if "%~2" == "" (
  call err Expected module name. Sep-21-2023_12_47_PM
  exit/b
)

@echo on
pip install %2

exit/b



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
:execute-python-file

echo. & echo * Execute python file.

call fe "%~1" & if errorlevel 1 exit/b
call fnc "%~1" .py & if errorlevel 1 exit/b

python "%~1"

exit/b



:_

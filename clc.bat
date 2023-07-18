:_

@echo off

echo. & echo * Simple calculator that executes 4 basic math functions.

if "%~1" == "" goto help

if "%~1" == "?" goto help

if "%~2" == "" (
  echo. & echo * Error: Missing second parameter.
  goto help
)

if "%~3" == "" (
  echo. & echo * Error: Missing third parameter.
  goto help
)

if "%~2" == "+" goto addition

if "%~2" == "-" goto subtraction

if "%~2" == "*" goto multiplication

if "%~2" == "/" goto division

echo.
echo Invalid second parameter.

goto help



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: First number
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Operator (+, -, * or /)

echo.
echo %parameter_2%

set parameter_3=Parameter 3: Second number

echo.
echo %parameter_3%

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:addition

set fp=* Addition.

echo.
echo %fp%

set /a addition=%1+%3

echo. & echo %addition%

exit/b



:_

:subtraction

set fp=* Subtraction.

echo.
echo %fp%

set /a subtraction=%1-%3

echo.
echo %subtraction%

exit/b



:_

:multiplication

set fp=* Multiplication.

echo.
echo %fp%

set /a multiplication=%1*%3

echo.
echo %multiplication%

exit/b



:_

:division

set fp=* Division.

echo.
echo %fp%

set /a division=%1/%3

echo.
echo %division%

exit/b



:_

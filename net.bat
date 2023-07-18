:_

@echo off

if "%~1" == "" goto pl
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * A wrapper around the netstat command.

echo. & echo * Usage: %0 [space separated parameter(s)]

exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:post
:find-5432

echo. & echo * Find 5432. Postges port?.
rem netstat -ano | findstr :<yourPortNumber>

echo.
netstat -a -n -o | findstr :5432

exit/b



:_

:pl

set fp=* Plain.

echo.
echo %fp%

echo.
netstat -a -n -o

exit/b



:_

:s

set fp=* Search for string.

echo.
echo %fp%

netstat -ano | findstr :%1

exit/b



:_

:merc1

set fp=* Netstat used by Mercury version 1.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
netstat -a -n>%temp%\j1.txt

exit/b



:_

:merc2

set fp=* Netstat used by Mercury version 2.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
netstat -an>%temp%\j2.txt

exit/b



:_ (!rfsp) (mov-6)
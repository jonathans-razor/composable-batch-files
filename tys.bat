:_

@echo off

if "%~1" == "?" goto help

goto %1



:_

:help

cls

echo. & echo * TypeScript transpiler.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1: 

echo. & echo   Name of the function you wish to run.

exit/b

rem lu: Sep-20-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:runi

set fp=* Run index.

tsc index

exit/b



:_

:init

set fp=* Initialize.

tsc --init

exit/b



:_

:watch

set fp=* Watch all files in a folder.

tsc -w

exit/b



:_
:vers
set fp=* Version.
echo.
tsc --version
exit/b



:_
:t
echo. & echo * Transpile a TypeScipt file into JavaScript file.
rem qq

call fe "%~2" & if errorlevel 1 exit/b

echo %2| find /i ".ts">nul
if errorlevel 1 (
  call err Expected a TypeScipt file.
  exit/b
)

tsc "%~2"
exit/b



:_
:w
set fp=* Watch a particular TypeScript file.

call fe "%~2" & if errorlevel 1 exit/b

echo %2| find /i ".ts">nul
if errorlevel 1 (
  call err Expected a TypeScipt file.
  exit/b
)

tsc -watch "%~2"

exit/b



:_

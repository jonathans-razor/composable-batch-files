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

set fp=* Run index from %0.

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
rem echo. & echo * Version from %0.
echo.
tsc --version
exit/b



:_
:hw
rem echo. & echo * Hello world from %0.
call t dsa>nul
rem If I uncomment the transpile statement, the program won't run. Hmm. Oct-12-2023
rem tsc hello-world-transpile-target.ts
call nd hello-world-transpile-target.js
exit/b



:_
:run

echo. & echo * Transpile a TypeScipt file into JavaScript file.

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

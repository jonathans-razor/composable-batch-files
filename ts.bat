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

echo. & echo * Run index from %0.

tsc index

exit/b



:_

:init

echo. & echo * Initialize.

tsc --init

exit/b



:_

:watch

echo. & echo * Watch all files in a folder.

tsc -w

exit/b



:_
:vers
rem echo. & echo * Version from %0.
echo.
tsc --version
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

echo. & echo * Watch a particular TypeScript file.

call fe "%~2" & if errorlevel 1 exit/b

echo %2| find /i ".ts">nul
if errorlevel 1 (
  call err Expected a TypeScipt file.
  exit/b
)

tsc -watch "%~2"

exit/b



:_
:hw

echo. & echo * Hello world from %0.

call t dsa>nul
rem If I uncomment the transpile statement, the program won't run. Hmm. Oct-12-2023
rem tsc hello-world-transpile-target.ts
call nd hello-world-transpile-target.js

exit/b



:_
:rs

cls

echo. & echo * %1.

@echo on

call tsc reverse-string-3.ts

set cbf-string=%2
if "%~2" == "" set cbf-string=desserts

echo.
node reverse-string-3.js %cbf-string%

@echo off

exit/b

Jan-15-2024



:_

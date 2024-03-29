:_
@echo off

if "%~1" == "?" goto help

goto main



:_
:help

cls

echo. & echo * Make an api call.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
cecho   x

echo. & echo   Batch file style: Multipurpose
echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 

exit/b

lu: 
Feb-22-2024



:_

    .-.-.     .-.-.     .-.-.     .-.-.     .-.-.     .-.-.     .-.-.   
   / / \ \   / / \ \   / / \ \   / / \ \   / / \ \   / / \ \   / / \ \   / / 
  / /   \ \ / /   \ \ / /   \ \ / /   \ \ / /   \ \ / /   \ \ / /   \ \ / / 
         `-`-'     `-`-'     `-`-'     `-`-'     `-`-'     `-`-'     `-`-'



:_
:main

set cbf-cu=
set cbf-lh=
set cbf-url=
set cbf-cu-target=

call n %1

if errorlevel 1 exit/b

if not "%cbf-cu%" == "" (
  set cbf-cu-target=%cbf-cu%
  goto next
)

if not "%cbf-url%" == "" (
  set cbf-cu-target=%cbf-url%
  goto next
)

if not "%cbf-lh%" == "" (
  set cbf-cu-target=%cbf-lh%
  goto next
)

if "%cbf-cu-target%" == "" (
  call err Could not find a suitable curl target for "%1".
  exit/b
)



:_
:next

curl -o %tmp%\api.json %cbf-cu-target% 2>nul

call t c>nul
echo.
node read-value-property.js
rem node read-name-property.js

rem set cbf-parameter=%tmp%\api.json
rem call an kr
rem call r

exit/b



:_

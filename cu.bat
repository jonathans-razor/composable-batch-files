@echo off
if "%~1" == "?" goto help
goto main



:help
cls
echo. & echo * Curl leveraging the  nicknames dictionary.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: Alias to process.

echo. & echo * Batch file style: Single purpose nd.

echo. & echo * Samples:
echo   %~n0 jfro

exit/b

rem creation date: 



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

set cbf-cu=
set cbf-url=
set cbf-cu-target=

call n %1

if errorlevel 1 exit/b

if not "%cbf-url%" == "" (
  set cbf-cu-target=%cbf-url%
)

if not "%cbf-cu%" == "" (
  set cbf-cu-target=%cbf-cu%
)

if "%cbf-cu-target%" == "" (
  call err Could not find a suitable curl target for "%1".
  exit/b
)

@echo on
curl %cbf-cu-target%>%tmp%\curl-%1.txt
@echo off

call an kr
set cbf-parameter=%tmp%\curl-%1.txt
call r

exit/b

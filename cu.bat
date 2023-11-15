@echo off
title: %0

call paco "%~1" -20>nul && goto %1
if "%~1" == "?" goto help

goto main



:help
cls

echo. & echo * Curl leveraging the nicknames dictionary and date runs.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: 
echo   Alias to process.
echo   Or date function to run. Should conatin the string "-20".

echo. & echo   Batch file style: Single purpose nd.

echo. & echo * Samples:
echo   %~n0 jfro
echo   %~n0 Nov-15-2023

exit/b

lu:
Nov-15-2023



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



:_
:Nov-15-2023
cls

echo. & echo * Download Kubernetes CLI tool K9s.
rem Provenance: Jul-16-2021_11_43_AM qq1
curl -o c:\a\k9s.tar.gz -sLO https://github.com/derailed/k9s/releases/download/v0.27.4/k9s_Linux_amd64.tar.gz
exit/b

lu: 
Nov-15-2023



:_

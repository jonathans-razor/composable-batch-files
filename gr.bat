:_

@echo off

if "%~1" == "/i" goto search-for-ip-addresses
if "%~1" == "/n" goto search-npe-logs
if "%~1" == "/ver" goto :/ver
if "%~1" == "" goto help
if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Grep functions.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   If "/i", search for IP addresses.
echo   If "/n", search NPE logs.
echo   Pipe source command.

echo. & echo * Parameter 2 (Optional):
echo   Filter to apply.

echo. & echo * Batch file style: Multipurpose

echo. & echo * Sample(s):
echo   %0 /i
echo   %0 /n
echo   %0 dir ma

exit/b
rem lu: Aug-10-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:search-npe-logs

echo. & echo * Search NPE logs.

set cbf-pt=/app/oracle/config/domains/base_domain

grep -Rw logs/ -e '10001102159'

exit/b


vim AdminServer.log98528

cd /u01/app/oracle/config/domains/base_domain/lib
cd /app/oracle/config/domains/base_domain
cd /u01/app/oracle/config/domains/base_domain/lib



:_

:search-for-ip-addresses

echo. & echo * Search for IP addresses.

call pn gub>nul

echo.
"%cbf-pt%"\grep -oE "([0-9]{1,3}\.)([0-9]{1,3}\.)([0-9]{1,3}\.)([0-9]{1,3})" *.*>%tmp%\grep-ip-search-results.txt

if errorlevel 1 (
  echo. &  echo * No results found. 
  exit/b
)

call an npp>nul

start "Test Title" "%cbf-app%" "%tmp%\grep-ip-search-results.txt"

exit/b
cd: Jun-28-2023


rem This works.
rem grep -oE "([0-9]{1,3}\.)([0-9]{1,3}\.)([0-9]{1,3}\.)([0-9]{1,3})" *.txt
rem grep -oE "([0-9])" *.txt
rem grep -oE "([0-9]{1,3}\.){ 3}[0-9]{1,3}" *.txt



:_

:/ver

call pn gub>nul

echo.
"%cbf-pt%"\grep --version

exit/b



:_

:main

call pn gub>nul

%1 | "%cbf-pt%"\grep %2

exit/b



:_

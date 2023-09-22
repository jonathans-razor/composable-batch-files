:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

call el /c>nul

if "%~1" == "grep" goto linux-help
if "%~2" == "-l" goto linux-help

if "%STOMP_USERNAME%" == "" goto windows-help

goto linux-help



:_
:help

echo. & echo * Show the help file of a function routed parameter.

echo. & echo * Usage: %0 [space separated parameter(s)]
echo.  Parameter 1: Application name.
echo.  Parameter 2: If equals "-l", go to Linux style help.

echo. & echo * Batch file style: Multipurpose.

echo. & echo * Samples:
echo.  %0 curl /l
echo.  %0 find
echo.  %0 dir
echo.  %0 dotnet

echo.
echo * Note: Maven must be installed for this to work.
echo.  %0 mvn /l

echo.
echo * Note: Commands such as "ssh" strangely cannot be piped to a file. May-08-2023
echo.  %0 ssh

exit/b
rem lu: Jul-6-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:git-usr-bin-help
echo. & echo * Git usr bin style help for "%1", piped to a file.
echo.
call gub %1 --help>%tmp%\%1-help.txt

if errorlevel 1 (
  echo.
  call err Couldn't find a working help call.
)

call an kr
set cbf-parameter=%tmp%\%1-help.txt
call r
exit/b



:_
:windows-help
echo. & echo * Windows style help for "%1", piped to a file. Under construnction.

echo.
rem This is the problematic line. I can't get the append " 1" out of the call.
rem Also note that there is no "call" statement in fromt of the percent 1 like there is in the Linux version. Sep-22-2023
%1/?>%tmp%\%1-help.txt

if errorlevel 1 (
  echo.
  echo * Reroute to Linux style help.
  goto linux-help
  exit/b
)

call an kr
set cbf-parameter=%tmp%\%1-help.txt
call r

exit/b



:_
:linux-help
echo. & echo * Linux-style help for "%1", piped to a file.

echo.
@echo on
call %1 --help>%tmp%\%1-help.txt

if errorlevel 1 (
  call err Sep-22-2023
  rem echo.
  rem echo * Reroute to Git-usr-bin style help.
  exit/b
  rem goto git-usr-bin-help
)

call an kr
set cbf-parameter=%tmp%\%1-help.txt
call r
exit/b



:_

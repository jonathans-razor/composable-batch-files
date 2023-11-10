@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help
if "%~2" == "" goto %1

goto main



:_
:help
cls

echo. & echo * A wrapper around fx.bat. Execute the namesake DCV for the passed in alias.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1 (Optional): Alias to process.
echo   Parameter 2 (Optional): DCV.
echo. & echo * Batch file style: Multipurpose

echo. & echo * Example(s):
echo   cf ht
echo   gl np
exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:cf

echo. & echo * Open the Confluence Homepage.

echo.
call fx cfrp %1 kr>nul

exit/b



:_

:demo

echo. & echo * Demo series collection.

echo. & 

call fx demo-series-0 url kr>nul

exit/b



:_
:gd
call fx rt %1 br>nul
exit/b



:_
:gh
call sf cfgh
exit/b



:_
:gs
call fx rt %1 br
exit/b



:_

:je

echo. & echo * Jenkins root.

echo.
call fx jero %1 kr

exit/b



:_
:ji
echo. & echo * Default Jira ticket.
call fx np ji kr
exit/b



:_
:lh
rem echo. & echo * Default Localhost.
call fx 4200 lh br
exit/b



:_
:pr

echo. & echo * CVT pull requests webpage.

echo.
@echo on
call fx cvt %1 kr>nul

exit/b



:_

:rl

echo. & echo * Art Playbook releases webpage.

echo.
call fx cp %1 kr>nul

exit/b



:_

:va

echo. & echo * Vault home page.

echo.
call fx et %1 kr>nul

exit/b



:_
:wi
echo. & echo * Wikipedia home page.
call fx wi %1 kr>nul
exit/b



:_
:main
rem echo. & echo * FXW main.
fx %2 %1 %3
exit/b

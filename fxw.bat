@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help
if "%~2" == "" goto %1

goto main



:_
:help
cls

echo. & echo * A wrapper around fx.bat. Execute the namesake DCV for the passed in alias.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1: Alias to process.
echo   Parameter 2: DCV.
echo. & echo   Batch file style: Multipurpose

echo. & echo * Example(s):
echo   %0 cf ht
echo   %0 gl np
exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:bm

echo. & echo * Open the Bookmarks Default page.

call fx v %1 kr>nul

exit/b



:_
:cf

echo. & echo * Open the Confluence Homepage.

call fx cfrp %1 kr>nul

exit/b



:_
:demo

echo. & echo * Demo series collection.

call fx demo-series-0 url kr>nul

exit/b



:_
:docs

call fx ph docs>nul

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
:gh2

call sf cfgh

exit/b



:_
:gs

call fx rt %1 nt

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
:jpg
:png

echo. & echo * Default.

if "%~2" == "" err Default behavior is undefined for "%1" DCV. Feb-23-2024-4-29-PM

exit/b

rem:
This is CBF is used for those DCV Leverage batch files that don't have a default behavior.
This makes the error message more understandable. Feb-23-2024



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
@echo on
fx %2 %1 %3
@echo off

exit/b

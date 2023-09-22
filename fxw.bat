@echo off
set cbf-%1=
if -%~1- == -- goto help
if -%~1- == -?- goto help
if -%~2- == -- goto %1
if -%~2- == -?-goto help
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

set fp=* Open the Confluence Homepage.

echo.
echo %fp%

call fx cfrp %1 kr>nul

exit/b



:_

:demo

set fp=* Demo series collection.

echo. & echo %fp%

call fx demo-series-0 url kr>nul

exit/b



:_
:gd
call fx rt %1 br>nul
exit/b



:_
:gh
call fx ghas %1 kr>nul
exit/b



:_
:gs
call fx rt %1 op
exit/b



:_

:je

set fp=* Jenkins root.

echo.
echo %fp%

call fx jero %1 kr

exit/b



:_
:ji
echo. & echo * Default Jira ticket.
call fx np ji kr
exit/b



:_

:lh

rem echo. & echo * Bitbucket root 1.

call fx od lh kr

exit/b



:_
:pr

set fp=* CVT pull requests webpage.

echo.
echo %fp%

@echo on
call fx cvt %1 kr>nul

exit/b



:_

:rl

set fp=* Art Playbook releases webpage.

echo.
echo %fp%

call fx cp %1 kr>nul

exit/b



:_

:va

set fp=* Vault home page.

echo.
echo %fp%

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

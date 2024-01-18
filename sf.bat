:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto validate-input



:_

:help

cls

echo. & echo * Surf the internet.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1: URL alias.
echo   Parameter 2 (Optional): The alias of the browser application you wish to use.

echo. & echo   Entangled variable: cbf-url

echo. & echo   Pit of Success Strategy: If cb-url is not found, the algorithm will look for cbf-cf, cbf-gh, etc.

echo. & echo * Examples:
echo   %0 gas
echo   %0 wsj
echo   %0 gas ie
echo   %0 fq kr
echo   %0 tj
echo   %0 rp br
echo   %0 rcc fx

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:validate-input

call i /c>nul

rem echo. & echo * Evaluate the parameter list.

call n %1 || exit/b

if "%cbf-app%" == "" (
  call :use_default_browser
)

if "%~2" == "" (
  rem call :use_default_browser
  call :set-precedence
  exit/b
)

if not "%~2" == "" (
  call :override-default-browser %2
  if errorlevel 1 exit/b
  call :set-precedence %1 %2
  exit/b
)

echo. & echo * Error: Control flow should not reach here. Jul-11-2023_12_08_PM - %0.bat
echo. & echo * On Jul-11-2023, I got this error on the solution was to reopen the command window because there was nothing wrong with this code.

exit/b



:_
:use_default_browser
rem echo. & echo * Use default browser.
set cbf-app=%cbf-default-browser%
exit/b



:_
:override-default-browser
echo. & echo * Override default browser.
call an %1
if errorlevel 1 exit/b
exit/b



:_

:set-precedence

rem echo. & echo * Set precedence.

set cbf-parameter=%cbf-url%

if "%cbf-parameter%" == "" (
  if not "%cbf-cf%" == "" (
    echo. & echo * Confluence.
    set cbf-parameter=%cbf-cf%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-gs%" == "" (
    echo. & echo * Google Sheets.
    set cbf-parameter=%cbf-gs%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-ji%" == "" (
    echo. & echo * Jira.
    set cbf-parameter=%cbf-ji%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-gh%" == "" (
    echo. & echo * GitHub.
    set cbf-parameter=%cbf-gh%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-gl%" == "" (
    echo. & echo * GitLab.
    set cbf-parameter=%cbf-gl%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-bi%" == "" (
    echo. & echo * Bitbucket.
    set cbf-parameter=%cbf-bi%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-yt%" == "" (
    echo. & echo * YouTube.
    set cbf-parameter=%cbf-yt%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-reme%" == "" (
    echo. & echo * Recorded meeting.
    set cbf-parameter=%cbf-reme%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-cn%" == "" (
    echo. & echo * Cbf-cn.
    set cbf-parameter=%cbf-cn%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-lh%" == "" (
    echo. & echo * Cbf-lh.
    set cbf-parameter=%cbf-lh%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-purl%" == "" (
    echo. & echo * Cbf-purl.
    set cbf-parameter=%cbf-purl%
  )
)

if "%cbf-parameter%" == "" (
  if not "%cbf-shar%" == "" (
    echo. & echo * Sharepoint website.
    set cbf-parameter=%cbf-shar%
  )
)

if "%cbf-parameter%" == "" (
  call err Could not find a suitable CBF parameter for sf.bat to use. Nov-17-2020_7_03_PM
  exit/b
)

goto main



:_

:main

echo. & echo * Surf the internet.

rem lu: Jan-31-2018

call r

rem Putting this line here makes debugging a little difficult because it is hard to see
rem that the variable is set at all. Mar-4-2019
set cbf-specific_browser=

exit/b



:_

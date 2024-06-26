:_

@echo off

if "%~1" == "?" goto help

goto main



:_

:help

cls 

echo. & echo * Open any file with any application using a DCV.

echo. & echo   Usage: %0 [space separated parameter(s)]

echo. & echo   Parameter 1: General dictionary alias.
        echo   Parameter 2: DCV.
        echo   Parameter 3: Application alias.

echo. & echo   Batch file style: Custom.

echo. & echo   Sample(s):
echo   %0 2154 java3 ij

echo. & echo   This is a webpage!
echo   %0 arte gh2 kr

echo. & echo   This is a Windows Explorer location!
echo   %0 aws pt2 wiex

echo. & echo   %0 owok yt ffx
echo   %0 hbit bi edge
echo   %0 gh jj edge
echo   %0 wl app vsc
echo   %0 nd fz vc
echo   %0 vu gha
echo   %0 vu gha br
echo   %0 hq yt11 ffx

exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:path-exists

if not exist "%cbf-expanded-variable%" (
  echo.
  echo * Note: The CBF Expanded variable "%cbf-expanded-variable%" did not previously exist. Aug-13-2021_12_18_PM
)



:_

:finish-up

set cbf-parameter=%cbf-expanded-variable%

call r

exit/b



:_
:main

call i /c>nul
call sdv %1 || exit/b

call m compose_variable %2

if "%cbf-expanded-variable%" == "" (
  call err There is no definition for "cbf-%2" for the alias "%1". Feb-17-2023-12-38
  exit/b
)

if not "%3" == "" call an %3>nul

if errorlevel 1 err Error during application assignment. Mar-21-2024-2-40-PM

if "%cbf-app%" == "" call an kr>nul

if errorlevel 1 err Error during application assignment 2. May-8-2024-12-41-PM

rem echo. & echo * Expanded variable: "%cbf-expanded-variable%"

echo %cbf-expanded-variable% | find /i "http">nul

if %errorlevel% == 0 (
  goto finish-up
)

call m expand-to-path-only "%cbf-expanded-variable%"

rem echo. & echo * cbf-expand-to-path-only-pt: %cbf-expand-to-path-only-pt%

if exist "%cbf-expand-to-path-only-pt%" (
  rem echo. & echo * Path exists.
  goto path-exists
)

echo. & echo * Error: the path for the file cbf-expanded-variable: "%cbf-expanded-variable%" doesn't exist. Aug-13-2021_12_19_PM

exit/b 1



:_

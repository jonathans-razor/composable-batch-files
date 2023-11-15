:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help
if "%~2" == "" goto help

goto main



:_

:help

cls

echo. & echo * Use a DCV to copy a cbf variable to the clipboard.

echo. & echo * Usage: %0 [space separated parameter(s)]
echo   Parameter 1: Alias.
echo   Parameter 2: DCV.

echo. & echo * Batch file style: Single task.

echo. & echo * Examples:
echo   %0 sr66 hostname
echo   %0 jjgh url
echo   %0 fqma ip
echo   %0 ma cron


exit/b
rem lu: Mar-31-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

call n %1>nul

if errorlevel 1 exit/b

call m compose_variable %2>nul

if "%cbf-expanded-variable%" == "" (
  echo. & echo * Error: There is no definition of "cbf-%2" for the alias "%1".
  exit/b
)

rem echo %cbf-expanded-variable%>%tmp%\lpd.txt
rem clip<%tmp%\lpd.txt

echo %cbf-expanded-variable%|clip

echo. & echo * "%cbf-expanded-variable%" has been copied to the clipboard.

exit/b



:_ (!rfsp) (mov-7)

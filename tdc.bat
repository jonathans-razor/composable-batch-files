:_

@echo off

if "%~1" == "?" goto help
goto main



:_
:help

echo. & echo * Favorite child folder batch file.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Alias to process.
exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

rem lu: May-14-2019

set cbf-fc_path=

call n %1

if "%cbf-tdc%" == "" (
  call err cbf-tdc not set.
  exit/b
)

cd /d "%cbf-tdc%"

exit/b



:_ (!rfsp) (mov-7)

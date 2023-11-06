:_

@echo off

echo. & echo * Summary: Super status.

if "%~1" == "?"goto help

goto main



:_

:help

rem lu: 

echo. & echo * Usage: %0 [space separated parameter(s)]

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

cls

call s cbf

call s vdi

exit/b



:_ eof

:_

@echo off

if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Load whatever is in the file c:\a\l1.txt onto the clipboard.

echo. & echo * Usage: %0

exit/b

rem creation date: 
rem lu: 



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

set /p cbf-load-source=<c:\a\l1.txt

rem echo. & echo %cbf-load-source%

echo %cbf-load-source%| clip

exit/b



:_

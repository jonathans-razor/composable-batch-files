:_

@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto main



:_

:help
echo. & echo * Show path in a browser window.
echo. & echo * Usage: %0
exit/b
rem lu: May-15-2023



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main-old

setlocal EnableDelayedExpansion
path>c:\a\j1.txt
set /p test=<c:\a\j1.txt
echo.%test%
echo.
set test=!test:;=^
rem set test=%test:;=^%
rem set test=%test:;=              %
echo.%test%

exit/b



:_

:main-2

set "token=HelloQMZworld"
echo !token:QMZ=^



exit/b



:_

:main3

rem This works!

setlocal EnableDelayedExpansion
set "token=HelloQMZworld"
set newVal=!token:QMZ=^

!
echo !newVal!

exit/b



:_

:main-works

rem This works!

setlocal EnableDelayedExpansion
set "token=HelloQMZworld"
set newVal=!token:QMZ=^

!
echo !newVal!

exit/b



:_

:main-works2    

setlocal EnableDelayedExpansion
path>c:\a\j1.txt
set /p test=<c:\a\j1.txt
echo.%test%
echo.
set newVal=!test:;=^

!
echo !newVal!

exit/b



:_

:main-works3

setlocal EnableDelayedExpansion
path>%tmp%\path.txt
type %tmp%\path.txt
rem echo.
set /p test=<%tmp%\path.txt
echo.
echo 2. !test!
echo.
set test=%test:PATH=%
rem set test=%test:\==%
set test=!test:;=^

!
echo 3. !test!

exit/b

The problem I had with this is that the "set /p" step doesn't seem to be returning the more 
about 1000 characters and the file had more than that many characters. Jun-28-2022



:_

:main-old

setlocal EnableDelayedExpansion
rem type c:\a\j1.txt
rem exit/b
echo.
set /p test=<c:\a\j1.txt
echo.
echo 2. !test!
echo.
rem set test=%test:\==%
set test=!test:Congress=^

!
echo 3. !test!

exit/b



:_
:main

echo. & echo * Show formatted path.

echo.>%tmp%\path.txt
echo.>>%tmp%\path.txt
echo.>>%tmp%\path.txt
echo.>>%tmp%\path.txt
path>>%tmp%\path.txt

set cbf-parameter=%tmp%\path.txt

call an kr>nul

call r

exit/b




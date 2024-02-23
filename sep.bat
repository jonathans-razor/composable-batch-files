:_

@echo off

if "%~1" == "" goto main
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * Draws a separator.

echo. & echo   Usage: %0 [Option parameters]

echo. & echo * Parameter 1:
echo   The name of your preferred separator.

exit/b

lu:
Feb-22-2024



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:2022

rem echo. & echo * Show Ascii art separator.
call n ascii-art-separator-2022>nul
type %cbf-graphic%

exit/b



:_
:2023

rem echo. & echo * Show Ascii art separator - 2023.
call n ascii-art-separator-2023>nul
type %cbf-graphic%

exit/b



:_
:2024

rem echo. & echo * Show Ascii art separator - 2024.
call n ascii-art-separator-2024>nul
type %cbf-graphic%

exit/b



:_
:feb-2024

rem echo. & echo * Show Ascii art separator - 2024.
call n ascii-art-separator-feb-2024>nul
type %cbf-graphic%

exit/b



:_
:main

rem echo. & echo * Show Ascii art separator.
call n ascii-art-separator-feb-2024>nul
type %cbf-graphic%

exit/b



:_
:ascii-art-1
:ascii-art-2
:ascii-art-3
:ascii-art-4

rem echo. & echo * Show Ascii art '%1'.
call n %1>nul
type %cbf-graphic%

exit/b



:_

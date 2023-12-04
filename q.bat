:_

@echo off


if "%~1" == "?" goto help
if "%~1" == "" goto help

call an kr>nul

if "%~1" == "/dfw" goto download-for-windows
if "%~1" == "/b" goto use-bing

goto main



:_

:help

cls

echo. & echo * Query Google.

echo. & echo * Usage: %0

echo. & echo * Parameter 1: 
echo   If equal to "/b", Bing is used.
echo   If equal to "/dfw", the phrase " download for Windows" will be appended to your search query.

echo. & echo * Parameter 2 and greater: search keyword(s)

echo. & echo   No double quotes are required.

echo. & echo * Example(s):
echo   %0 /b What is the meaning of life?
echo   %0 What is the capital of Florida?
echo   %0 /dfw Oracle VirtualBox

exit/b

rem lu: Apr-21-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:download-for-windows
echo. & echo * Download for Windows.
rem On Keld, downloading things sometimes doesn't work in Chrome, so I changed this to Edge. Jan-13-2023
call an edge
set cbf-parameter=https://www.google.com/search?q=download+for+windows+%2 %3 %4 %5 %6 %7 %8 %9
call r
exit/b



:_
:use-bing
echo. & echo p2: %2
set cbf-parameter=https://www.bing.com/search?q=%2 %3 %4 %5 %6 %7 %8 %9?
call an edge
call r
exit/b



:_
:main
call an br
set cbf-parameter=https://www.google.com/search?q=%*?
call r
exit/b



:_

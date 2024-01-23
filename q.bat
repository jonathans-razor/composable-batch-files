:_
@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

call an kr>nul

if "%~1" == "/dfw" goto download-for-windows
if "%~1" == "/b" goto use-bing
if "%~1" == "/kr" goto kr
if "%~1" == "/s" goto use-skw
if "%~1" == "/v" goto use-vue-site

goto main



:_
:help

cls

echo. & echo * Query Google.

echo. & echo   Usage: %0

echo. & echo * Parameter 1: 
echo   "/kr", Chrome is used.
echo   "/b", Bing is used.
echo   "/dfw", the phrase " download for Windows" will be appended to your search query.
echo   "/s", use cbf-skw as the search phrase.
echo   "/v", searches only the Vue docs website.

echo. & echo * Parameter 2 and greater: search keyword(s)

echo. & echo   No double quotes are required.

echo. & echo * Example(s):
echo   %0 /b What is the meaning of life?
echo   %0 What is the capital of Florida?
echo   %0 /dfw Oracle VirtualBox
echo   %0 /s ip

rem I love this one. Jan-9-2024
echo   %0 /s geh

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
:use-vue-site

set cbf-parameter=https://www.google.com/search?q=site:vuejs.org+%2 %3 %4 %5 %6 %7 %8 %9
call r

exit/b



:_
:use-bing

set cbf-parameter=https://www.bing.com/search?q=%2 %3 %4 %5 %6 %7 %8 %9?
call an edge
call r

exit/b



:_
:kr

echo. & echo * Use Chrome.

set cbf-parameter=https://www.bing.com/search?q=%2 %3 %4 %5 %6 %7 %8 %9?
call an kr
call r

exit/b



:_
:kr2

set cbf-parameter=https://www.bing.com/search?q=%2 %3 %4 %5 %6 %7 %8 %9?
call an kr
call r

exit/b



:_
:use-skw

call n %2
set cbf-parameter=https://www.bing.com/search?q=%cbf-skw%
call r

exit/b



:_
:main

echo. & echo * Google whatever you just typed.

set cbf-parameter=https://www.google.com/search?q=%*?
call an br>nul
call r

exit/b



:_

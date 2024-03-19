:_
@echo off

if "%~1" == "?" goto help
if "%~1" == "/a" goto all

goto main



:_
:help

cls

echo. & echo * Stock checker.

echo. & echo   Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1:
echo   x

echo. & echo   Batch file style: Single purpose

echo. & echo * Samples:
echo   %~n0 

exit/b

lu: 
Feb-22-2024



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:all

call %0 ap
call %0 btc
call %0 nv
call %0 pbr

exit/b



:_
:main

set cbf-stock=%1

if "%~1" == "ap" set cbf-stock=aapl
if "%~1" == "btc" set cbf-stock=btc-usd
if "%~1" == "nv" set cbf-stock=nvda

call an kr>nul

set cbf-parameter=https://finance.yahoo.com/quote/%cbf-stock%

call r

exit/b



:_

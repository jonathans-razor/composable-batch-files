:_

@echo off



:_

set cbf-filep=* Create a conflict copy report.

rem echo.
rem echo %cbf-filep%



:_

set fp=* Route callers.

if "%~1" == "?" goto help

goto main



:_

:help

rem lu: Feb-18-2020

echo.
echo Usage: %0

exit/b



:_

:main



:_

:main

echo _,.-'~'-.,__,.-'~'-.,__,.-'~'-.,_  Concop Search Results>%temp%\search_results_concop.txt

echo.>>%temp%\search_results_concop.txt



:_

call t dr

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call t cmac

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call t drcmac

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call t mecfg

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call t sv

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call t drsv

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

set fp=* Open the report.

call an me>nul

start "Test Title" "%cbf-app%" "%temp%\search_results_concop.txt"

exit/b



:_ (!rfsp) (mov-7)

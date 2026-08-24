:_
@echo off
if "%~1" == "?" goto help
goto %1
goto main
goto preprocess



:_
:help
cls
echo. & echo * Open files.
echo. & echo   Usage: 
echo   %~n0 [space separated parameter(s)]
echo. & echo   Parameter 1:
echo   x
echo. & echo   Creation Date:
echo    Aug-23-2026
echo. & echo   Samples:
echo   %~n0 
exit/b



:_

    .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   
   / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / 
        `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'



:_
:preprocess



:_
:main

exit/b



:_
:a
:aff
:aff-xps

echo. & echo * XPS affinity.

set cbf-fn-list="%my documents%\savannah\reach out\J.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\CH.asc"
attrib -r "%my documents%\savannah\reach out\cc.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\DI.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\CI.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\CC.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\CM.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\it3.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\RB.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\TR.asc"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\TJ.asc"

set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
call pn bel>nul
set cbf-fn-list=%cbf-fn-list% "%cbf-pt%\pv.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"
set cbf-fn-list=%cbf-fn-list% "%my documents%\savannah\reach out\JD.asc"

start mew32 %cbf-fn-list%

exit/b

lu:
Oct-4-2023
Apr-8-2022



:_
:ql
echo. & echo * Quickla.
call t ldql>nul
call me Aliases.s>nul
call me Clif.s>nul
call me Finder.s>nul
call me Format.s>nul
call me "Jonathan's_Macros.s">nul
call me ListMgr.s>nul
call me Regexes.s>nul
call me Searcher.s>nul
call me Shared.s>nul

exit/b
Aug-23-2026



:_
:ql2

echo. & echo * Quickla.

set cbf-fn-list="%my documents%\savannah\cmac\Quickla-for-Multi-Edit\regexes.s"

start mew32 %cbf-fn-list%

exit/b

lu:
Aug-23-2026



:_

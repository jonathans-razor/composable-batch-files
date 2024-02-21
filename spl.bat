:_

@echo off

if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Super pull, i.e. pull all chosen repositories.

echo.
echo Usage: %0

exit/b



:_

:old-main

set cbf-is-home-machine=

if /i "%computername%"=="xps" (
  set cbf-is-home-machine=true
)

if "%cbf-is-home-machine%"=="true" (
  call 8
  call cp.bat sv_dr_to_local
  call cp.bat cfg_dr_to_local
  call pl drql
)

call pl cbf

call pl s

call cppp smecfg mecfg

call ss %0

exit/b

lu:
Apr-10-2019



:_

:main

call pl c

exit/b



:_ (!rfsp) (mov-8)

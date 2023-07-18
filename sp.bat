:_

@echo off

if "%~1" == "?" goto help

goto main



:_

:help

echo. & echo * Super push, i.e. push all selected repositories

echo.
echo Usage: %0

exit/b


echo Last Updated: Mar-31-2019



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:main

echo. & echo * Push machine-appropriate repositories.

set cbf-is-home-machine=false

if /i "%computername%"=="xps" (
  set cbf-is-home-machine=true
)

if "%cbf-is-home-machine%"=="true" (
  call t mecfg_dr
  rem call de.bat concop
  call 8
  call cppp mecfg smecfg
  call p drql
  cd\
  call t ro
  copy oc.asc oc.txt
) else (
  call p cade
  call p wd
)

call p cbf

call m update_lu %0

call p s

call ss %0

exit/b (!rfsp) (mov-2)


rem lu: Jul-22-2019



:_

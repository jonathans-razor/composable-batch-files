:_

@echo off



:_

set cbf-filep=* Summary: Heroku-related functions.



:_

echo. & echo * Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help
if "%~1" == ""-help- goto help

goto %1



:_

:help

cls

echo. & echo %cbf-filep%

rem lu: 

echo. & echo * Usage: %0 [space separated parameter(s)]

set parameter-1=* Parameter 1 (Optional): 

echo. & echo %parameter-1%

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:vers

echo. & echo * Version information.

heroku --version

exit/b



:_

:help

echo. & echo * Help information.

heroku --help

exit/b



:_

:logi

echo. & echo * Log in.

heroku login

exit/b



:_

:crap

:crea

echo. & echo * Create app.

rem skw baps-Nov-3-2021_5_34_PM-series

if /i "%~2" == "" (
  echo.
  echo * Error: Parameter 2 is required.      _,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,_(`~
  exit/b
)

heroku create %2

exit/b



:_

:set

echo. & echo * Set remote target.

heroku git:remote -a rocket-weather

exit/b



:_

:push

echo. & echo * Push app.

git push heroku main

exit/b



:_

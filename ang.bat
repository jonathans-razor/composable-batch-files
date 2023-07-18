:_

@echo off



:_

set cbf-filep=* Angular-related tasks.

echo.
echo %cbf-filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto %1



:_

:help

rem lu: Oct-15-2019

echo.
echo Usage: %0 [Parameter 1] (where parameter one is the atomic function you wish to call)

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:build_fqt

:ngf

:build_for_fqt

set fp=* Build for FQT.

rem lu: Sep-17-2019

echo.
echo %fp%

echo.
ng build --configuration=fqt

exit/b



:_

:ngp_old

set fp=* Complie and start Angular for production - old. Not sure this works..

rem lu: Feb-12-2019

echo.
echo %fp%

echo.
ng build --prod

exit/b



:_

:build

set fp=* Build angular.

rem lu: Mar-19-2019

echo.
echo %fp%

echo.
ng build

exit/b



:_

:run_ui

:serve

:srv

set fp=* Compile and start Angular.

rem lu: Feb-11-2019

echo.
echo %fp%

echo %cd% | find /i "\portal-client">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the portal-client folder for this command to work.
  exit/b 1
)

echo.
ng serve

exit/b



:_

:lhp

set fp=* Run the Admin Portal on localhost.

rem lu: Feb-11-2019

echo.
echo %fp%

call sf 4200 krm

call t port

echo.
ng serve

exit/b



:_+ Build for Production family



::_

:bfp

:build_for_production

set fp=* Build for production, zip file with td alias.

rem lu: Nov-21-2019

echo.
echo %fp%

call t rf_ma

cd portal-client

call %0 build_ui

exit/b



::_

:build_ui

:build_prod

:ngp

set fp=* Compile and start Angular for production. I have used this since version 1.3.

rem lu: Mar-3-2020

echo.
echo %fp%

echo.
ng build --configuration=prod

exit/b



:_

:run_tests

:run_unit_tests

:rut

:test

set fp=* Run Angular unit tests.

rem skw run tests, run unit tests

rem lu: Jun-30-2020

echo.
echo %fp%

call t ui

echo.
ng test

exit/b

>< >< Footnote:

As of Mar-5-2020 there are 428 API tests



:_

:new

set fp=* Create a starter app.

rem lu: Oct-29-2021

echo.
echo %fp%

ng new myapp

exit/b



:_

:comp

set fp=* Create a component.

rem lu: Oct-29-2021

echo.
echo %fp%

ng generate component

exit/b



:_ (!efang, !rfsp) (mov-9)

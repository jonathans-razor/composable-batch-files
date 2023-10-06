:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_

:help

cls

echo. & echo * Angular-related tasks.

echo   Usage: %0 [Parameter 1] (where parameter one is the atomic function you wish to call)

echo.
echo * Sample:
echo   %0 srv

exit/b

lu:
Sep-25-2023
Oct-15-2019



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



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



:_
:cna
echo. & echo * Create new application.
ng new hello-world-app
exit/b
creation date: Sep-25-2023



:_
:cnc
echo. & echo * Create new component.
ng generate component hello
exit/b
creation date: Sep-25-2023



:_

:run_ui-old

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

:cras

echo. & echo * Create crash course app.

echo.
ng new angular-crash

exit/b
rem lu: Sep-29-2023



:_

:ghc

echo. & echo * Generate header component.

echo %cd% | find /i "\src\app">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the src\app folder for this command to work.
  exit/b 1
)

echo.
ng generate component components/header

exit/b
rem lu: Sep-29-2023



:_

:gbc

echo. & echo * Generate button component.

echo %cd% | find /i "\src\app">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the src\app folder for this command to work.
  exit/b 1
)

echo.
ng generate component components/button

exit/b
rem lu: Sep-29-2023



:_

:lh-old

echo. & echo * Run the Admin Portal on localhost.

call sf 4200 kr

call t port

echo.
ng serve

exit/b

lu: Feb-11-2019



:_

:acc

echo. & echo * Run Angular Crash Course on localhost.

call lh 4200 edge

call t acc

echo.
ng serve

exit/b

lu:
Sep-29-2023



:_

:gtc

echo. & echo * Generate task component.

call cdc \src\app & if errorlevel 1 exit/b

echo.
ng generate component components/tasks

exit/b
rem lu: Sep-29-2023



:_

:gti

echo. & echo * Generate task item.

call cdc \src\app & if errorlevel 1 exit/b

echo.
ng generate component components/task-item

exit/b
rem lu: Sep-29-2023



:_

:afa

echo. & echo * Add font awesome.

call cdc \src\app & if errorlevel 1 exit/b

echo.
ng add @fortawesome/angular-fontawesome

exit/b
rem lu: Sep-29-2023



:_
:vers
echo. & echo * Version.
ng version
exit/b

lu:
Sep-25-2023



:_
:geco
echo. & echo * Generate component.
ng generate component components/add-task
exit/b

lu:
Oct-4-2023



:_

:run-ui
:serve
:srv

echo. & echo * Compile and start Angular.

call fe package.json & if errorlevel 1 exit/b

echo.
start "Angular" cmd /k ng serve

exit/b

lu: 
Sep-25-2023



:_

:gs-hardcoded

echo. & echo * Generate service.

call cdc \src\app & if errorlevel 1 exit/b

echo.
ng generate service services/task

exit/b

lu:
Sep-29-2023



:_

:gs

echo. & echo * Generate service.

if "%~2" == "" (
  call err The new service's name is required.
  exit/b
)

call cdc \src\app & if errorlevel 1 exit/b

echo.
ng generate service services/%2

exit/b

lu:
Oct-6-2023



:_

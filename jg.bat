:_

@echo off



:_

set cbf-filep=* Get a je, jn or jfd variable, in that order.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1: Alias to look for a Jenkins variable.

echo.
echo %parameter-1%

echo.
echo Example(s):

echo.
echo %0 et

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

set cbf-je=
set cbf-jfd=
set cbf-jj=
set cbf-jm=

call n %1

if not "%cbf-je%" == "" (
  echo.
  echo * cbf-je exists.
  call je %1
  exit/b
)

if not "%cbf-jm%" == "" (
  echo.
  echo * cbf-jm exists.
  call jn %1
  exit/b
)

if not "%cbf-jfd%" == "" (
  echo.
  echo * cbf-jfd exists.
  call jfd %1
  exit/b
)

if not "%cbf-jj%" == "" (
  echo.
  echo * cbf-jj exists.
  call jj %1
  exit/b
)

echo.
echo * Error: No Jenkins variables are set for "%1".

exit/b



:_

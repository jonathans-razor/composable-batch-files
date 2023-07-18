:_

@echo off



:_

set cbf-filep=* Summary: Surf the Jenkins internet site.



:_

set fp=* Route callers.

if -%~1- == -- fxw %0 %1 %2 %3
if -%~1- == ---help- goto help

if -%~1- == -?- goto help

goto validate-input



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

:validate-input

call m reset

set fp=* Evaluate the parameter list.

call n %1

if errorlevel 1 exit/b



:_

:set_precedence

set fp=* Set precedence. This is a precedence hierarchy.

set cbf-parameter=



:_

if "%cbf-parameter%" == "" (
  set cbf-parameter=%cbf-jp%
)



:_

if "%cbf-parameter%" == "" (
  set cbf-parameter=%cbf-jb%
)



:_

if "%cbf-parameter%" == "" (
  set cbf-parameter=%cbf-jfd%
)



:_

if "%cbf-parameter%" == "" (
  set cbf-parameter=%cbf-jefd%
)



:_

if "%cbf-parameter%" == "" (
  set cbf-parameter=%cbf-je%
)



:_

if "%cbf-parameter%" == "" (
  echo.
  echo * Error: Could not find a Jenkins DCV to run. Sep-27-2021_1_42_PM
  exit/b
)



:_

:main

call an kr

call r

exit/b



:_

:_

@echo off



:_

set cbf-filep=* Synchronize Share-zone and CBF folders.



:_

set fp=* Route callers.

if -%~1- == -?- goto help

goto main



:_

:help

cls

echo.
echo %cbf-filep%

rem skw:

rem lu: 

echo.
echo Batch file style: Single purpose

echo.
echo Entangled variable: cbf-%0

echo.
echo Pit of Success Strategy: For example, if cbf-cf is not found, the algorithm will look for cbf-url.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1 (Optional): 

set parameter-2=Parameter 2 (Optional): 

echo.
echo %parameter-1%

echo.
echo %parameter-2%

echo.
echo Example(s):

echo.
echo %0

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:main

call pl c

call pl s

call p c

call p s

exit/b



:_

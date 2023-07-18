:_

@echo off



:_

set cbf-filep=* Summary: TypeScript transpiler.



:_

set fp=* Route callers.

if -%~1- == -- goto run

if -%~1- == -?- goto help
if -%~1- == ---help- goto help

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

:run

set fp=* Run.

tsc

exit/b



:_

:runi

set fp=* Run index.

tsc index

exit/b



:_

:w

:watch

set fp=* Watch all files in a folder.

tsc -w

exit/b


Footnote
>< >< ><

How to watch a particular file:
tsc -watch index.ts




:_

:init

set fp=* Initialize.

tsc --init

exit/b



:_

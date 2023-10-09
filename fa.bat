:_

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_

:help

cls

echo. & echo * Windows file association commands.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Nickname block to run.

exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:me

echo. & echo * Associate asc files with Multi-Edit.

echo.
assoc .asc=asc
ftype asc=mew32.exe %%1 %%*

exit/b

lu:
Oct-9-2023
Mar-5-2019



:_

:url

echo. & echo * Associate %1 files with Microsoft Edge.

echo.
assoc .url=url
ftype url=msedge.exe %%1 %%*

exit/b

lu:
Oct-9-2023



:_

:gradle

set fp=* Associate gradle files with Notepad++.

echo.
echo %fp%

echo.
assoc .gradle=gradle
ftype gradle=notepad++.exe %%1 %%*

exit/b



:_

:yaml

:yml

set fp=* Associate yml files with Notepad++.

echo.
echo %fp%

echo.
assoc .yml=yml
ftype yml=notepad++.exe %%1 %%*

exit/b



:_

:xlsx

set fp=* Associate xlsx files with Excel.

echo.
echo %fp%

echo.
assoc .xlsx=Excel.Sheet.16
ftype Excel.Sheet.16="C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" %%1 %%*

exit/b



:_

:xml

set fp=* Associate xml files with Notepad++.

echo.
echo %fp%

echo.
assoc .xml=xmlfile
ftype xmlfile=notepad++.exe %%1 %%*

exit/b



:_

:_

@echo off

echo. & echo * List of batch file descriptions. (In Beta)

set fp=* Route callers.

if "%~1" == "?" goto help
if not "%~1" == "" goto %1

goto main



:_

:help

echo.
echo %cbf-filep%

echo.
echo Usage: %0 (optional parameter 1)

echo.
echo Parameter 1: Batch file label you wish to execute. If left blank, 
echo the code below the last code block in this file, a. k. a. the main function, will 
echo be executed.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:main

set fp=* For loop test.

rem lu: May-10-2019

echo.
echo %fp%

call t cbf

set folder_to_search=c:\aa\test1
set folder_to_search=%composable-batch-files%
set folder_to_search=%share-zone%

echo.
for /r "%folder_to_search%" %%f in ("*.bat") do call %0 process_file %%f

exit/b



:_

:process_file

set fp=* Process file.

rem lu: May-10-2019

call %2 "?">nul
echo %2: %cbf-filep%

exit/b



:_

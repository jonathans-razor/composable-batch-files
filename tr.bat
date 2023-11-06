:_

@echo off

echo. & echo * Java archiver.

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto %1



:_
:help
echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo Parameter 1: Alias to execute.

echo. & echo Batch file style: Multipurpose
exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:l

echo. & echo * List archived file content.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call fe %2 & if errorlevel 1 exit/b
call fe *.tar & if errorlevel 0 goto file-found
call fe *.tgz & if errorlevel 0 goto file-found
exit/b

:file-found

tar tvf %2>%tmp%\tr-l.txt

call an npp>nul

start "Test Title" "%cbf-app%" "%tmp%\tr-l.txt"

exit/b


:help
echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: Targeted archive tar or tgz file.
exit/b

rem lu: Apr-28-2023
rem lu: Apr-25-2022



:_
:e
:x
echo. & echo * Extract archived file content.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call fe %2 & if errorlevel 1 exit/b
call fe *.tar & if errorlevel 0 goto file-found
call fe *.tgz & if errorlevel 0 goto file-found
exit/b

:file-found

tar xvf %2

exit/b

:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: Targeted archive tgz file.

exit/b

rem lu: Apr-25-2022




:_

@echo off

if "%~1" == "" goto compare-j-files
if "%~1" == "/d" goto compare-dcv-files
if "%~1" == "?" goto help
if "%~3" == "/f" goto use_filenames_not_aliases

goto main



:_

:help

echo. & echo * Run Code Compare with aliases or filenames.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameters 1 and 2: 
echo   Either 2 filenames in the current folder or 2 file aliases. 
echo   If left blank, aliases j1 and j2 are used by default. If paramater 1 = /d, a DCV comparison is performed.

echo. & echo * Parameter 3:
echo   If /f is specified, filenames only are used. If left blank, aliases only are used.

echo. & echo * Example(s):
echo   %0 /d j1 fn des ixm
echo   %0 John-L-isFINIncluded.dmn John-L-2-isFINIncluded.dmn /f
echo   %0 /d ku pj fg pj

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:use_filenames_not_aliases

echo. & echo * Use filenames and not aliases.

rem lu: Aug-17-2022

call an coco

"%cbf-app%" "%~1" "%~2"

exit/b



:_

:compare-j-files

echo. & echo * Use default behavior, viz. compare j files.

rem qq
call %0 j1 j2

exit/b

lu:
Oct-12-2023



:_

:compare-dcv-files

echo. & echo * Compare DCV files.

rem lu: Aug-17-2022


rem %2 & %3 are the DCV coordinates for file 1.
call n %2
call m compose_variable %3
if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf-%3" for the alias "%2".
  exit/b
)
set cbf-dcv-file-1=%cbf-expanded-variable%


rem %4 & %5 are the DCV coordinates for file 2.
call n %4
call m compose_variable %5
if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition of "cbf-%5" for the alias "%4".
  exit/b
)
set cbf-dcv-file-2=%cbf-expanded-variable%


call an coco

rem echo. & echo * cbf-dcv-file-1: %cbf-dcv-file-1%
rem echo. & echo * cbf-dcv-file-2: %cbf-dcv-file-2%

"%cbf-app%" "%cbf-dcv-file-1%" "%cbf-dcv-file-2%"

exit/b



:_

:main

call fn %1

if errorlevel 1 (
  call m clear_errorlevel_silently 
  exit/b
)

set file_1=%cbf-fn%

call fn %2

if errorlevel 1 (
  call m clear_errorlevel_silently 
  exit/b
)

set file_2=%cbf-fn%

call an coco

if errorlevel 1 exit/b

start  "Code Compare" "%cbf-app%" "%file_1%" "%file_2%"

exit/b



:_

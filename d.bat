:_
@echo off
if "%~1" == "" goto d
if "%~1" == "?" goto help
call :evaluate-the-parameter-list %*
goto %1



:_
:help
echo. & echo * Dir for current folder.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1 (Optional): 
echo   Alias to run.

echo. & echo * Parameter greater than 1 (Optional):
echo   If equal to "/s", search including subfolders.
echo   If equal to "/f", pipe to a file.

echo. & echo * Default sort: oldest first.

echo. & echo * Batch file style: Multipurpose.
echo.          
echo   Parameter  Description
echo   ---------  ---------------------------------
echo           a  Alphabetical, folders first.
echo          ba  Bare.
echo           b  Big files.
echo           d  Date, oldest first.
echo          d-  Date, newest first.
echo           e  extensionless files.
echo         els  extensionless by size files.
echo         fno  Filenames only.
echo          fo  Folders only.
echo           h  Hidden files and folders.
echo           s  Size, biggest first.
echo          s-  Size, smallest first.
echo           t  Treeview normal.
echo          tp  Treeview piped to a file.
echo          to  Files and folders changed today.
echo           x  Search by extension.

echo. & echo * Sample(s):
echo   %~n0 /ba /f /s

exit/b



:_
   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::
        `--'      `--'      `--'      `--'      `--' 



:_
:h
echo. & echo * Look for the hidden files and folders.
echo.
dir /ah
exit/b
rem Creation Date: Feb-7-2017



:_

:f

:fo

echo. & echo * Folders only.

rem lu: Dec-27-2018

echo.
dir /a:d

exit/b



:_

:concop

echo. & echo * Conflicted copy.

rem lu: Feb-15-2019

echo.
del "*conflicted copy*.*"

exit/b



:_+ Date



::_
:-d
:d-
echo. & echo * Date, newest first.
dir /o-d
exit/b
rem lu: Apr-23-2019



::_
:d
echo. & echo * Date, oldest first.
echo.
dir /od
exit/b
rem lu: Apr-23-2019



:_+ Size



::_
:s
:size
echo. & echo * Size, biggest first.
dir /o-s %2
exit/b
rem lu: Jan-12-2023



::_

:-s

:s-

echo. & echo * Size, smallest first.

rem lu: Feb-1-2018

echo.

echo.

dir /os %2

exit/b



:_+ Recently Modified



::_

:rm

echo. & echo * Recently modified.

echo.


forfiles /s /d 06/24/2020 /c "cmd /c echo @fdate @path"

exit/b

Description: For each file in the current folder and its subfolders modified on date specified 
or later, outputs the file modification date and full file path. The date format after /d is 
locale specific. Thus, allows to find most recently modified files.



::_

:toda

:today

echo. & echo * Files changed today.

rem findstr /bvc:" " removes header and summary

rem The problem is that this doesn't search subfolders.

rem lu: Mar-6-2019

echo.


forfiles /s /d +0 /c "cmd /c if @isdir==FALSE echo @path @ftime @fsize">%temp%\d_search_results_fs.txt

if %Errorlevel% == 0 echo.
if %Errorlevel% == 0 echo * Files found.

if %errorlevel% == 0 (
  start "Test Title" "%cbf-default-text-editor%" "%temp%\d_search_results_fs.txt"
) else (
  call m clear_errorlevel_silently
)

exit/b



::_

:to

:todff

echo. & echo * Files and folders changed today.

rem lu: Feb-1-2018

echo.


forfiles /d +0 /c "cmd /c echo @file @ftime @fsize"

exit/b



:_

:e

echo. & echo * Group by extension.

rem skw: by file type

rem lu: Jun-24-2021

echo.


echo.
dir /oe

exit/b



:_
:hlp
echo. & echo * Related help.
echo.
dir /?
exit/b



:_
:evaluate-the-parameter-list
rem echo. & echo * Evaluate the parameter list.
set cbf_pipe_to_file=0
set cbf-search-subfolders=0
call m cel
echo %*| find /i "/f">nul
if %errorlevel% == 0 (
  rem echo. & echo Parameter list contains "/p".
  set cbf_pipe_to_file=1
) else (
  rem echo. & echo Parameter list does NOT contain a "/p".
)
echo %*| find /i "/s">nul
if %errorlevel% == 0 (
  rem echo. & echo Parameter list contains "/s".
  set cbf-search-subfolders=2
) else (
  rem echo. & echo Parameter list does NOT contain a "/s".
)
set /a cbf_parameter_total=%cbf_pipe_to_file%+%cbf-search-subfolders%
exit/b
rem lu: Aug-30-2022



:_
:x-old
rem echo. & echo Search by extension.
if "%~2" == "?" goto help
if "%~2" == "" goto help
if %cbf_parameter_total%==3 (
  echo. & echo * Pipe to file and search subfolders for files with extension "%2".
  dir *.%2* /s>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)
if %cbf_pipe_to_file%==1 (
  echo. & echo * Pipe to file. Search for files with extension "%2".
  dir *.%2*>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf-search-subfolders%==2 (
  echo. & echo * Search including subfolders for files with extension "%2".
  dir *.%2* /s
  exit/b
)

echo. & echo * Search for files with extension "%2".
echo.
dir *.%2*

exit/b


:help

echo. & echo * Parameter Description(s):
echo. & echo * Parameter 2: The extension you wish to search for.
echo. & echo * Parameter 3 or 4: 
echo. & echo * If equal to "/s", search including subfolders.
echo. & echo * If equal to "/f", pipe to a file.
exit/b



:old-tree

rem echo. & echo * Tree view.

rem lu: Jan-8-2019

if "%~2" == "?" goto help

echo.

if -%2-==-/h- (
  tree/f
  exit/b
)

tree/f>%temp%\tree_results_cs.txt

if errorlevel 1 (
  echo.
  echo * No results found. 
  exit/b
)

call an no>nul
if not "%~2" == "" (
  call an %2>nul
)

start "Test Title" "%cbf-app%" "%temp%\tree_results_cs.txt"

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: If equal to /h, show file in cmd. Else to file and open.
echo. & echo Parameter 3: If not blank, application to use to view piped file.



:_

:t

:tr

:tree

rem echo. & echo Tree view.

if %cbf_pipe_to_file%==1 (
  echo. & echo * Pipe to file. Search for files with extension "%2".
  tree/f>%tmp%/tree-results.txt
  start "Tree view." "%cbf-default-text-editor%" "%tmp%\tree-results.txt"
  exit/b
)

echo.
tree/f

exit/b



:_

:b
:big

echo. & echo * Find big files.

echo **** Big files>%tmp%\big-files.txt
echo ---------------------------------------------------------------------------------------------------->>%tmp%\big-files.txt
rem Files bigger than 1 gigabyte!
forfiles /S /M * /C "cmd /c if @fsize GEQ 1000000000 echo @fsize @path>>%tmp%\big-files.txt"
rem forfiles /S /M * /C "cmd /c if @fsize GEQ 203 echo @fsize @path>>%tmp%\big-files.txt"

start "Big files." "%cbf-default-text-editor%" "%tmp%\big-files.txt"

exit/b

rem fcd: Nov-16-2022

**** Big files
----------------------------------------------------------------------------------------------------
13461315584 "c:\hiberfil.sys"
5100273664 "c:\pagefile.sys"
31529828352 "c:\minishift_folder\default_profile\machines\minishift\disk.vmdk"
2600327307 "c:\minishift_folder\default_profile\machines\minishift\minishift\Snapshots\2022-09-29T20-37-03-122269800Z.sav"
4264824832 "c:\ProgramData\LDC\34c9f2d\sparseFile"

**** Big files
------------------------------------------------------------------
31529828352 "c:\minishift_folder\default_profile\machines\minishift\disk.vmdk"
2600327307 "c:\minishift_folder\default_profile\machines\minishift\minishift\Snapshots\2022-09-29T20-37-03-122269800Z.sav"



:_+ Alphabetical



::_

:a

echo. & echo * Alphabetical, folders first.

if %cbf_parameter_total%==3 (
  echo. & echo * Pipe to file and search subfolders.
  dir /ogn /s>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf_pipe_to_file%==1 (
  echo. & echo * Pipe to file.
  dir /ogn>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf-search-subfolders%==2 (
  echo. & echo * Search including subfolders for files with extension "%2".
  dir /ogn /s
  exit/b
)

echo.
dir /ogn /p

exit/b



::_

:-a

:a-

echo. & echo * Reverse Alphabetical, folders first.

rem lu: Jun-24-2021

echo.
dir /og-n

exit/b



:_

:concop

echo. & echo * Dir concop.

echo.
dir "*conflicted copy*.*" /s

exit/b



:_

:renamed

echo. & echo * Dir renamed.

echo.
dir "*renamed*.*" /s

exit/b



:_

:fno

echo. & echo * Filenames only.

if %cbf_parameter_total%==3 (
  echo. & echo * Pipe to file and search subfolders.
  dir /b /s>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf_pipe_to_file%==1 (
  echo. & echo * Pipe to file.
  dir /b>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf-search-subfolders%==2 (
  echo. & echo * Search including subfolders for files with extension "%2".
  dir /b /s
  exit/b
)

echo.
dir /b /p

exit/b



:_
:imf
echo. & echo * Inegration Marker File.
dir integrationMarkerFile*
exit/b
rem lu: Feb-21-2023



:_
:ba
echo. & echo * Bare bones.
set cbf-dir-command=dir/b
goto process-arguments
exit/b



:_
:el
echo. & echo * Extensionless.
set cbf-dir-command=dir *.
goto process-arguments
exit/b



:_
:els
echo. & echo * Extensionless by size.
set cbf-dir-command=dir /o-s *.
goto process-arguments
exit/b



:_
:x
echo. & echo * Extension.
set cbf-dir-command=dir *.%2*
goto process-arguments
exit/b


:_
:process-arguments
echo. & echo * Process arguments.

if %cbf_parameter_total%==3 (
  echo. & echo * Pipe to file and search subfolders.
  %cbf-dir-command% /s>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf_pipe_to_file%==1 (
  echo. & echo * Pipe to file.
  %cbf-dir-command%>%tmp%/dir-results.txt
  start "Test Title" "%cbf-default-text-editor%" "%tmp%\dir-results.txt"
  exit/b
)

if %cbf-search-subfolders%==2 (
  echo. & echo * Search including subfolders for files with extension "%2".
  %cbf-dir-command%  /s
  exit/b
)

echo.
%cbf-dir-command%
exit/b




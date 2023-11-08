:_

@echo off


if "%~1" == "?" goto help
if "%~1" == "" goto help

goto %1



:_

:help

cls

echo. & echo * For loops.
echo. & echo Batch file style: Multipurpose
echo. & echo Usage: %0 [space separated parameter(s)]
echo. & echo Parameter 1: Alias of the function you wish to run.
echo. & echo Example(s):
echo. & echo %0

exit/b

rem lu: Mar-11-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:4

echo. & echo * Rename files recursively.

rem This worked.

rem lu: Aug-12-2021

echo.


set cbf-pt=d:\aa\test1

for /r %cbf-pt% %%j in (*.yml) do ren %%j *.txt

exit/b



:_

:5

:rfr

echo. & echo * In the current folder, rename files recursively.

rem This worked.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r %cbf-pt% %%j in (*.yml) do ren %%j *.txt

exit/b



:_

:7

echo. & echo * Iterate recursively over the files.

rem lu: Aug-13-2021

echo.


set cbf-pt=%cd%

echo.
for /r "%cbf-pt%" %%j in (*.*) do echo * Here's a file.

exit/b



:_

:8

echo. & echo * Find zero-length files.

rem lu: Aug-13-2021

echo.


set cbf-pt=%cd%

echo.
for /r "%cbf-pt%" %%j in (*.*) do if "%%~zj"==0 echo * Here's a zero-length file.

exit/b



:_

:9

echo. & echo * Find zero-length files.

rem lu: Aug-13-2021

echo.


set cbf-pt=%cd%

echo.
for /r %%F in (*) do if "%%~zF"==2 echo hey

exit/b



:_

:10

:this-works-series-10

echo. & echo * In the current folder, rename all files recursively to be of type txt.

rem This worked. It was helpful because the Dropbox app on my iPad can't seem to read yml files.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r "%cbf-pt%" %%f in (*.*) do echo Here's a file.

exit/b



:_

:6

:this-works-series-6

echo. & echo * In the current folder, rename all files recursively to be of type txt.

rem This worked. It was helpful because the Dropbox app on my iPad can't seem to read yml files.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

@echo on

for /r "%cbf-pt%" %%j in (*.*) do ren "%%j" *.txt

exit/b



:_

:11

:this-works-series-11

echo. & echo * In the current folder, find zero-length files.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r "%cbf-pt%" %%f in (*.*) do if %%~zf==0 echo Here's a file.

exit/b



:_

:12

:this-works-series-12

echo. & echo * In the current folder, find zero-length files.

rem The space in the folder name did surprisingly NOT mess this up.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r "%cbf-pt%" %%f in (*.*) do if %%~zf==0 echo Here's a file.

exit/b



:_

:13

:this-works-series-13

echo. & echo * In the current folder, delete zero-length files.

rem The space in the folder name did surprisingly NOT mess this up.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r "%cbf-pt%" %%f in (*.*) do if %%~zf==0 del "%%f"

exit/b


Footnote
>< >< ><

This is a windows batch file that can delete files that are of zero size.

Is there a windows batch file that can delete files that are of zero size?



:_

:14

:this-works-series-14

echo. & echo * In the current folder, find files of size 5 bytes or less.

rem The space in the folder name did surprisingly NOT mess this up.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r "%cbf-pt%" %%f in (*.*) do if %%~zf lss 6 echo Here's a file.

exit/b



:_

:15

:this-works-series-15

echo. & echo * In the current folder, delete zero-length files.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

for /r "%cbf-pt%" %%f in (*.*) do if %%~zf lss 6 del "%%f"

exit/b



:_

set fp= 9. * Copy theme jpegs.

echo.

echo.

cd \Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes
rem xcopy /s *.jpg c:\!
cd

set podcast_folder=\Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes\
set staging_area=\!\


for /r "%podcast_folder%" %%f in ("*.jpg") do move "%%f" %staging_area%

exit/b



:_

echo. & echo * Copy files to examination location.

rem FCD: Mar-21-2017

echo.


cd "\aa\Count Lines of Code in Mercury"

cd

rem type /s *.java "c:\aa\Count Lines of Code in Mercury\java in mercury.txt"

for /r %%j in (*.txt) do type "%%j" >> "c:\a\all files appended into one big file.txt"

m exitp



:_

echo. & echo * Count the number of lines of Java code.

rem FCD: Mar-21-2017

echo.


cd "\projects"

cd

for /r %%j in (*.java) do type "%%j" >> "c:\a\all files appended into one big file.java"

m exitp



:_

echo. & echo * Count the number of lines of JavaScript code.

rem FCD: Mar-21-2017

echo.


cd "\projects"

cd

for /r %%j in (*.js) do type "%%j" >> "c:\a\All Mercury JavaScript Code in One File.js"

m exitp



:_

echo. & echo * Count the number of JavaScript files.

rem FCD: Mar-21-2017

echo.


cd "\projects"

cd

for /r %%j in (*.js) do echo "%%j" >> "c:\a\All Mercury JavaScript filenames in One File.txt"

m exitp



:_

echo. & echo * Count the number of Java files.

rem FCD: Mar-21-2017

echo.


cd "\projects"

cd

for /r %%j in (*.java) do echo "%%j" >> "c:\a\All Mercury Java Filenames in One file.txt"

m exitp



:_

echo. & echo * Count the number of lines of JavaScript code.

rem FCD: Mar-21-2017

echo.


cd "%my documents%\gpodder\downloads"

cd

for /r %%j in (*.mp3) do move "%%j" c:\a

m exitp



:_

echo. & echo * Look for empty folder.

echo.

echo.

rem Outcome: This works!

dir | find /i "0 file">nul

if %errorlevel% == 0 echo Found.
if not %errorlevel% == 0 echo NOT found.

exit/b



:_

echo. & echo * Find all empty subfolders.

rem Outcome: This works!

echo.

echo.

cd\aa

for /r %%a in (.) do (dir /b "%%a" | find /v "NoTlIkElY" >nul && echo %%a NOT empty || >>FILES.TXT echo %%a empty)

exit/b



:_

echo. & echo * Find all empty subfolders.

rem Outcome: This works!

echo.

echo.

cd %dropbox%

for /r %%a in (.) do (dir /b "%%a" | find /v "NoTlIkElY" >nul && echo %%a NOT empty || >>Empty_Dropbox_Folders.txt echo %%a Empty folder.)

exit/b



:_

echo. & echo * Find all empty folders in Dropbox. Version 2. Do the recursion.

echo.

echo.

rem Outcome: This works!

cd\aa
dir | find /i "0 file">nul

set sc=0 file
rem set sc=dir | find /i "0 file"

set folder_to_search=c:\aa

rem for /r "%folder_to_search%" %%f in ("*.*") do findstr %sc% "%%f"
for /r "%folder_to_search%" %%f in ("*.txt") do dir | find /i "0 file" "%%f"

if %errorlevel% == 0 echo Found at %cd%
if not %errorlevel% == 0 echo NOT found.

m exitp



:_

echo. & echo * Copy java files.

echo.

echo.

for /r "c:\pcarss" %%f in ("*.java") do copy "%%f" "c:\!!\Copied Java Files"

m exit



:_

echo. & echo * Copy text files.

echo.

echo.

cd\!!

cd

dir/s *.txt

for /r "c:\!!" %%f in ("*.txt") do copy "%%f" "c:\!!\Test Text Files"

m exit



:_+ Find and Delete Small Files



::_

:16f

:fsf

echo. & echo * Find files of size less than 6 bytes.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.
for /r "%cbf-pt%" %%f in (*.*) do if %%~zf lss 6 echo * Here's a small file.

exit/b



::_

:16d

echo. & echo * Delete files of size less than 6 bytes.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.
for /r "%cbf-pt%" %%f in (*.*) do if %%~zf lss 6 echo * Delete small file. & del "%%f"

exit/b



:_+ Find and Delete Empty Folders



::_

:19

echo. & echo * Delete empty folders.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.
for /f "usebackq" %%d in (`"dir /ad/b/s | sort /R"`) do rd "%%d"

exit/b



::_

:fef

:20f

echo. & echo * Find empty folders even if the folder has a space in it.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.
for /f "usebackq delims=" %%d in (`"dir /ad/b/s | sort /R"`) do echo * Found empty folder at: "%%d".

exit/b


Footnote
>< >< ><

Is there a windows batch file that can delete empty folder?



::_

:def

:20d

echo. & echo * Delete empty folders even if the folder has a space in it.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.
for /f "usebackq delims=" %%d in (`"dir /ad/b/s | sort /R"`) do echo * Delete empty folder. & rd "%%d"

exit/b



:_

:Aug-13-2021_9_32_PM

echo. & echo * Find all empty folders in Dropbox.

echo.


rem Outcome: This works!

dir | find /i "0 file">nul

if %errorlevel% == 0 echo Found at %cd%
if not %errorlevel% == 0 echo NOT found.

rem dir

exit/b



:_

:Aug-13-2021_9_06_PM

echo. & echo * Find files of size less than 6 bytes.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.
for /r "%cbf-pt%" %%f in (*.*) do if %%~zf lss 6 echo * Here's a small file.

exit/b



:_

:feft

echo. & echo * Prettier find empty folder that doesn't work.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.

for /f "usebackq delims=" %%d in (`"dir /ad/b/s | sort /R"`) do (
  echo.  
  echo * Found empty folder at: "%%d".
)

exit/b



:_

:feft2

echo. & echo * Prettier find empty folder that doesn't work 2.

rem lu: Aug-12-2021

echo.


set cbf-pt=%cd%

echo.

for /f "usebackq delims=" %%d in (`"dir /ad/b/s | sort /R"`) do (
  echo.  
  echo * Found empty folder.
)

exit/b



:_

:ear
:fjf

cls

echo. & echo * Find ear/jar files with log4j references.

set cbf-pt=%cd%

echo.
for /r "%cbf-pt%" %%f in (*.ear) do call jr %%f

exit/b

rem lu: Mar-11-2022



:_ eof

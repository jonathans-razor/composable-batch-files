@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto %1



:_
:help
echo. & echo * Back up functions. Backing up can be thought of as a specific from of copying.
echo. & echo Usage: %0 [space separated parameter(s)]
echo. & echo Parameter 1: Function name you wish to execute.
exit/b
rem lu: Apr-27-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Jenkinsfile



::_

:jf_old

set fp=* Copy rf_ma Jenkinsfile to the share-zone Jenkinsfile.

rem lu: Apr-24-2020

echo.
echo %fp%

call n api

set source_filename=%cbf-jf%

call n jfbu

set destination_filename=%cbf-fn%

echo.
@echo on
xcopy /d /y %source_filename% %destination_filename%
@echo off

exit/b



::_

:jf

:ctfj

set fp=* Create timestamped Jenkinsfile.

rem lu: Oct-5-2020

echo.
echo %fp%

call t api

call cpcp Jenkinsfile jf

rem The below class name is case sensitive.
java -classpath %composable-batch-files% Get_timestamp_for_use_as_filename>date_as_filename.txt

set /p date_as_filename=<date_as_filename.txt

ren Jenkinsfile Jenkinsfile_%date_as_filename%.txt

call d d

exit/b



:_

:vsnip

echo. & echo * Back up snippets folder.

if -%2-==-?- goto help

rem lu: Apr-8-2022

if -%2-==-/r- (
  call cp pp rsnip vsnip
) else (
  call cp pp vsnip rsnip
)

exit/b

:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: Restore flag. If equal "/r", perform a restore instead of a back up.

exit/b



:_

:mcfg

:mn

:redo

if -%2-==-?- goto help
if -%2-==-/r- goto restore-mcfg

echo. & echo * Back up Minishift config file.

echo. & echo * Not yet implemented.

exit/b

:restore-mcfg

echo. & echo * Restore Minishift config file.

call pn redo>nul

if errorlevel 1 exit/b

set cbf-source=%cbf-pt%\config.json

call tdd mifd fn>nul

if errorlevel 1 exit/b

set cbf-destination=%cd%\config.json

@echo on
xcopy /d /y "%cbf-source%" "%cbf-destination%"
@echo off

exit/b

:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: If equal to "/r", restore instead of back up is done.

exit/b



:_

:gaan

echo. & echo * Back up Gap Analysis Excelfiles.

rem lu: Jun-03-2022

call t pm>nul

set cbf-tmp-pt=%cbf-pt%

call t gaan>nul

xcopy /d /y *.xlsx "%cbf-tmp-pt%"

exit/b



:_

:brcp

if -%2-==-?- goto help
if -%2-==-/r- goto restore-brc

echo. & echo * Back up .brc profile.

call t home>nul

if errorlevel 1 exit/b

call m cona>nul

if "%cbf-cona%" == "vdi" (
  echo. & echo Create VDI brc profile backup.
  echo.
  xcopy /d /y .bash_profile w:\git-repos\composable-batch-files\.bashrc-vdi-profile-backup
  exit/b
) else if "%cbf-cona%" == "keld" (
  echo. & echo * Create Keld brc profile backup.
  echo.
  @echo on
  xcopy /d /y .bash_profile %cbf-repo%\composable-batch-files\.bashrc-keld-profile-backup
  @echo off
  exit/b
)

echo. & echo Create XPS brc profile backup.
echo.
xcopy /d /y .bash_profile %composable-batch-files%\.bashrc-xps-profile-backup

exit/b

:restore-brc

echo. & echo * Restore .brc profile not yet implemented.

exit/b

:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: If equal to "/r", restore instead of back up the brc file.

exit/b



:_

:des

echo. & echo * Back up dev envrionment setup.

rem lu: Sep-13-2022

call t des-bu>nul

set cbf-tmp-pt=%cbf-pt%

call t des>nul

xcopy /d /y *.* "%cbf-tmp-pt%"

exit/b



:_
:snip
echo. & echo * Snippets.
call cp pp vsnip rsnip
exit/b



:_
:exs
echo. & echo * Excel files.
call t exs
call pn bu
set cbf-pt=%cbf-pt%\Excels
xcopy /d /y *.* %cbf-pt%
exit/b



:_
:mecfg
echo. & echo * Back up Mutli-edit config files.

Get_JDate>%tmp%\JDate.txt
set /p JDate=<%tmp%\JDate.txt
set Current_JDate=%JDate%

echo. & echo * Current JDate = %Current_JDate%

call t bumecfg

if errorlevel 1 (
  exit/b
)

echo.
if /i not exist "%Current_JDate%" md "%Current_JDate%"

cd %Current_JDate%

@echo on
xcopy /s /y "%appdata%\Multi Edit Software\Multi-Edit\11\Config.04" .
@echo off

pause

exit/b



:_
:sv
echo. & echo * Savannah.
call pn belf>nul
"Back up Savannah files to Dropbox folder.bat"
exit/b
creation date: Jul-3-2023



:_
:qlr
echo. & echo * Reverse back up Quick Launch files from local to Dropbox.

call pn ql

set cbf-ptx=%cbf-pt%

call t qlld

@echo on
xcopy /d /s /y . "%cbf-ptx%"

exit/b



:_

:brc

if -%2-==-?- goto help
if -%2-==-/r- goto restore-brc

cls

call el /c

echo. & echo * Back up .brc.

call t home>nul

if errorlevel 1 exit/b

call m cona

if errorlevel 1 exit/b

if "%cbf-cona%" == "vdi" (
  echo. & echo Create VDI brc backup.
  echo.
  xcopy /d /y .bashrc w:\git-repos\composable-batch-files\.bashrc-vdi-backup
  exit/b
) else if "%cbf-cona%" == "keld" (
  echo. & echo * Create Keld brc backup.
  echo.
  @echo on
  xcopy /d /y .bashrc %cbf-repo%\composable-batch-files\.bashrc-keld-backup
  @echo off
  exit/b
)

echo. & echo * Create XPS brc backup.
echo.
call pn ffbs>nul
xcopy /d /y .bashrc %cbf-pt%

exit/b


:restore-brc

echo. & echo * Restore .brc.

call pn r>nul

xcopy /d /r /s /y %cbf-pt%\composable-batch-files\.bashrc-xps-backup %home%\.bashrc

exit/b


:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: If equal to "/r", restore instead of back up the brc file.

exit/b



:_

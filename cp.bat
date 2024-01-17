:_
@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

call paco "%~1" . && goto cp2

goto %1



:_
:help

echo. & echo * Copy files using function routing.

echo. & echo   Usage: %0 [Parameter 1]
echo. & echo   Parameter 1: Label method to run.
echo. & echo   Batch file style: Multipurpose

echo.          
echo     Parameter  Description
echo     ---------  -------------------------------------------------------------------------
echo           all  Copy all current folder files to a alias-specified path.
echo            ca  Copy all current folder files to a nickname-specified path.
echo            cb  Copy background image for testing purposes.
echo            cf  Use current folder file to "save as" a filename alias.
echo            cp  Copy current folder file to nickname-specified path.
echo           cp2  Copy current folder file to nickname-specified path. (Nov-5-2023 version)
echo           cps  Copy current folder file to a nickname-specified path and stay in current folder.
echo            cv  Copy CBF file to VDI.
echo            dd  Copy a file to another file using 2 DCVs.
echo          fall  Copy all alias-specified files to current folder.
echo            fc  Use filename alias to "save as" a file in the current folder.
echo            ff  Use filename alias 1 to "save as" filename alias 2.
echo            fp  Copy an aliased file to a aliased folder.
echo         mecfg  The Multi-Edit config files seem to be corrupt, so copy mecfg files from dropbox to local.
echo            pc  Copy folder aliased files to current folder.
echo            pp  Copy all files from alias path param 1 to alias path param 2.
echo            te  Copy te.bat to a new batch file.
echo           teb  Copy te to a new bash file.
echo            vc  Copy VDI file to CBF.
echo.
echo          Char  Description
echo          ----  ------------------
echo             c  current folder
echo             d  DCV
echo             f  filename alias
echo             p  folder alias (path)
exit/b



:_
   .--.      .--.      .--.      .--.      .--.      .--.      .--.      
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'      `--'      `--'     



:_
:cb

echo. & echo * Copy background image for testing purposes.

rem lu: Nov-9-2017

echo.

call t wir1

xcopy /y "c:\mercury\batch_files\Wave_4_invert.png"

call t wir2

xcopy /y "c:\mercury\batch_files\Wave_4_invert.png"

call t wir3

xcopy /y "c:\mercury\batch_files\Wave_4_invert.png"

exit/b



:_
:md

echo. & echo * Copy settings.xml file into the Maven Dependencies path.

call t m2

xcopy c:\mercury\batch_files\settings.xml

exit/b

lu:
Nov-21-2017



:_
:mc

echo. & echo * Copy Mobility resources to the Cordova folder.

rem lu: Sep-28-2017

echo.

call t pu

if not exist cordova echo.
if not exist cordova echo The Cordova folder isn't there, therefore abort.
if not exist cordova exit/b

cd cordova

md resources

cd resources

xcopy /s c:\mercury\mobility\resources

exit/b



:_
:aj

echo. & echo * Copy over App.json for mobile build.

echo.
call t pu

xcopy /y "c:\mercury\mobility\androidspecific\app.json" "app.json"

exit/b

lu:
Sep-6-2017



:_
:t1

echo. & echo * Copy over Testing 1 NetConfig.

echo.
call t util

xcopy /y "c:\mercury\mobility\NetConfig - for Testing1.js" "NetConfig.js"

exit/b

lu:
Dec-6-2017



:_
:bu

echo. & echo * Copy file to code backup folder.

echo.

set reformatted_string=%2

set reformatted_string=%reformatted_string:/=\%

xcopy "%reformatted_string%" "%Dropbox%\NES\Code Backup\"

echo "%reformatted_string%"

exit/b

lu:
Nov-9-2017

skw:
slash replace



:_
:cbf

echo. & echo * CBF.png file to cbf folder.

call t cbf

echo.
xcopy /y c:\a\cbf.png

exit/b

lu:
Apr-24-2018



:_
:fr_r
:res

echo. & echo * Copy Fresnel images to their respective Android and iOS folders.

echo.

call t fr_ra

call n fr_rs

xcopy /d /h /r /y "%cbf-pt%\*.png"

call t fr_ri

call n fr_rs

xcopy /d /h /r /y "%cbf-pt%\*.png"

exit/b

lu:
Jul-13-2018



:_
:test3

echo. & echo * Move test3 files to test1.

rem lu: Sep-3-2018

echo.

xcopy %aa%\test3 %aa%\test1

exit/b



:_
:copy_cart_cs_files_to_a_temp_folder

echo. & echo * Copy cart cs files to a temp folder.

echo.

xcopy *.cs %temp%\cart_cs /s

exit/b

lu:
Oct-17-2018



:_
:cc

echo. & echo * Make a copy of CC.asc.

echo.

xcopy /d /h /r /y "%reach out%\cc.asc" "%share-zone%\copy of cc.asc"

exit/b



:_
:apn

echo. & echo * Copy all files in the current folder to an alias specified path.

rem lu: May-7-2019

echo.

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field for alias.
  exit/b
)

call n %2

if %errorlevel% == 1 (
  echo.
  echo * Error: Issue with "%2" alias.
  call m clear_errorlevel_silently  
  exit/b
)

echo.
xcopy /d /r /s /y . %cbf-pt%

exit/b



:_
:jfds

echo. & echo * Copy jj_devops Jenkinsfile to share-zone Jenkinsfile.

echo.

call n j

set source_filename=%cbf-jf%

call n jft

set destination_filename=%cbf-fn%

echo.
xcopy /y %source_filename% %destination_filename%

exit/b

lu:
May-16-2019



:_
:jfsd

echo. & echo * Copy share-zone Jenkinsfile to jj_devops Jenkinsfile.

rem lu: May-16-2019

echo.

call n jft

set source_filename=%cbf-fn%

call n j

set destination_filename=%cbf-jf%

echo.
xcopy /y %source_filename% %destination_filename%

exit/b



:_
:sv_dr_to_local

echo. & echo * Copy newer Savannah files from dropbox to local drive.

echo.
xcopy /d /r /s /y "%dropbox%\savannah" "%my documents%\savannah"

exit/b



:_
:ldd

echo. & echo * Copy LDD from H drive to Share-zone.

echo.

call cyff hldd ldd

exit/b

lu:
Jul-1-2019



:_
:emax
:max

echo. & echo * Copy empty max on top of max.

rem lu: Jun-2-2020

echo.

call t max

call pn cm>nul

xcopy /y "%cbf-pt%\empty_master.xml" master.xml

exit/b



:_
:fis

echo. & echo * Copy folder including subfolders.

echo.

xcopy /r /s %2 %3

exit/b

lu:
Aug-12-2021



:_
:nv

echo. & echo * New vdi pass-through batch file.

rem lu: Feb-4-2022

echo.

if "%~1" == "" (
  echo. & echo * Error: Percent 2, new batch file name, is required.
  exit/b
)

xcopy d.bat %2.bat

exit/b



:_
:fp

echo. & echo * Copy an aliased file to an aliased folder.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

call n %2

set cbf-source-fn=%cbf-fn%

call n %3

rem echo. & echo cbf-pt: %cbf-pt%

echo.
@echo on
xcopy /d /r /s /y "%cbf-source-fn%" "%cbf-pt%\"
@echo off

exit/b


:help

echo. & echo Parameter Description(s):
echo. & echo Parameter 2: source filename alias.
echo. & echo Parameter 3: target folder alias.

exit/b



:_
:cf

echo. & echo * Use current folder file to "save as" a filename alias.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

set cbf-fn=

if not exist "%2" (
  echo. & echo * Error: File "%2" doesn't exist.
  exit/b 5
)

call fnv2 %3

if errorlevel 1 exit/b

echo.
xcopy /y "%~2" "%cbf-fn%"

exit/b


:help

echo. & echo Parameter Description(s):
echo. & echo Parameter 2: source current folder file.
echo. & echo Parameter 3: target file alias.

exit/b



:_
:dd

echo. & echo * Copy a file to another file using 2 DCVs.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

call i /c>nul

rem File 1.
call n %2

if errorlevel 1 exit/b

call m compose_variable %3

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition for "cbf-%2" for the alias "%2".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf-expanded-variable%

if not exist "%cbf-expanded-variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf-expanded-variable%" does not exist.
  rem exit/b
)

set cbf-file-1=%cbf-expanded-variable%

rem File 2.
call n %4

if errorlevel 1 exit/b

call m compose_variable %5

if "%cbf-expanded-variable%" == "" (
  echo. 
  echo * Error: There is no definition for "cbf-%4" for the alias "%4".
  exit/b
)

rem echo.
rem echo * Expanded variable: %cbf-expanded-variable%

if not exist "%cbf-expanded-variable%" (
  rem echo.
  rem echo * Error: CBF Expanded variable "%cbf-expanded-variable%" does not exist.
  rem exit/b
)

set cbf-file-2=%cbf-expanded-variable%

@echo on
copy "%cbf-file-1%" "%cbf-file-2%"

exit/b


:help

echo. & echo Parameter Description:
echo. & echo Parameter 2: source alias.
echo. & echo Parameter 3: source dcv.
echo. & echo Parameter 4: target alias.
echo. & echo Parameter 5: target dcv.

exit/b



:_
:fc

echo. & echo * Use filename alias to "save as" a file in the current folder.

if "%~2" == "" goto help
if "%~2" == "?" goto help

echo. & echo p2: %2

call fnv2 %2

if errorlevel 1 exit/b
 
@echo on
copy "%cbf-fn%" %3

exit/b

:help

echo. & echo Parameter Description(s):
echo. & echo Parameter 2: source file alias.
echo. & echo Parameter 3: current folder destination filename.

exit/b



:_
:ff

echo. & echo * Use filename alias 1 to "save as" filename alias 2.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

call fnv %2

if errorlevel 1 (
  exit/b
)

set cbf-source_filename=%cbf-fn%

call n %3

if errorlevel 1 exit/b

echo. & echo * Source filename: %cbf-source_filename%

rem echo.
rem echo cbf-fn: %cbf-fn%

echo.
copy "%cbf-source_filename%" "%cbf-fn%"

exit/b


:help

echo. & echo Parameter Description:
echo. & echo Parameter 2: source filename alias.
echo. & echo Parameter 3: target filename alias.

exit/b



:_
:pc

echo. & echo * Copy folder aliased files to current folder.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call pn %2

if errorlevel 1 exit/b

echo.
xcopy /d /r /s /y "%cbf-pt%"

exit/b


:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: alias.

exit/b



:_+ CBF/VDI



::_
:cv

echo. & echo * Copy CBF file to VDI file.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call pn cbf>nul

set cbf-source-file=%cbf-pt%\%2.bat

if not exist "%cbf-source-file%" (
  echo. & echo * Error: Source file "%cbf-source-file%" doesn't exist.
  exit/b
)

call pn vdi>nul

echo.
@echo on
xcopy "%cbf-source-file%" "%cbf-pt%"

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Batch file name, without extension, you wish to copy.

exit/b



::_
:vc

echo. & echo * Copy a vdi file to the cbf folder.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call pn vdi>nul

set cbf-source-file=%cbf-pt%\%2.bat

if not exist "%cbf-source-file%" (
  echo. & echo * Error: Source file "%cbf-source-file%" doesn't exist.
  exit/b
)

call pn cbf>nul

echo.
xcopy "%cbf-source-file%\%2.bat" "%cbf-pt%"

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Batch file name, without extension, you wish to copy.


exit/b



:_
:tpt

echo. & echo * Copy CBF file template.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call pn vdi>nul

set cbf-source-file=%cbf-pt%\d.bat

if not exist "%cbf-source-file%" (
  echo. & echo * Error: Source file "%cbf-source-file%" doesn't exist.
  exit/b
)

xcopy "%cbf-source-file%" "%2.bat"

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Batch file name you wish to make a template of.

exit/b



:_
:pp

echo. & echo * Copy all files from alias path param 1 to alias path param 2.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

call pn %2

if errorlevel 1 exit/b

set cbf-source-path=%cbf-pt%

call pn %3

if errorlevel 1 exit/b

xcopy /d /h /r /y "%cbf-source-path%" "%cbf-pt%"

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Source folder.
echo. & echo Parameter 3: Destination folder.

exit/b

lu:
Mar-03-2022



:_+ Multi-Edit Config



::_
:mecfg

echo. & echo * The Multi-Edit config files seem to be corrupt, so copy mecfg files from dropbox to local.

rem lu: Aug-29-2020

echo.

call t mecfg

cd..

call m rd Config.04

call mcd Config.04

call pn drmecfg

echo.
xcopy /e "%cbf-pt%"

exit/b



::_
:copy_from_me_sz

echo. & echo * Copy Multi-Edit config files from share-zone.

echo.

call t mecfg

echo.
xcopy /d /h /r /s /y %share-zone%\Multi-Edit_2008_Config_Files 

exit/b

lu:
Dec-27-2018



::_
:copy_to_sz

echo. & echo * Copy Multi-Edit config files to share-zone.

echo.

call t mecfg

echo.
xcopy /d /h /r /s /y %share-zone%\Multi-Edit_2008_Config_Files 

exit/b

lu:
Dec-27-2018



::_
:cfg_dr_to_local

echo. & echo * Copy Multi-Edit configuration files from dropbox to my local drive.

echo. & echo * Now do vice versa.

echo.
xcopy /d /r /s /y "%dropbox%\Multi-Edit_2008_Config_Files" "%Multi-Edit_2008_Config_Files%"

exit/b



:_
:cp
:cps

echo. & echo * Copy current folder file to a nickname-specified path.

if "%~2" == "?" goto help
if "%~3" == "" goto help

call pn %3

if errorlevel 1 exit/b

echo.
@echo on
xcopy /y "%~2" "%cbf-pt%"
@echo off
echo.

if errorlevel 1 (
  call err Copy problem. May-17-2022-19-16
  exit/b
)

if "%~2"=="cp" (
  rem call t %3
  cd /d "%cbf-pt%"
  dir "%~2"
)

exit/b


:help

echo. & echo Parameter Description(s):
echo. & echo Parameter 2: source current folder file.
echo. & echo Parameter 3: target folder alias.

exit/b



:_+ All Family



::_
:all
:ca

echo. & echo * Copy all current folder files to a alias-specified path.

if "%~2" == "?" goto help
if "%~2" == "" goto help
call pn %2
if errorlevel 1 exit/b
@echo on
echo.
xcopy /d /y *.* "%cbf-pt%"
echo.
@echo off
if errorlevel 1 (
  call err Copy problem. Jan-19-2023-13-28
  exit/b
)
cd /d "%cbf-pt%"
dir

exit/b

:help
echo. & echo Parameter Description(s):
echo. & echo Parameter 2: target folder alias.
exit/b



::_
:fall

echo. & echo * Copy all alias-specified files to current folder.

if "%~2" == "?" goto help
if "%~2" == "" goto help
call pn %2
if errorlevel 1 exit/b
@echo on
echo.
xcopy /d /y "%cbf-pt%"\*.* 
echo.
@echo off
if errorlevel 1 (
  call err Copy problem. Mar-10-2023-14-22
  exit/b
)
dir

exit/b

:help
echo. & echo Parameter Description(s):
echo. & echo Parameter 2: target folder alias.
exit/b



:_
:mmf
:rms

echo. & echo * Turn on or off RMS processing.

if "%~2" == "?" goto help
call t rms>nul
if "%2"=="" goto turn-on-processing
if "%2"=="off" goto turn-off-processing

:turn-on-processing
echo. & echo * Turn ON processing.
echo.
copy repo-list-uncommented.txt repo-list.txt
echo.
if errorlevel 1 (
  call err Copy problem. Mar-01-2023-13-20
)

exit/b

:turn-off-processing
echo. & echo * Turn OFF processing.
echo.
copy repo-list-commented.txt repo-list.txt
echo.
if errorlevel 1 (
  call err Copy problem. Mar-01-2023-13-25
)

exit/b

:help
echo. & echo * Parameter Description(s):
echo. & echo * Parameter 2: Either "on" or "off".
echo. & echo * Parameter 2: If left blank, processing is turned off.
exit/b



:_
:cp2

echo. & echo * Copy file in the current directory to nickname-specified path. (Nov-5-2023 version)

if "%~2" == "?" goto help
if "%~2" == "" goto help

call fe "%~1" || exit/b 5

call rf r>nul

call pn %2 || exit/b

@echo on
copy "%~1" "%cbf-pt%"
@echo off

if errorlevel 1 exit/b

call t %2
dir "%~1"

exit/b


:help

echo. & echo * Parameter Description(s):
echo. & echo   Parameter 1: Current folder filename.
echo   Parameter 2: Target folder alias.

exit/b



:_ + TE Family (!fyte)



::_
:te

echo. & echo * Turn the template file into a new batch file.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call t cbf

echo.
copy te.bat %2.bat

call e %2.bat

exit/b

:help

cls
echo. & echo * Parameter Descriptions:
echo   Parameter 2: Targeted batch file, without extension, to copy the template to.

exit/b

lu:
Feb-18-2022



::_
:sp

echo. & echo * Turn the template file into a new batch file.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call t cbf

echo.
copy sparse.bat %2.bat

call e %2.bat

exit/b

:help

cls
echo. & echo * Parameter Descriptions:
echo   Parameter 2: Targeted batch file, without extension, to copy the template to.

exit/b

lu:
Jan-12-2024



::_
:tef

echo. & echo * Turn the FF template file into a new bash file.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call t f

echo.
copy te.sh %~2.sh

@echo on
call e %~2.sh

exit/b


:help

echo. & echo * Parameter Description(s):
echo   Parameter 2: Targeted bash file, without extension, to copy the template to.

exit/b

lu:
Sep-30-2023
Jul-6-2022



:_
:js
:py

echo. & echo * Turn the code template file into a new code file.

if "%~2" == "?" goto help
if "%~2" == "" goto help

call t d>nul

echo.
copy /-y te.%1 %2.%1

call touc %2.%1

call vc %2.%1

exit/b


:help

echo. & echo Parameter Descriptions:
echo. & echo Parameter 2: Targeted new code file, without extension, to copy the template to.

exit/b

lu:
Nov-7-2023



:_
:r

cls

echo. & echo * Copy and rename resume.

call t dn>nul

call mv cp jon*ume.docx r

call t d>nul

python date.py>current-date.txt
set /p cbf-date=<current-date.txt
set cbf-fn=Jonathan Jones' Resume - %cbf-date%.docx

rem echo. & echo cbf-fn: %cbf-fn%

call t r>nul

copy "Jonathan Jones' Resume.docx" "%cbf-fn%"

call d

exit/b



:_

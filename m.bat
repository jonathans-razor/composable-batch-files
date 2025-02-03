:_ (!m)

@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo * Perform simple miscellaneous tasks using a function routing style.

echo. & echo   Usage note: This file should only be used for simple functions that ^
do not require many parameters or require a dedicated help section. If there ^
is a need for a more complicated process or multiple related commands, ^
then a separate standalone batch file should be created.

echo. & echo   Usage: m [single parameter]

echo. & echo * Parameter 1: Alias of the function you wish to execute.

echo. & echo   Batch File Style: Function routing.

echo. & echo   Batch File Style: Multipurpose.

echo.
echo          Parameter  Description
echo ------------------  --------------------------------------------------------
echo                ctm  Create timestamped file.
echo               free  Report on free hard disk space.
echo               ipco  Ipconfig/all.
echo                ise  Initialize environment. 
echo               log4  Is log4j jar file present?
echo                ocf  Open CMAC files.
echo               path  Pipe path to file.
echo                sde  Set default text editor.
echo               touc  Update all files in the current folder to the current time.
echo               tran  Open latest transfer.

exit/b

lu: Nov-3-2023



:_

Old Table of contents

echo          Parameter  Description
echo ------------------  -------------------------------------------------------------------
echo       build_applet  Build the applet.
echo          build_ejb  Build EJB WAR file.
echo            compile  Run sencha app build testing.
echo           compilep  Run sencha app build production.
echo           copy_ext  Copy ext folder contents to the right place.
echo                ctf  Create timestamped file.
echo       double_click  Perform command-line equivalent of a double click.
echo            del_hex  Delete WildFly Dynamic Folder.
echo               depl  Deploy a new WAR file.
echo            depl_s3  Deploy a new WAR file in the S3 envrironment.
echo              el_cs  Error level - clear silently.
echo               el_g  Error level - get.
echo               el_s  Error level - set.
echo                 f5  Compile and refresh Ext JS code in existing hex.
echo file_type_presence  Check the current folder for the presence of a particlar file type.
echo               free  Report on free hard disk space.
echo      gen_cred_proc  Run generate encrypted Maven credentials process.
echo            gen_ver  Generate new timestamp-based Mercury version #.
echo               log4  Is log4j jar file present?
echo               mde1  Mercury Development Environment (MDE) validation.
echo               mde2  MDE prerequisites - part 2.
echo               mde3  MDE prerequisites - part 3.
echo       [your label]  [your description] [Build your own.]
echo                ppt  PowerPoint Presentation on CBF.
echo        prepare_mob  Prepare for mobile deployment.
echo             pscrub  Partially scrub deployment environment.
echo                 rd  Remove folder at current location.
echo              reset  Reset CBF environment variables.
echo          run_tirem  Run tirem.
echo                sde  Set default text editor.
echo              scrub  When deploying new War file, this prepares env.
echo      set_parent_fd  Set parent folder.
echo        start_timer  Sets the start time of a script.
echo         stop_timer  Reports the length of the script run time.
echo         s6_deleted  Rerun these commands if sencha folder was deleted.
echo      start_wildfly  Start WildFly. Refresh the environment.
echo       stop_wildfly  Stop WildFly.
echo                svc  Start Windows Services viewer.
echo       tirem_preq_1  One-time copy necessary to set up target folder.
echo       tirem_preq_2  Tirem prerequisite 2: One-time setup requirement.
echo       tirem_preq_3  Tirem prerequisite 3: One-time setup requirement.
echo         update_pub  In preparation for mobile deploy., update public.
echo        update_tags  Update tag files.
echo           wild_svc  Install WildFly as a service.
echo             wiz_lh  Run wizard that builds a WAR file for localhost.
echo             wiz_jv  Run wizard that builds only Java changes for localhost.
echo           wiz_prod  Run wizard that builds a WAR file for production.
echo           wiz_stag  Run wizard that builds a WAR file for staging.



:_
;Metadata: Track Size (!tsm)

     Date      Lines      Bytes   Functs  Notes
 -----------  ------  ---------  -------  -------------------------------------------------

: Dec-9-2024   4,871     87,077      226

:Feb-21-2024   5,041     88,847      235  m.bat

: Jan-4-2024   5,370     91,844      241

: Jan-3-2024   5,368     91,800      241

: Nov-3-2023   5,835     97,420      249

: Jan-1-2019   3,870     67,129      166

:Jun-13-2018   3,287     61,665      136

: Feb-9-2018   2,944     57,139      120

: Jan-4-2018   2,891     56,098      117

: Nov-9-2017   2,645     49,604      101

: Aug-8-2017   2,432     44,512       91

: Aug-2-2017   2,274     43,034       82

: May-9-2017   2,126     40,700       75

:Apr-17-2017   1,574     22,170       60

:Apr-11-2017   1,310     17,930       53

: Apr-6-2017     893     12,731       38



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_
:delete_stale_ext_from_wildfly_dynamic_folder

echo. & echo * Delete stale Ext JS. On Feb-10-2017, this rubric fixed enabled this to work.

echo.

call t set_wildfly_dynamic_folder

echo Current Folder: %cd%
echo.

rd /q /s classic

rd /q /s modern

rd /q /s resources

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

exit/b



:_
:delete_stale_ext_js_from_testing_folder

echo. & echo * Delete stale Ext JS from the testing folder.

if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury echo Testing folder's not there.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury exit/b

cd \projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

echo Current Folder: %cd%
echo.

rd /q /s classic

rd /q /s modern

rd /q /s resources

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

exit/b



:_
:delete_stale_ext_js_from_webapp_folder

echo. & echo * Delete stale Ext JS from webapp folder.

echo.

cd \projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

rem rd /q /s classic

rem rd /q /s modern

del cache.appcache

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

exit/b



:_
:htwar

echo. & echo * How to Build a War File Document

cd \mercury\batch_files

cls

type "How to Build a War File.txt"

exit/b

lu:
Feb-17-2017



:_
:tirem
:run_tirem

echo. & echo * Run Tirem.

rem I was only able to successfully do this after I copied David's .m2 folder 
rem into my %homedrive%%homepath% folder.

cd c:\projects\netbeans\mercury6\mercury-tirem

echo Current folder: %cd%
echo.

@echo on
tirem.bat --debug --pcs c:\projects\netbeans\mercury6\mercury-tirem\tirem7184397588571818164.pcs
@echo off

exit/b

lu:
Mar-6-2017



:_
:rename_for_production_war

echo. & echo * Rename index to Mercury. Mike Stonkey said we needed to do this.

cd \projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

if exist index.html ren index.html mercury.html
if not exist index.html Echo index.html does not exist.

exit/b

lu:
Mar-7-2017



:_
:rename_for_debug_war

echo. & echo * Rename index to Mercury.

cd \projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

if exist index.html ren index.html mercury.html
if not exist index.html Echo index.html does not exist.

exit/b

lu:
Apr-5-2017



:_
:delete_target
:delete_target_folder

echo. & echo * Delete target folder so that you know you have a fresh war file.

cd C:\projects\netbeans\mercury6\Mercury-web

rd /q /s target

exit/b

lu:
Apr-4-2017



:_
:copy_for_production

echo. & echo * Copy fresh Ext JS into WildFly folder.

cd \projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

exit/b



:_
:start_wildfly_do_not_delete_hex_folder
:wilddn

echo. & echo * Start WildFly - do not delete hex folder. Deprecated.

rem Deprecated because I can't think of a time when you would want to do this.
rem Each time WildFly starts it creates a new hex folder so the old hex folder is of no use
rem other than as an archive.

color 0b

call :set_wildfly_location

call %wildfly_location%\bin\standalone.bat

exit/b

lu:
Apr-5-2017



:_
:del_dyn
:del_hex
:del_dynamic
:delete_wildfly_dynamic_folder

echo. & echo * Delete WildFly Dynamic Folder.

call :set_wildfly_location
rem echo Sep-19-2017.3

if not exist %wildfly_location%\standalone\tmp\vfs\temp Echo vfs\temp folder missing so there was no hex folder to remove.

if not exist %wildfly_location%\standalone\tmp\vfs\temp exit/b
rem echo Sep-19-2017.4

cd %wildfly_location%\standalone\tmp\vfs\temp
rem echo Sep-19-2017.5

dir/b>%temp%\environment_variable_temporary_storage.txt
rem echo Sep-19-2017.6

set /p dynamic_server_location_part_1=<%temp%\environment_variable_temporary_storage.txt

if exist "%dynamic_server_location_part_1%" rd /q /s "%dynamic_server_location_part_1%"

echo Sep-19-2017.8

rem If you are having issues, it might make sense to run the following comand:
rem call :delete_standalone_folders

exit/b

lu:
Feb-9-2017



:_
:tirem_preq_1
:tirem_prereq_1

echo. & echo * These folders must be present for tirem to work.

mcd c:\mercury\files

md overview
md plan
md request
md system
md tirem

exit/b

lu:
Apr-10-2017



:_
:tirem_preq_2
:tirem_prereq_2

echo. & echo * This is one-time copy that needs to be made in order to properly prepare the target folder prior to tirem running.

cd c:\mercury\tirem

xcopy /d /h /r /s /y "c:\projects\netbeans\mercury6\mercury-tirem"

exit/b

lu:
Apr-10-2017



:_
:tirem_preq_3
:tirem_prereq_3

echo. & echo * This is one-time copy that needs to be made in order to properly prepare the target folder prior to tirem running.

cd c:\projects\netbeans\mercury6\mercury-tirem\target

echo Current folder: %cd%
echo.If target folder is not present, you should create it.

pause

xcopy /d /h /r /s /y "C:\projects\netbeans\mercury6\Mercury-tirem\prerequisite jars"

exit/b

lu:
Mar-6-2017



:_
:copy_stand

echo. & echo * Copy standalone.xml to j1 and j2.

cd c:\mercury\batch_files

xcopy /y "standalone (from Virginia).xml" c:\a\j1.txt
xcopy /y "standalone (from NES-1KKHHC2).xml" c:\a\j2.txt

exit/b

lu:
Apr-10-2017



:_
:gen_ver
:generate_version_number

echo. & echo * Generate a new timestamp-based Mercury version number.

echo.

cd c:\mercury\batch_files

call java -cp . generate_mercury_version_number

exit/b

lu:
Apr-10-2017



:_
:use_old_debug_jnlp_file
:use_testing_jnlp_file

echo. & echo * Use the debug JNLP file.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /r /y MercuryRequestApplet.jp.jnlp MercuryRequestApplet.jnlp

exit/b

lu:
Apr-13-2017



:_
:use_debug_jnlp_file
:use_testing_jnlp_file

echo. & echo * Use the debug JNLP file.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /r /y MercuryRequestApplet.proto.jnlp MercuryRequestApplet.jnlp

exit/b

lu:
Apr-13-2017



:_
:use_production_jnlp_file

echo. & echo * Use the production JNLP file.

echo.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp\resources\applet

xcopy /y MercuryRequestApplet.va.jnlp MercuryRequestApplet.jnlp

exit/b

lu:
Apr-13-2017



:_
:delete_stale_ext_js_from_production_folder

echo. & echo * Delete stale Ext JS from the production folder.

if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury echo Production folder's not there.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury echo.
if not exist c:\projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury exit/b

cd \projects\netbeans\sencha\HTML5Application\public_html\build\production\Mercury

echo Current Folder: %cd%
echo.

rd /q /s classic

rd /q /s modern

rd /q /s resources

del classic.json

del classic.jsonp

rem del index.html

del microloader.jsp

del modern.json

del modern.jsonp

exit/b



:_
:copy_for_debug

echo. & echo * Copy fresh Ext JS for use in building a debuggable War file.

cd C:\projects\netbeans\mercury6\Mercury-web\src\main\webapp

echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

exit/b



:_
:copy
:copy_for_test
:copy_fresh_ext_js_into_wildfly_dynamic_folder

call :delete_stale_ext_from_wildfly_dynamic_folder

echo. & echo * Copy fresh Ext JS into WildFly folder. This should be used only when WildFly is running because it depends on the presence of an active hex folder.

echo.
echo Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\testing\Mercury

goto exit



:_
:use_6
:use_6_button_test_files

echo. & echo * Use 6 button test files.

echo.
cd c:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\view\dashboard\

xcopy /y c:\mercury\batch_files\*.js

exit/b

lu:
Apr-17-2017



:_
:f5
:compile_and_refresh_ext_js_code
:compile_and_refresh_wildfly

echo. & echo * Compile and refresh Ext JS code in the existing WildFly folder.

rem Remember that if you restart WildFly, the hex folder gets recreated, meaning that
rem any new JavaScript code is deleted in the process.

call :run_sencha_app_build_testing

call :delete_stale_ext_from_wildfly_dynamic_folder

call :copy_fresh_ext_js_into_wildfly_dynamic_folder

goto exit

lu:
Apr-7-2017



:_
:start_wildfly
:start_wildfly_delete_hex_folder
:wild
:wildd

echo. & echo * Start WildFly. Refresh the environment.

echo Sep-19-2017.1
call :delete_wildfly_dynamic_folder

rem Apr-18-2017: I commented out the below line because perhaps 25% of the time
rem I kept having to restart WildFly.
rem call :delete_standalone_folders

color 0a

rem call :set_wildfly_location

call %wildfly_location%\bin\standalone.bat

rem You know WildFly is ready when you see the "692" message:

rem 13:28:53,644 INFO [org.jboss.as] (Controller Boot Thread) WFLYSRV0025: WildFly Full 
rem 9.0.2.Final (WildFly Core 1.0.2.Final) started in 63762ms - Started 692 of 864 services 
rem (221 services are lazy, passive or on-demand).

rem If you see a number less than 692, you most likely have a problem.

exit/b

lu:
Apr-5-2017



:_+ Build Wizard Family



::_
:wiz_stag

set is_debug_build=true
set is_hosted_on_server=true
set is_java_change_only=false
set target_server=staging

echo. & echo * Run wizard for deployment to staging.

goto begin_wizard



::_
:wiz
:wiz_prod

set is_debug_build=false
set is_hosted_on_server=true
set is_java_change_only=false
set target_server=production

echo. & echo * Run wizard for deployment to production.

goto begin_wizard



::_
:wiz_lh

set is_debug_build=true
set is_hosted_on_server=false
set is_java_change_only=false
set target_server=localhost

echo. & echo * Run wizard for deployment to localhost.

goto begin_wizard



::_
:wiz_jv

set is_debug_build=true
set is_hosted_on_server=false
set is_java_change_only=true
set target_server=localhost

echo. & echo * Run wizard for deployment to localhost that has Java changes only.

goto begin_wizard_midway



::_
:bw
:begin_wizard

echo.
set /P user_option=Did you remember to do a get-latest? (y/n): 

if not "%user_option%"=="y" echo.
if not "%user_option%"=="y" echo Abort.
if not "%user_option%"=="y" exit/b

echo.
set /P user_option=Would you like to update the version number?(y/n): 

if not "%user_option%"=="y" echo.
if not "%user_option%"=="y" goto skip_version

call :generate_version_number

echo.

pause

call :update_the_version_number_2

rem if "%target_server%" == "production" call no disable_mobile_login

echo.

rem This pause allows time for all of the above text edits to be saved.
pause

:skip_version

:begin_wizard_midway

if "%target_server%" == "localhost" call :stop_wildfly

call :use_default_netconfig_file

if "%is_java_change_only%" == "true" goto continue_wizard

if     "%target_server%" == "production" call h run_sencha_app_build_production
if not "%target_server%" == "production" call :run_sencha_app_build_testing

:continue_wizard

rem call :rename_for_debug_war

rem if "%target_server%" == "production" call :back_up_war_file

call :delete_target_folder

call :delete_stale_ext_js_from_webapp_folder

if "%target_server%" == "production" call :use_agi_license_for_production
if "%target_server%" == "staging" call :use_agi_license_for_staging

if     "%is_debug_build%" == "true" call :copy_for_debug
if not "%is_debug_build%" == "true" call :copy_for_production

if     "%is_debug_build%" == "true" call :use_debug_jnlp_file
if not "%is_debug_build%" == "true" call :use_production_jnlp_file

if     "%is_hosted_on_server%" == "true" call :build_war_file_for_server
if not "%is_hosted_on_server%" == "true" call :build_war_file_for_local

if exist C:\projects\netbeans\mercury6\Mercury-web\target call t targ

echo.
if exist *.war echo WAR file has been created.
if not exist *.war echo * Error: WAR file has NOT been created!
if not exist *.war exit/b

if exist C:\projects\netbeans\mercury6\Mercury-web\target call of targ

if "%is_hosted_on_server%" == "true" exit/b

rem echo.
rem set /P user_option=Would you like to run scowl? (y/n): 
rem echo.

rem if "%user_option%"=="y" call :scowl
call :scowl

exit/b



:_
:stop_wildfly

echo. & echo * Stop WildFly.

echo.

taskkill /f /fi "windowtitle eq wildfly"

rem I don't know why I need to call this twice, but it doesn't work if I don't.
taskkill /f /fi "windowtitle eq wildfly"

exit/b

lu:
Apr-28-2017



:_
:fix_buttons

echo. & echo * Fix button warnings by Mike Stonkey.

echo.
rem This will get rid of the warnings when compiling and adds the icons to the buttons when 
rem using IE and disabling font downloads. 
 
rem Copy and paste the text from the attachments into a command prompt or change the name and
rem run them as bat files in the following directories
 
rem Fix-menu.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\menu
 
rem Fix-buttons.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\button
 
rem Assuming your app is installed in C:\Projects\NetBeans\Sencha\
 
rem -Mike

cd C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\resources\images\button

copy default-large-arrow-rtl.png facebook-large-arrow-rtl.png
copy default-large-arrow-rtl.png gray-large-arrow-rtl.png
copy default-large-arrow-rtl.png orange-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-blue-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-green-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-orange-large-arrow-rtl.png
copy default-large-arrow-rtl.png soft-yellow-large-arrow-rtl.png
copy default-large-arrow.png facebook-large-arrow.png
copy default-large-arrow.png gray-large-arrow.png
copy default-large-arrow.png orange-large-arrow.png
copy default-large-arrow.png soft-blue-large-arrow.png
copy default-large-arrow.png soft-green-large-arrow.png
copy default-large-arrow.png soft-orange-large-arrow.png
copy default-large-arrow.png soft-yellow-large-arrow.png
copy default-large-s-arrow-b.png facebook-large-s-arrow-b.png
copy default-large-s-arrow-b.png gray-large-s-arrow-b.png
copy default-large-s-arrow-b.png orange-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-blue-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-green-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-orange-large-s-arrow-b.png
copy default-large-s-arrow-b.png soft-yellow-large-s-arrow-b.png
copy default-large-s-arrow-rtl.png facebook-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png gray-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png orange-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-blue-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-green-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-orange-large-s-arrow-rtl.png
copy default-large-s-arrow-rtl.png soft-yellow-large-s-arrow-rtl.png
copy default-large-s-arrow.png facebook-large-s-arrow.png
copy default-large-s-arrow.png gray-large-s-arrow.png
copy default-large-s-arrow.png orange-large-s-arrow.png
copy default-large-s-arrow.png soft-blue-large-s-arrow.png
copy default-large-s-arrow.png soft-green-large-s-arrow.png
copy default-large-s-arrow.png soft-orange-large-s-arrow.png
copy default-large-s-arrow.png soft-yellow-large-s-arrow.png
copy default-medium-arrow-rtl.png soft-orange-medium-arrow-rtl.png
copy default-medium-arrow.png soft-orange-medium-arrow.png
copy default-medium-s-arrow-b.png soft-orange-medium-s-arrow-b.png
copy default-medium-s-arrow-rtl.png soft-orange-medium-s-arrow-rtl.png
copy default-medium-s-arrow.png soft-orange-medium-s-arrow.png
copy default-small-arrow-rtl.png angry-red-small-arrow-rtl.png
copy default-small-arrow-rtl.png blue-small-arrow-rtl.png
copy default-small-arrow-rtl.png facebook-small-arrow-rtl.png
copy default-small-arrow-rtl.png gray-small-arrow-rtl.png
copy default-small-arrow-rtl.png green-small-arrow-rtl.png
copy default-small-arrow-rtl.png header-small-arrow-rtl.png
copy default-small-arrow-rtl.png orange-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-blue-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-cyan-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-green-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-purple-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-red-small-arrow-rtl.png
copy default-small-arrow-rtl.png soft-yellow-small-arrow-rtl.png
copy default-small-arrow.png angry-red-small-arrow.png
copy default-small-arrow.png blue-small-arrow.png
copy default-small-arrow.png facebook-small-arrow.png
copy default-small-arrow.png gray-small-arrow.png
copy default-small-arrow.png green-small-arrow.png
copy default-small-arrow.png header-small-arrow.png
copy default-small-arrow.png orange-small-arrow.png
copy default-small-arrow.png soft-blue-small-arrow.png
copy default-small-arrow.png soft-cyan-small-arrow.png
copy default-small-arrow.png soft-green-small-arrow.png
copy default-small-arrow.png soft-purple-small-arrow.png
copy default-small-arrow.png soft-red-small-arrow.png
copy default-small-arrow.png soft-yellow-small-arrow.png
copy default-small-s-arrow-b.png angry-red-small-s-arrow-b.png
copy default-small-s-arrow-b.png blue-small-s-arrow-b.png
copy default-small-s-arrow-b.png facebook-small-s-arrow-b.png
copy default-small-s-arrow-b.png gray-small-s-arrow-b.png
copy default-small-s-arrow-b.png green-small-s-arrow-b.png
copy default-small-s-arrow-b.png header-small-s-arrow-b.png
copy default-small-s-arrow-b.png orange-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-blue-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-cyan-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-green-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-orange-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-purple-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-red-small-s-arrow-b.png
copy default-small-s-arrow-b.png soft-yellow-small-s-arrow-b.png
copy default-small-s-arrow-rtl.png angry-red-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png blue-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png facebook-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png gray-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png green-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png header-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png orange-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-blue-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-cyan-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-green-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-orange-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-purple-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-red-small-s-arrow-rtl.png
copy default-small-s-arrow-rtl.png soft-yellow-small-s-arrow-rtl.png
copy default-small-s-arrow.png angry-red-small-s-arrow.png
copy default-small-s-arrow.png blue-small-s-arrow.png
copy default-small-s-arrow.png facebook-small-s-arrow.png
copy default-small-s-arrow.png gray-small-s-arrow.png
copy default-small-s-arrow.png green-small-s-arrow.png
copy default-small-s-arrow.png header-small-s-arrow.png
copy default-small-s-arrow.png orange-small-s-arrow.png
copy default-small-s-arrow.png soft-blue-small-s-arrow.png
copy default-small-s-arrow.png soft-cyan-small-s-arrow.png
copy default-small-s-arrow.png soft-green-small-s-arrow.png
copy default-small-s-arrow.png soft-orange-small-s-arrow.png
copy default-small-s-arrow.png soft-purple-small-s-arrow.png
copy default-small-s-arrow.png soft-red-small-s-arrow.png
copy default-small-s-arrow.png soft-yellow-small-s-arrow.png
copy default-toolbar-small-arrow-rtl.png angry-red-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png blue-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png gray-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png green-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png orange-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-blue-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-cyan-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-green-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-orange-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-purple-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-red-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow-rtl.png soft-yellow-toolbar-small-arrow-rtl.png
copy default-toolbar-small-arrow.png angry-red-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png blue-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png gray-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png green-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png orange-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-blue-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-cyan-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-green-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-orange-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-purple-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-red-toolbar-small-arrow.png
copy default-toolbar-small-arrow.png soft-yellow-toolbar-small-arrow.png
copy default-toolbar-small-s-arrow-b.png angry-red-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png blue-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png gray-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png green-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png orange-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-blue-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-cyan-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-green-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-orange-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-purple-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-red-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-b.png soft-yellow-toolbar-small-s-arrow-b.png
copy default-toolbar-small-s-arrow-rtl.png angry-red-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png blue-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png gray-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png green-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png orange-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-blue-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-cyan-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-green-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-orange-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-purple-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-red-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow-rtl.png soft-yellow-toolbar-small-s-arrow-rtl.png
copy default-toolbar-small-s-arrow.png angry-red-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png blue-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png gray-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png green-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png orange-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-blue-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-cyan-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-green-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-orange-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-purple-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-red-toolbar-small-s-arrow.png
copy default-toolbar-small-s-arrow.png soft-yellow-toolbar-small-s-arrow.png

exit/b

lu:
May-2-2017



:_
:fix_menu

echo. & echo * Fix menu warnings by Mike Stonkey.

echo.

rem This will get rid of the warnings when compiling and adds the icons to the buttons when 
rem using IE and disabling font downloads. 
 
rem Copy and paste the text from the attachments into a command prompt or change the name and
rem run them as bat files in the following directories
 
rem Fix-menu.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\menu
 
rem Fix-buttons.txt:
rem C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\
rem resources\images\button
 
rem Assuming your app is installed in C:\Projects\NetBeans\Sencha\
 
rem -Mike

cd C:\Projects\NetBeans\Sencha\HTML5Application\public_html\ext\classic\theme-neptune\resources\images\menu

copy default-checked.png default-menubar-checked.png
copy default-unchecked.png default-menubar-unchecked.png
copy default-group-checked.png default-menubar-group-checked.png
copy default-menu-parent-left.png default-menubar-menu-parent-left.png
copy default-scroll-top.png default-menubar-scroll-top.png
copy default-scroll-bottom.png default-menubar-scroll-bottom.png

exit/b

lu:
May-2-2017



:_
:c0
:c1
:c2
:c3
:c5
:c6
:c7
:c8
:c9
:c10
:c11
:c12
:c13

echo. & echo * Copy background.

echo.
call t open_hex_folder

cd classic\resources\images

xcopy /y C:\Users\jonathan.r.jones\Documents\DropBox\nes\documents\%1lock-screen-background.jpg lock-screen-background.jpg

exit/b

lu:
May-2-2017



:_
:process_mercury_version_number

echo. & echo * Generate a Mercury version number, set it to an environment variable and then echo it to the command line.

echo.

cd c:\mercury\batch_files

java -cp . generate_mercury_version_number>%tmp%\mercury_version_number.txt

set /p mercury_version_number=<%tmp%\mercury_version_number.txt

echo %mercury_version_number%

exit/b

lu:
May-3-2017



:_
:back_up_war_file
:buw

echo. & echo * Back up war file.

echo.
cd C:\projects\netbeans\mercury6\Mercury-web\target

if /i not "%computername%"=="NES-1KKHHC2" echo Not Jonathan's machine so exit this function.
if /i not "%computername%"=="NES-1KKHHC2" goto exit be.

xcopy /y *.war "C:\Users\jonathan.r.jones\Documents\DropBox\nes\Mercury Virginia WAR Files"

exit/b

lu:
May-3-2017



:_
:christen_development_war_file

echo. & echo * Christen development war file.

cd C:\projects\netbeans\mercury6\Mercury-web\target

set /p mercury_version_number=<%tmp%\mercury_version_number.txt

ren *.war "Mercury Development - %mercury_version_number%.war"

exit/b

lu:
May-3-2017



:_
:set_server_title

echo. & echo * Set server title.

rem echo.
rem 

title = Composable Batch Files Helper



:_
:set_server_path

echo. & echo * Set server path.

rem set path=C:\Program Files\MySQL\MySQL Server 5.7\bin;%path%
rem set path=C:\Program Files\MySQL\MySQL Utilities 1.6;%path%
rem set path=c:\mercury\batch_files;%path%

exit/b

lu:
May-8-2017



:_
:wild_svc

echo. & echo * Install WildFly as a service.

call :set_wildfly_location

cd %wildfly_location%\bin\service

service.bat install

exit/b

lu:
May-10-2017



:_
:ppt
:pptx
:power

echo. & echo * CBF Powerpoint Presentation.

call start "my title" "Composable Batch File Helper.pptx"

rem call start "my title" "Composable Batch File Helper.pptx - Shortcut.lnk"

exit/b

lu:
May-19-2017



:_
:old_ppt

echo. & echo * Powerpoint Presentation on Mercury.

rem This way of opening a PowerPoint document also works.

cd c:\mercury\batch_files

call start "my title" "Mercury Helper.pptx"

exit/b

lu:
May-19-2017



:_
:set_wildfly_location

echo. & echo * Set WildFly location.

set wildfly_location=c:\mercury\server\wildfly-9.0.2.final

rem WIN-NRFUV3XWUWI is Japan.
rem if /i %computername%==WIN-NRFUV3XWUWI set wildfly_location=c:\mercury\server\wildfly-9.0.1.final

exit/b

lu:
May-22-2017



:_
:scrub
:scrub_depl
:scrub_deployment_environment

echo. & echo * Scrub deployment environment.

call :set_wildfly_location

cd %wildfly_location%\standalone\deployments

echo Current folder: %cd%
echo.Delete old war files.
del /f /q *.*

cd %wildfly_location%\standalone

echo Current folder: %cd%
echo.Delete data folder.
rd /q /s data

echo Delete tmp folder.
rd /q /s tmp

rem echo.
rem echo Delete log folder.
rem rd /q /s log

exit/b

lu:
Apr-7-2017



:_
:del_stan
:delete_standalone_folders
:pscrub

echo. & echo * Partially scrub deployment environment.

call :set_wildfly_location

cd %wildfly_location%\standalone\deployments

echo Current folder: %cd%
echo.Delete deployed war file.
echo.

del /q *.*deployed

cd %wildfly_location%\standalone

echo Current folder: %cd%
echo.Delete data folder.
rd /q /s data

echo Delete tmp folder.
rd /q /s tmp

exit/b

lu:
Apr-7-2017



:_
:pack

echo. & echo * Build a MacOS Cordova-Sencha package.

rem From my research, it looks like I need to create a folder that I drop into Cordova's
rem Cordova's "www" folder. This function creates the necessary items for that 
rem folder/package.

echo.

call t mac

set package_folder=MacOS Cordova-Sencha Package

if exist "%package_folder%" rd /q /s "%package_folder%"

call mcd "%package_folder%"

call mcd modern

xcopy /s C:\projects\netbeans\sencha\HTML5Application\public_html\modern

cd..

call mcd app

xcopy /s C:\projects\netbeans\sencha\HTML5Application\public_html\app

exit/b

lu:
Jun-22-2017



:_
:update_pub

echo. & echo * In preparation for a mobile deployment, update Public HTML folder.

echo.

cd C:\Users\jonathan.r.jones\Documents\DropBox\nes\macintosh\public_html

xcopy /d /h /r /s /y C:\projects\netbeans\sencha\HTML5Application\public_html

exit/b

lu:
Jul-3-2017



:_
:trgm

echo. & echo * Trace route our new production server issue.

tracert smtp.gmail.com

exit/b

lu:
Jul-28-2017



:_
:traws

echo. & echo * Trace route to AWS smtp.

tracert email-smtp.us-east-1.amazonaws.com

exit/b

lu:
Jul-28-2017



:_
:wb

echo. & echo * Start MySQL Workbench.

start "Test Title" "C:\Program Files\MySQL\MySQL Workbench 6.3 CE\MySQLWorkbench.exe"

exit/b

lu:
Aug-21-2017



:_
:ajm

echo. & echo * Use the app.json file used for a mobile build.

echo.
cd C:\projects\netbeans\sencha\HTML5Application\public_html

xcopy /y "app - for mobile build.json" "app.json"

exit/b

lu:
Aug-28-2017



:_
:s6_deleted

echo. & echo * Rerun these commands if Sencha folder was deleted.

call :fix_buttons

call :fix_menu

rem call :sencha_app_upgrade

exit/b

lu:
May-3-2017



:_
:copy_for_dev

call :delete_stale_ext_from_wildfly_dynamic_folder

echo. & echo * Copy fresh Ext JS into WildFly folder. This should be used only when WildFly is running because it depends on the presence of an active hex folder.

echo.Current Folder: %cd%
echo.

xcopy /d /h /r /s /y c:\projects\netbeans\sencha\HTML5Application\public_html\build\development\Mercury

exit/b



:_+ Netconfig Family



::_
:use_default_netconfig_file

echo. & echo * Use the default Net.config file. Use this method building WAR files.

echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\batch_files\NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\batch_files\NetConfig.js"

exit/b

lu:
Aug-23-2017



::_
:use_production_netconfig_file

echo. & echo * Use the production Net.config file. Caution: Do not use building WAR files, only for Cordova builds.

echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for production.js" "NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for production.js" "NetConfig.js"

exit/b

lu:
Aug-23-2017



::_
:use_localhost_netconfig_file

echo. & echo * Use the Localhost Net.config file. Do not use building WAR files, only for Cordova builds.

echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for Localhost.js" "NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for Localhost.js" "NetConfig.js"

exit/b

lu:
Sep-13-2017



::_
:use_staging_netconfig_file

echo. & echo * Use the staging Net.config file. Do not use building WAR files, only for Cordova builds.

echo.

cd C:\projects\netbeans\sencha\HTML5Application\public_html\modern\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for staging.js" "NetConfig.js"

cd C:\projects\netbeans\sencha\HTML5Application\public_html\classic\src\utils

xcopy /y "c:\mercury\mobility\NetConfig - for staging.js" "NetConfig.js"

exit/b

lu:
Aug-28-2017



::_
:ncaw

echo. & echo * Copy over NetConfig - for App Watch.js for both classic and modern.

echo.

call t cutils

xcopy /y "c:\mercury\mobility\NetConfig - for Sencha App Watch.js" "NetConfig.js"

call t mutils

xcopy /y "c:\mercury\mobility\NetConfig - for Sencha App Watch.js" "NetConfig.js"

exit/b

lu:
Sep-6-2017



:_
:copy_war_for_s3

echo. & echo * Copy WAR file to the deployment folder.

echo.

call t depl

cd | find /i "c:\Mercury\Server\wildfly-9.0.2.Final\standalone\deployments">nul
if %errorlevel% == 1 echo.
if %errorlevel% == 1 echo * Error: Deployment folder not found.
if %errorlevel% == 1 exit/b

rem Ensure that the path here is equal to where the WAR file was copied to on the S3 bucket.

xcopy "c:\mercury\latest war file\*.war"

exit/b

lu:
Oct-25-2017



:_
:copy_war

echo. & echo * Copy over the desired war file to the local deployments folder.

echo.

cd c:\projects\netbeans\mercury6\mercury-web\target\

echo Copy over new war file.

call :set_wildfly_location

xcopy *.war %wildfly_location%\standalone\deployments

exit/b

lu:
Apr-28-2017



:_
:deploy
:deploy_war

echo. & echo * Locally deploy war file.

call :stop_wildfly

call :scrub_deployment_environment

call :copy_war

call :start_wildfly

exit/b

lu:
Apr-7-2017



:_
:deploy_s3

echo. & echo * Deploy a new WAR file in the S3 environment.

rem Start COPA?

rem Start MySQL?

rem call :stop_wildfly

rem call :scrub_deployment_environment

call :copy_war_for_s3

call :start_wildfly

exit/b

lu:
Oct-25-2017



:_
:import_preq_1

echo. & echo * This folder must be present for the import feature to work.

mcd c:\mercury

md tmp

exit/b

lu:
Apr-10-2017



:_
:scowl

echo. & echo * Scrub, copy the war and start WildFly.

call :scrub

call :copy_war

call :wild

exit/b

lu:
Oct-31-2017



:_
:use_agi_license_for_staging

echo. & echo * Use AGI License for Staging.

echo.

call t agi

if exist AGI.Foundation.lic del AGI.Foundation.lic

copy AGI.Foundation_User2_170915.lic AGI.Foundation.lic

call t agi_ejb

xcopy /y "c:\mercury\agi licenses\AGI.Foundation.lic"

exit/b

lu:
Nov-9-2017



:_
:use_agi_license_for_production

echo. & echo * Use AGI License for Production.

echo.

call t agi

if exist AGI.Foundation.lic del AGI.Foundation.lic

copy AGI.Foundation_User1_170915.lic AGI.Foundation.lic

call t agi_ejb

xcopy /y "c:\mercury\agi licenses\AGI.Foundation.lic"

exit/b

lu:
Nov-9-2017



:_+ Mercury Development Environment (MDE) Family



::_
:mde1
:mdev

echo. & echo * Verify Mercury development environment settings. Perequisites part 1.

call t ba

echo.
                                                                   echo     Computer Name: %computername%
echo.
java -cp . Get_timestamp_for_use_as_filename>%tmp%\mercury_date_as_filename.txt
set /p date_as_filename=<%tmp%\mercury_date_as_filename.txt
                                                                   echo              Date: %date_as_filename%

echo.
set ext=no
if exist C:\projects\netbeans\sencha\HTML5Application\public_html\ext set ext=yes
if %ext%==yes                                                      echo        Ext Folder: C:\projects\netbeans\sencha\HTML5Application\public_html\ext
if %ext%==no                                                       echo        Ext Folder: [Missing]

echo.
if not "%java_home%"==""                                           echo         JAVA_HOME: %java_home%
if     "%java_home%"==""                                           echo         JAVA_HOME: [Missing]
rem For example: C:\Program Files\Java\jdk1.8.0_152

echo.
if not "%maven_home%"==""                                          echo        MAVEN_HOME: %maven_home%
if     "%maven_home%"==""                                          echo        MAVEN_HOME: [Missing]

echo.
if not "%m2%"==""                                                  echo                M2: %m2%
if     "%m2%"==""                                                  echo                M2: [Missing]

echo.
if     exist %userprofile%\.m2                                    echo         M2 Folder: %userprofile%\.m2
if not exist %userprofile%\.m2                                    echo         M2 Folder: [Missing]

echo.
if not "%m2_home%"==""                                             echo           M2_Home: %m2_home%
if     "%m2_home%"==""                                             echo           M2_Home: [Missing]

echo.
path | find /i "mysql server">nul
if %errorlevel% == 0                                               echo             MySQL: Installed
if %errorlevel% == 1                                               echo             MySQL: [Missing]

echo.
if not "%opends_java_home%"==""                                    echo  OPENDS_JAVA_HOME: %opends_java_home%
if     "%opends_java_home%"==""                                    echo  OPENDS_JAVA_HOME: [Missing]

echo.
path | find /i "sencha">nul
if %errorlevel% == 0                                               echo        Sencha Cmd: Installed
if %errorlevel% == 1                                               echo        Sencha Cmd: [Missing]

echo.
set wild=no
if exist C:\Mercury\server\wildfly-9.0.2.Final set wild=yes
if %wild%==yes                                                     echo    WildFly Folder: C:\Mercury\server\wildfly-9.0.2.Final
if %wild%==no                                                      echo    Wildfly Folder: [Missing]

exit/b

lu:
Nov-17-2017



::_
:mde1b

echo. & echo * Here is sample MDE report from Nestle on Nov-17-2017.

call t ba

type "Nestle MDE report.txt"

exit/b

lu:
Nov-17-2017



::_
:mde2

echo. & echo * Mercury development environment settings. Prerequisites part 2.

echo.
set /P user_option=Would you like to run Sencha App Upgrade? (y/n): 

if "%user_option%"=="y" call h au

set /P user_option=Would you like to add the MySql security setting? (y/n): 

if "%user_option%"=="n" exit/b

echo.
echo Search for this line: "port=3306". Then add this on the following line. 
echo.
echo bind-address=127.0.0.1
echo.
echo Then you need to reboot or restart MySQL.

call np mysql

exit/b

lu:
Nov-17-2017



::_
:mde
:mde3

echo. & echo * Open MDE document. Prerequisites part 3.

call start "my title" "Mercury Development Environment.xlsx - Shortcut.lnk"
rem call start "my title" "c:\mercury\batch_files\Mercury Development Environment.xlsx - Shortcut.lnk"

exit/b

lu:
Nov-17-2017



:_
:compile
:compile_only
:run_sencha_app_build_testing
:sabt

call :delete_stale_ext_js_from_testing_folder

echo. & echo * Run sencha app build testing.

rem According to what Ron said on Aug-8-2017, app build testing may be more performant than
rem app build development.

echo.

color 2f

cd \projects\netbeans\sencha\HTML5Application\public_html

rem cd 

sencha app build testing

if %errorlevel% == 0 echo Compile succeeded.>%temp%\compile_results.txt
if not %errorlevel% == 0 echo Compile failed.>%temp%\compile_results.txt

exit/b



:_
:uvn
:update_the_version_number_2

echo. & echo * Update the version number 2.

call np pom_root

call np pom_ear

call np pom_ejb

call np pom_web

call np cw

call np cwp

call np cwt

exit/b

lu:
Dec-5-2017



:_
:vscmd

echo. & echo * Run Visual Studio Command prompt.

echo.

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.bat"

exit/b

lu:
Dec-18-2017



:_
:loggers

echo. & echo * List loggers.

vstest.console.exe /ListLoggers

exit/b

lu:
Dec-18-2017



:_
:run_specific_test

echo. & echo * Run a specific test.

echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:Name=AreCollectionEquivalentTest

exit/b

lu:
Dec-18-2017



:_
:run_specific_test

echo. & echo * Run a specific test.

echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:Name=AreCollectionEquivalentTest

exit/b

lu:
Dec-18-2017



:_
:run_matching_test_names

echo. & echo * Run matching test names.

echo.

vstest.console.exe unittestproject4.dll /Tests:FileName

exit/b

lu:
Dec-18-2017



:_
:run_matching_test_names_2

echo. & echo * Run matching test names 2.

echo.

vstest.console.exe unittestproject4.dll /Tests:Exist

exit/b

lu:
Dec-18-2017



:_
:run_matching_test_names_3

echo. & echo * Run matching test names 3, exist and lowercase are in the test name.

echo.

vstest.console.exe unittestproject4.dll /Tests:Exist,LowerCase

exit/b

lu:
Dec-18-2017



:_
:run_filter

echo. & echo * Run filtered tests.

echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:"Priority=1"

exit/b

lu:
Dec-18-2017



:_
:run_filter_2

echo. & echo * Run filtered tests.

echo.

vstest.console.exe unittestproject4.dll /TestCaseFilter:"TestCategory=NoException"

exit/b

lu:
Dec-18-2017



:_+ Building the Maven Dependencies Repository.



::_
:made

echo. & echo * How to recreate Maven dependencies.

call t m2

rem You can rename or delete the repository folder.

call cp.bat md

rem If necessary, run the follwoing.
rem call g clone_mdg

call m gen_cred_proc

exit/b

lu:
Jan-3-2018



::_
:gen_cred_proc

echo. & echo * Run the generate encrypted Maven credentials process.

call np gencred_input

pause

call m gen_creds

pause

call np gencred_output

pause

call np settings_xml

rem On Jul-17-2017, Ikjae said to falsify this process you need to delete you repository 
rem folder, which forces reauthentication.
rem You will see this error: ReasonPhrase:Unauthorized.

pause

call m build_ejb

exit/b

lu:
Jul-17-2017



::_
:gen_creds

echo. & echo * Generate Bitbucket encrypted credentials and delete the certutil input file.

echo.

if exist %tmp%\certutil_output.txt del %tmp%\certutil_output.txt

certutil -encode %tmp%\certutil_input.txt %tmp%\certutil_output.txt

if exist %tmp%\certutil_input.txt del %tmp%\certutil_input.txt

echo.

exit/b

lu:
Jul-17-2017



:_
:update-java-timestamp
:update_java_timestamp

echo. & echo * Update Java timestamp.

set classpath=%cbf-repo%\composable-batch-files
call java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt

exit/b



:_
:publish

echo. & echo * The steps to publish a new version.

echo.
echo Update the NPM version number.
call nm patch

echo.
echo Tag the release in git with same version number you just used in NPM, thus linking the two.
call g tag %2

echo.
echo Check in your code.
call acp cbf

echo.
echo Push your tags to Git.
call g puta

echo.
echo Publish to NPM.
call nm pub

exit/b

lu:
Apr-25-2018



:_
:set_parent_fd

echo. & echo * Set parent folder.

rem batch file path parsing parent folder, cd.., 

set %3=%~f2

exit/b

lu:
Apr-9-2018



:_
:set_cbf-app_to_dte

echo. & echo * Set cbf-app.

set cbf-app=%cbf-default-text-editor%

exit/b

lu:
Jun-8-2018



:_
:open_application_without_a_parameter

echo. & echo * Open application without a parameter.

set cbf-parameter=

call r

exit/b

lu:
Jun-8-2018



:_
:editor_help

echo.
echo %cbf-filep%

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1 (Optional): Nickname of the file you wish to edit.
set parameter_1=%parameter_1% or the name of a filename in the current folder.
set parameter_1=%parameter_1% If left blank, the application is simply started.

echo.
echo %parameter_1%

exit/b



:_
:remove_hidden_attributes

echo. & echo * Remove hidden attributes.

echo.
attrib -h *.*

exit/b

lu:
Jul-15-2018



:_
:ece

echo. & echo * Echo current errorlevel.

echo.
echo * Errorlevel: %errorlevel%

exit/b

lu:
Jul-16-2018



:_+ Delete obj and bin folders.



::_
:de_bin_fr
:de_obj_fr

echo. & echo * Delete bin and obj folders for Fresnel.

rem Delete obj folders.
rd /q /s .\Fresnel\obj
rd /q /s .\Fresnel.Android\obj
rd /q /s .\Fresnel.iOS\obj

rem Delete bin folders.
rd /q /s .\Fresnel\bin
rd /q /s .\Fresnel.Android\bin
rd /q /s .\Fresnel.iOS\bin

exit/b

lu:
Jun-25-2018



::_
:de_obj
:de_bin

echo. & echo * Delete bin and obj folders.

if "%~2" == "" (
  echo.
  echo * Percent 2 cannot be nothing.
  exit/b
)

rem Delete obj folders.
rd /q /s .\%2\obj
rd /q /s .\%2.Android\obj
if exist %2.iOS\obj rd /q /s .\%2.iOS\obj

rem Delete bin folders.
rd /q /s .\%2\bin
rd /q /s .\%2.Android\bin
rd /q /s .\%2.iOS\bin

exit/b

lu:
Jul-5-2018



:_
:compose

echo. & echo * Composer function that demos aggregation of calls that can be run separately.

call t foo

call of foo

call sf ttdc

call no gett

exit/b

lu:
Aug-13-2018



:_
:bufr
:frbu

echo. & echo * Perform a fresnel dated backup.

Get_JDate>%tmp%\JDate.txt
set /p JDate=<%tmp%\JDate.txt
set Current_JDate=Fresnel %JDate%

call t bufr

if /i not exist "%Current_JDate%" md "%Current_JDate%"

cd /d %Current_JDate%

call cn fr c



:_
:folder_is_empty

echo. & echo * Empty folder check.

set folder_to_check=%2

echo.
echo * Folder to check for emptiness: %folder_to_check%

echo.
for /f %%i in ('dir /b %folder_to_check%\*.*') do (
   rem echo * Folder is not empty.
   exit/b 0
)

echo * Folder is empty.

exit/b 1

lu:
Aug-16-2018



:_+ Error Level Family in M.bat (!fcel) error-level-educational-series



::_
:cel
:el_cs
:clear-errorlevel
:clear_errorlevel_silently
:sel

rem echo. & echo * Clear/reset errorLevel silently. Deprecated. Use "el /c" going forward.

rem This was not working on Jul-21-2021, so I commented it.
ver>nul

rem You shouldn't set errorlevel directly like the below line. Jan-28-2022
rem set errorlevel=0

exit/b

lu:
Nov-12-2019

skw:
clear_error_level
reset_errorlevel



::_
:el_c
:cler
:clear_el
:clear_errorlevel
:clear-errorlevel

echo. & echo * Clear ErrorLevel.

echo.
echo * Current ErrorLevel: %errorlevel%

ver>nul

echo.
echo * New ErrorLevel: %errorlevel%

exit/b

lu:
Aug-3-2018



::_
:el_g
:ge
:get_el

echo. & echo * Get ErrorLevel.

echo.
echo * ErrorLevel: %errorlevel%

exit/b

lu:
Aug-3-2018



::_
:el_s
:se
:set_el

echo. & echo * Set ErrorLevel.

echo.
echo * Current ErrorLevel: %errorlevel%
echo.

rem call t %~1 %2

rem The following line sets the errorlevel to 9009.
xxx

echo.
echo * New ErrorLevel: %errorlevel%

exit/b

lu:
Aug-3-2018



:_
:u2d

echo. & echo * Unix to DOS.

echo.
%localappdata%\Programs\Git\usr\bin\unix2dos ca-bundle.crt

exit/b

lu:
Dec-6-2018



:_+ DOS Colors



::_
:colo
:color

echo. & echo * Clear color setting.

color

exit/b



::_
:clco
:clear_color_setting

echo. & echo * Clear color setting and clear screen.

color

cls

exit/b



::_
:dosc_blongo

echo. & echo * Change dos window color to: black on gold

color 60

exit/b

lu:
Dec-13-2018



::_
:dos_color_yeonbl

echo. & echo * Change dos window color to: yellow on black

color 0e

exit/b

lu:
Dec-13-2018



:_
:riverstone_count

echo. & echo * Count lines of code in riverstone.

del %temp%\j1.txt

rem call t riverstone

rem call cp.bat copy_riverstone_cs_files_to_a_temp_folder

cd /d %temp%\riverstone_cs

for /r %%j in (*.cs) do type "%%j">>"%temp%\j1.txt"

call me j1

exit/b

lu:
Oct-17-2018



:_
:cosy

echo. & echo * Compose synchronization.

call col sailboat

call %0 initialize_environment

call 8

exit

lu:
Jan-23-2019



:_
:demo_old

echo. & echo * Demo on Jan-29-2019.

rem Jenkins 2 is a place for ERO Pipelines.

call sf je2r

echo.
pause

rem Jenkins 2 automatically pulls the latest Jenkinsfile from GitHub.
rem Launchtime timestamp confirmation of changes.
call np jj

echo.
pause

call sf nexu

rem The plan is to have these war files hosted in the upcoming development environment.

exit/b

lu:
Jan-29-2019



:_
:jump

echo. & echo * Jump.

echo.
echo * How high? Feb-1-2019 1:04 AM

exit/b

lu:
Feb-1-2019



:_+ Timer Script



::_
:start_timer

echo. & echo * Start timer.

set starttime=%time%

exit/b

lu:
Feb-15-2019



::_
:stop_timer

echo. & echo * Stop timer.

set endtime=%time%

rem make t0 into a scaler in 100ths of a second 
set h=%starttime:~0,2%
set m=%starttime:~3,2%
set s=%starttime:~6,2%
set c=%starttime:~8,2%
set /a starttimescalar = %h% * 3600 + %m% * 60 + %s%

rem make t into a scaler in 100ths of a second
set h=%endtime:~0,2%
set m=%endtime:~3,2%
set s=%endtime:~6,2%
set c=%endtime:~8,2%
set /a endtimescalar = %h% * 3600 + %m% * 60 + %s%

rem Runtime in 100ths is:.
set /a runtime = %endtimescalar% - %starttimescalar%

set runtime = %s%.%c%

echo.
echo Start time: %starttime% 
echo   End time: %endtime% 
echo   Run time: %runtime%

exit/b

lu:
Feb-15-2019



::_
:timer

echo. & echo * Call time example.

call %0 start_timer

echo.
echo hi
pause

call %0 stop_timer

exit/b

lu:
Feb-15-2019



:_
:si
:syin

echo. & echo * System Information.

systeminfo

exit/b

lu:
Mar-4-2019



:_
:cart_path_only

echo. & echo * Is this hole cart path only? Disallow check-ins from the riverstone path.

echo %cd% | find /i "j\riverstone_cookbook">nul

if %errorlevel% == 0 (
  echo.
  echo * You are on the cookbook. No problem.
  exit/b 0
)

echo %cd% | find /i "\riverstone">nul

if %errorlevel% == 0 (
  echo.
  echo * You are on the riverstone path. You've been a bad golfer.
  exit/b 1
)

exit/b 0

lu:
Mar-18-2019



:_
:ag

echo. & echo * QuickLauncer menu for caling g.

echo.
call %0 g

exit

lu:
Apr-30-2019



:_+ Save and Restore Location



::_
:save_location

echo. & echo * Save location.

rem echo.

set cbf-saved_location=%cd%

exit/b

lu:
Apr-24-2019



::_
:restore_location

echo. & echo * Restore location.

cd /d "%cbf-saved_location%"

exit/b

lu:
Apr-24-2019



:_
:80
:width

echo. & echo * Console window width.

rem How wide is the command window?

echo.
echo * The following line is 80 characters wide:
echo 12345678 1 2345678 2 2345678 3 2345678 4 2345678 5 2345678 6 2345678 7 2345678 8

exit/b

lu:
May-20-2019



:_
:who

echo. & echo * Who am I?

echo.
echo * Computername: %computername%

exit/b

lu:
May-31-2019



:_+ CBF Associations



::_
:assoc_fa
:set_feta
:set_fn_eqt_app

echo. & echo * Set cbf-fn equal to cbf-app.

set cbf-fn=%cbf-app%

exit/b

lu:
Feb-4-2019



::_
:apf
:assoc_pf
:assoc_p_fn
:associate_cbf-parameter_to_cbf-fn

echo. & echo * Associate cbf-parameter to cbf-fn.

set cbf-parameter=%cbf-fn%

exit/b

lu:
Dec-19-2018



:_+ How To Family (!fcht)



::_
:htrl
:loca
:rcl
:rulo
:rc

echo. & echo * How to run riverstone locally, the overarching process.

rem Check status and what branch you are on.
s ma

rem You may or may not want to do a get-latest.
pl

rem Get Postgres running on local by clicking on the lnk_db shortcut.

rem liqu

rem 1. If the local database is up-to-date, you don't need to run Liquibase? 

rem 2. If the API starts successfully, you don't need to run Liquibase.

rem 3. If your database is not up-to-date, you will need to run Liquibase. This can be done
rem by using Craig's trick, i.e. open up "Max" and delete all but the latest needed rows.
rem You can run "pql dbc" to see how up-to-date your local database is.

rem If liquibase continues to fail, you may need to wipe your local databaase and restore it
rem from Dev.

rem Run the API by using m lnk_api. You may need to edit npcrf.

rem If you want to run the debugger, then search on: lnk_api
and use 
gr run_api_with_debugger

rem Also read direction on how to attach the debugger at: &atde

j bash

rem Run 1 of the following. First one is easier.
rem ./get_riverstone_jwt.sh
rem or
rem ./craigs_get_riverstone_jwt_rpl.sh - deprecated
rem If you have an issue with obtaining the jwt, you can try getting the latest jwt script
rem from "td scri".

rem Copy the new jwt token into the file using:

e jwt

rem Run the UI using lnk_ui.

sf 42

exit/b

lu:
Mar-30-2020

skw:
start the database



::_
:smdi
:htr

echo. & echo * How to refresh the server, Sean's manual deployment instructions.

sf dv

td ma

g sb develop

pl

cmd_start_db

lq

tdc ma

rem I saw a case where the API will build but not run, so you may want to run on your
rem local before deploying to the server.
lnk_api

gr build_jar

td lib

ren riverstone-api-1.2.0.jar riverstone-api.jar

td dp

m rd dist

m build_for_fqt

of dist

k scp_ui_j sr5

k scp_api_j sr5

k scp_ui_j sr31

k scp_api_j sr31

k cnj sr5

   or

k cna sr31

sudo rm -rf /var/www/html*

cd /var/www

sudo mkdir html

cd /opt/riverstone

sudo cp /tmp/riverstone-api.jar .

sudo cp /tmp/ui.zip .

ll

rem Verify that the website is down.
sf dev

sudo unzip -o ./ui.zip -d /var/www/html/

rem On master server only.
export SERVER_NODE=master

sudo service riverstone restart

sudo service riverstone status

rem Verify that the server is working.

exit/b

lu:
Aug-22-2019



::_
:htr_fqt

echo. & echo * How to refresh FQT.

sf fq

td ma

g sb develop

pl

cmd_start_db

lq

tdc ma

rem I saw a case where the API will build but not run, so you may want to run on your
rem local before deploying to the server.
lnk_api

gr build_jar_for_fqt

td lib

ren riverstone-api-1.2.0.jar riverstone-api.jar

td dp

m rd dist

m build_for_fqt

of dist

k scp_ui_j sr27

k scp_api_j sr32

k scp_ui_j sr27

k scp_api_j sr32

k cnj sr27

   or

k cna sr32

sudo rm -rf /var/www/html*

cd /var/www

sudo mkdir html

cd /opt/riverstone

sudo cp /tmp/riverstone-api.jar .

sudo cp /tmp/ui.zip .

ll

sudo kill -9

rem Verify that the website is down.
sf fq

sudo unzip -o ./ui.zip -d /var/www/html/

rem On master server only.
export SERVER_NODE=master

sudo nohup ./riverstone-api.jar &

sudo service riverstone restart

sudo service riverstone status

rem Verify that the website is up.

exit/b

lu:
Sep-17-2019



:_+ Lnks



::_
:lnk
:lnk-r
:lnk-reac
:lnk-suui

echo. & echo * Run NG UI.

title=%fp%

rem call t cpoc
call t paui

rem call nm inst
call nm run-ui

exit/b

lu:
Aug-27-2021



::_
:lnk_gui
:lnk_ui

echo. & echo * riverstone UI

title=%fp%

call %0 lnk_ui_do_not_install_npm
rem call %0 lnk_ui_install_npm

exit/b

lu:
Mar-26-2020



::_
:lnk_ui_install_npm

echo. & echo * Run UI lnk and install npm.

call m big

call t rf_ui

rem Since this step in time-cunsuming and often unnecessary, I have commented it. However
rem you just need to remember to uncomment it, if you need to run it.

call nm inst

call ang run_ui

exit/b

lu:
Mar-24-2020



::_
:lnk_ui_do_not_install_npm

echo. & echo * Run UI lnk, do not install npm.

call m big

call t rf_ui

rem Since this step in time-cunsuming and often unnecessary, I have commented it. However
rem you just need to remember to uncomment it, if you need to run it.

call ang run_ui

exit/b

lu:
Mar-24-2020



::_
:lnk_webpack

echo. & echo * Run UI lnk, do not install npm.

call m ise

call t deli

call gr webpack

exit/b

lu:
Mar-24-2020



::_
:lnk_ui_old

echo. & echo * Run UI lnk, for use by shortcut icons.

call m big

call t rf_ui

rem Since this step in time-cunsuming and often unnecessary, I have commented it. However
rem you just need to remember to uncomment it, if you need to run it.

echo.
set /P user_option=Would you like to run "npm install"? (y/n): 
if "%user_option%"=="y" call nm inst

call ang run_ui

exit/b

lu:
Aug-16-2019



::_
:lnk_api

echo. & echo * riverstone API

rem Run API cmd, for use by shortcut icons.

title=%fp%

rem call %0 lnk_api_attach_debugger
call %0 lnk_api_do_not_attach_debugger

exit/b

lu:
Mar-24-2020



::_
:lnk_api_attach_debugger

echo. & echo * Run API cmd and ATTACH DEBUGGER!

call m big

call t rf_api

call gr run_api_with_debugger

exit/b

lu:
Aug-16-2019



::_
:lnk_api_do_not_attach_debugger

echo. & echo * Run API cmd and do not attach debugger.

call m big

call t rf_api

call gr run_api

exit/b

lu:
Aug-16-2019



::_
:lnk_api_old

echo. & echo * Run API cmd, for use by shortcut icons.

call m big

call t rf_api

echo.
set /P user_option=Would you like to attach the debugger? (y/n): 

if "%user_option%"=="y" (
  call gr run_api_with_debugger
) else (
  call gr run_api
)

exit/b

lu:
Aug-16-2019



::_
:lnk_api_with_debugger

echo. & echo * Run API cmd and attach the debugger.

call m big

call t rf_api

call gr run_api_with_debugger

exit/b

lu:
Aug-16-2019



::_
:run_ui

call ang run_ui

exit/b



::_
:run_api

call gr run_api

exit/b



::_
:cmd_golf

echo. & echo * Run Golf cmd.

call m big

call j golf

exit/b

lu:
Aug-16-2019



::_
:cmd_start_db
:lnk_db

echo. & echo * Start local database.

call m big

call pql start

exit/b

lu:
Aug-16-2019



:_
:validate_server_alias

if "%~2" == "" (
  echo.
  echo * Error: Server alias must be specified. Dec-18-2019 11:06 AM
  exit/b 1
)

set cbf-hostname=
set cbf-instance-id=
set cbf-ip=

call n %2

if errorlevel 1 err Label not found. Oct-30-2020_2_02_PM

if "%cbf-host%" == "" (
  echo.
  echo * Error: Host name is blank for server alias "%2".
  exit/b 1
)

if "%cbf-instance-id%" == "" (
  echo.
  echo * Error: Instance ID is blank for server alias "%2".
  exit/b 1
)

if "%cbf-ip%" == "" (
  echo.
  echo * Error: IP address is blank for server alias "%2".
  exit/b 1
)

echo.
echo * Server alias has been validated.

exit/b 0



:_+ Vs Test



::_
:cltestl

echo. & echo * Run tests on command line with an attached logger.

echo.
vstest.console.exe unittestproject4.dll /Logger:trx

exit/b

lu:
Dec-18-2017



::_
:cltest

echo. & echo * Run tests on command line.

echo.

call :vscmd

call t psc

vstest.console.exe unittestproject4.dll

col

exit/b

lu:
Dec-18-2017



:_
:validate_instance

echo. & echo * Validate instance.

if "%~2" == "" (
  echo.
  echo * Error: You must specify an instance alias.
  exit/b 1
)

set cbf-instance-id=

call n %2>nul

if errorlevel 1 err Label not found. Oct-30-2020_2_03_PM

if "%cbf-instance-id%" == "" (
  echo.
  echo * Error: Instance ID is blank.
  exit/b 1
)

exit/b



:_
:net

echo. & echo * Netstat.

cd c:\mercury\batch_files

java -cp . Get_timestamp_for_use_as_filename>%tmp%\date_time_as_filename.txt
set /p date_as_filename=<%tmp%\date_time_as_filename.txt

set dt_filename=%tmp%\nestat_results_for_machine_%computername%_%date_as_filename%.txt

netstat -a -n>%dt_filename%

call no %dt_filename%

exit/b

lu:
Jun-26-2017



:_
:jens
:jfs

echo. & echo * Open Jenkinsfiles.

call e acr

call e ant

call e bgs

call e cap

call e eat

call e gfs

call e iac

call e odls

exit/b

lu:
Jan-10-2019



:_+ The existence of a particular file plus testing.



::_
:file-is-present
:specific_file_presence
:specific-file-presence

echo. & echo * Check the current folder for the presence of "%2". Deprecated: Going forward please use fe.bat.

if not exist "%~2" (
  call err The file "%2" does NOT exist in the current folder. Oct-20-2021_1_09_PM - %0.bat
  exit/b 1
)
rem echo. & echo * Found file %2 so proceed. Oct-16-2020_12_53_PM

exit/b 0

lu:
May-16-2022



::_
:specific_folder_presence

echo. & echo * Check for presence of a paricular foldder in the current folder.

dir | find /i "%2">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the "%2" folder for this command to work. Nov-11-2019 6:29 PM
  exit/b 1
)

echo. 
echo * "%2" folder exists.

exit/b

lu:
Nov-11-2019



::_
:within_a_specific_folder

echo. & echo * Current location must be within a paricular foldder.

echo.
echo %cd% | find /i "%2"

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the "%2" folder for this command to work. Nov-11-2019 6:29 PM
  exit/b 1
)

echo. 
echo * "%2" folder exists.

exit/b

Footnote
>< >< ><

skw: 
specific folder



::_
:th-specific-file-presence

echo. & echo * Test harness for specific-file-presence.

call m specific-file-presence main.tf

if errorlevel 1 err Mar-21-2024-2-44-PM

echo. & echo * Run commands.

exit/b

lu:
Nov-08-2022
Apr-27-2020



::_
:delete_folder_if_present

echo. & echo * Delete a paricular folder if it exists in the current folder.

dir | find /i "%2">nul

if %errorlevel% == 0 (
  echo. 
  echo * "%2" folder exists.
  call m rd %2
  exit/b 0
)

echo.
echo * Folder "%2" not found in the current folder.

exit/b

lu:
May-22-2020



::_
:file_type_presence

echo. & echo * Deprecated: Going forward, please use ftpr.bat. Sep-25-2023

echo. & echo * Check the current folder for the presence of a particlar file type.

echo.
echo * A "%2" file(s^) must be present in the current folder.

echo.

if not exist *.%2 (
  echo * Error: No "%2" file(s^) exist in the current folder.
  exit/b 1
) else (
  echo * Found "%2" file(s^).
)

exit/b 0

lu:
Nov-19-2018



:_
:log4

echo. & echo * Is log4j jar file present?

call t log4>nul

call m specific-file-presence *.jar>nul

if errorlevel 1 err The log4j*.jar file does not exist, so you WON'T piss Marvin off.
       
err Log4j*.jar file found.

exit/b



:_
:path

echo. & echo * Pipe path to file.

path>%tmp%\pipe-path-to-file.txt
call an kr
set cbf-parameter=%tmp%\pipe-path-to-file.txt
call r

exit/b

lu:
Mar-2-2023



:_
:fhds
:free
:hd
:hds

echo. & echo * Report free hard disk space.

call gub df -H

exit/b

q is there command line utility that can tell you how much free disk space you have?



:_
:cona

echo. & echo * Set computer name.

echo %computername% | find /i "xps">nul

if not errorlevel 1 (
  set cbf-cona=xps
  exit/b
)

echo %computername% | find /i "keld">nul

if not errorlevel 1 (
  set cbf-cona=keld
  exit/b
)

if exist w:\ set cbf-cona=vdi

exit/b

lu: 
Apr-11-2022



:_
:atn
:ctf
:file
:gdaf

echo. & echo * Create timestamped file.

rem The below class name is case sensitive.
java -classpath %composable-batch-files% Get_timestamp_for_use_as_filename>date_as_filename.txt

set /p date_as_filename=<date_as_filename.txt

ren date_as_filename.txt %date_as_filename%.txt

dir *.txt

exit/b

This works.

lu:
Jun-12-2020

skw:
add timestamped file
create file
create new file
Generate a timestamped name file.
make test file




:_+ Set default environment variables.



::_
:set_specific_browser

echo. & echo * Set specific browser.

if "%~2" == "" set cbf-specific_browser=
if "%~2" == "" exit/b

call an %2

set cbf-specific_browser=%cbf-app%

exit/b

lu:
Mar-4-2019



:_+ SP7



::_
:start-sp7

echo. & echo * Start SP7.

call %0 lnk-sp7
call m sp7

exit/b



::_
:lnk-sp7

echo. & echo * Initialize environment for %1. - Mar-22-2024-12-38-PM

call %0 set-default-browser br
call n repo
call %0 set-default-text-editor me
call set-default-secondary-dictionary-sp7.bat

set path=%dropbox%\savannah\belfry;%path%

col 1

exit/b

fcd:
Jan-18-2024



::_
:sp7

echo. & echo * Open SP7 files.

set cbf-fn-list="%dropbox%\savannah\reach out\sp7.asc"
attrib +r "%dropbox%\savannah\reach out\cc.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\cc.asc"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"

start mew32 %cbf-fn-list%

exit/b

lu:
Mar-19-2024



:_+ Initialization Family (!fcinit, !fclnk)



::_
:start-xps

echo. & echo * Start XPS.

call %0 lnk-xps
call m a

exit/b



::_
:init-xps
:lnk-xps

echo. & echo * Initialize environment for %1.

set path=%dropbox%\savannah\belfry;%path%

call %0 set-default-browser br
call n repo
call %0 set-default-text-editor me
call set-default-secondary-dictionary.bat

exit/b

fcd:
Nov-9-2023



::_
:set-default-browser
:sdb

echo. & echo * Set default browser.

if "%~2" == "" call an edge
if not "%~2" == "" call an %2

set cbf-default-browser=%cbf-app%

exit/b

lu:
Nov-9-2023
Aug-8-2018



::_
:sdte
:set-default-text-editor

echo. & echo * Set default text editor.

if "%~2" == "" call n no
if not "%~2" == "" call n %2

set cbf-default-text-editor=%cbf-app%

exit/b



::_
:lnk_right

title=Right Justified CBF

call %0 big

call t a

cls

exit/b



::_
:lnk_chef

title=Chef

set homedrive=c:

set homepath=\Users\[put--name-of-user-of-interest-here]

call %0 big

call t a

cls

exit/b



::_
:lnk_linux

title=Linux

call %0 big

call t a

cls

exit/b



::_
:initialize_environment_router

echo. & echo * Initialize environment router.

echo %computername% | find /i "lipt">nul

if %errorlevel% == 0 (
   echo.
   echo * Computer name contains "lipt".
   call %0 initialize_big_environment
   exit/b
)

call %0 initialize_environment

exit/b

lu:
Feb-1-2019



::_
:set_white_list_settings_1

if /i "%computername%" == "asus" goto set_white_list_settings_2
if /i "%computername%" == "buzz" goto set_white_list_settings_2
if /i "%computername%" == "xps" goto set_white_list_settings_2

exit/b



::_
:set_white_list_settings_2

set share-zone=%dropbox%\it\share-zone
set path=%dropbox%\savannah\belfry;%path%

exit/b



::_
:initialize-default-text-editor

echo. & echo * Initialize default text editor.

if /i "%computername%" == "asus" call m set-default-text-editor no
if /i "%computername%" == "sp7" call m set-default-text-editor no
if /i "%computername%" == "xps" call m set-default-text-editor me
if "%cbf-default-text-editor%" == "" call m set-default-text-editor no

exit/b

lu:
Nov-2-2018



::_
:big
:ibe
:ige
:initialize_big_environment

echo. & echo * Initialize ATOI environment.

call %0 initialize_environment

call %0 set_big_path

call %0 set_default_browser kr

call %0 set-default-text-editor sm

set aa=c:\aa
set cbf-repo=C:\Users\[put--name-of-user-of-interest-here]\j
set composable-batch-files=C:\Users\[put--name-of-user-of-interest-here]\j\Composable-Batch-Files
set JAVA_TOOL_OPTIONS=
set KITCHEN_YAML=.kitchen-aws.yml
set machinename=atoi

call ni full_pem
set SSH_KEY_PATH=%cbf-full-pem%

cls

exit/b

lu:
Dec-4-2018



::_
:lnk-xam

echo. & echo * Initialize CBF environment on XAM.

title=CBF

call %0 initialize_environment

call t a

cls

exit/b



::_
:lnk_cbf

echo. & echo * Initialize CBF environment.

title=CBF

call %0 big

call t a

cls

exit/b



::_
:lnk-code

echo. & echo * Initialize VS Code environment.

title=VS Code

call %0 big

call t a

cls

code

exit/b



:_
:lu
:ulul
:update_lu

echo. & echo * Update the last_updated_log.txt.

rem echo 9.
date /t>%temp%\date_9.txt
set /p date_9=<%temp%\date_9.txt
rem echo %date_9%

rem echo 10.
time /t>%temp%\time_10.txt
set /p time_10=<%temp%\time_10.txt
rem echo %time_10%

rem set combined_12=%2 - %computername% - %date_9%%time_10%
set combined_12=%date_9%%time_10% - %computername%

echo.>>%share-zone%\last_updated_log.txt
echo %combined_12%>>%share-zone%\last_updated_log.txt

exit/b

lu:
Feb-8-2019



:_+ Expand and Compose Family (!fcexpa)



::_
:fw
:fwp
:distill-file-folder

rem echo. & echo * Distill to filename or current folder without path.

set cbf-distilled-file-folder=%~nx2

echo %cbf-distilled-file-folder%>%tmp%\fwp.txt

exit/b

lu:
Nov-8-2023

skw: 
file path only
folder without path
folder-without-path
full filename

Sample call to get current folder name:
call m distill-file-folder %cd%

Then this variable "cbf-distilled-file-folder" will have the value for the current folder or 
filename.



::_
:fwp-test
:sfwp
:scdff
:tfwp

echo. & echo * Sample call to distill-file-folder. Current folder version.

rem Copy the following line.
call %0 distill-file-folder %cd%

echo. & echo * cbf-distilled-file-folder: %cbf-distilled-file-folder%

exit/b



::_
:scdff2

echo. & echo * Sample call to distill-file-folder 2. Filename version.

call n j1

call %0 distill-file-folder %cbf-fn%

echo. & echo * cbf-distilled-file-folder: %cbf-distilled-file-folder%

exit/b



::_
:expand_to_filename_without_path

echo. & echo * Expand to filename or current folder without path.

set cbf-fn_without_path=%~nx2

exit/b

lu:
Nov-8-2019

Deprecated.



::_
:distill_filename

echo. & echo * Distill filename.

rem echo.

set cbf-distilled_filename=%~nx2

rem echo.
rem echo P2: %2

echo.
echo * Distilled Filename: %cbf-distilled_filename%

exit/b

lu:
May-18-2020

Deprecated



::_
:expand-to-path-only

rem echo. & echo * Expand to path only. Version 2.

set cbf-expand-to-path-only-pt=%~d2%~p2

exit/b

lu:
Aug-13-2021



::_
:convert_to_path
:expand_to_path_only

echo. & echo * Expand to path only.

set cbf-pt=%~d2%~p2

exit/b

lu:
Mar-14-2018



::_
:compose_variable
:compose-variable

rem echo. & echo * Compose variable.

rem echo. & echo * Variable to expand: %2

set cbf-composed-variable=cbf-%2

rem echo. & echo * Composed variable: %cbf-composed-variable%

rem goto :expand-variable "%%%cbf-composed-variable%%%"
call %0 expand-variable "%%%cbf-composed-variable%%%"

exit/b

lu:
Jul-16-2019



::_
:expand-variable

rem echo. & echo * Expand variable.

set cbf-expanded-variable=%~2
rem echo. & echo * Expanded variable: %cbf-expanded-variable%

exit/b

lu:
Aug-17-2022



::_
:distill_path

echo. & echo * Distill path.

set cbf-distilled_path=%~dp2

rem echo.
rem echo F2: %2

echo.
echo * Distilled Path: %cbf-distilled_path%

exit/b

lu:
May-26-2020



:_+ Open Files Family (!fycoi)



::_
:do
:demo
:pres

echo. & echo * Open presentation files.

set cbf-fn-list="%composable-batch-files%\demo.asc"
attrib +r "%dropbox%\savannah\reach out\cc.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\cc.asc"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"

start mew32 %cbf-fn-list%

exit/b

lu:
Jan-11-2024
Dec-15-2023



::_
:a
:aff
:aff-xps

echo. & echo * Open XPS affinity files.

set cbf-fn-list="%dropbox%\savannah\reach out\J.asc"

attrib -r "%dropbox%\savannah\reach out\cc.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CC.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CM.asc"

set cbf-fn-list=%cbf-fn-list% "%dropbox%\it\Miscellany\it3.asc"

set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\DI.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\JD.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CH.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\RB.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\TJ.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CI.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\TR.asc"

set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
call pn bel>nul
set cbf-fn-list=%cbf-fn-list% "%cbf-pt%\pv.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\Employer Documents\cyd.asc"

start mew32 %cbf-fn-list%

exit/b

lu:
Oct-4-2023
Apr-8-2022



::_
:pete

echo. & echo * Open Pete files.

call pn d>nul
set cbf-fn-list="%cbf-pt%\nold.bat"
set cbf-fn-list=%cbf-fn-list% "%cbf-pt%\nv.bat"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"

start mew32 %cbf-fn-list%

exit/b

lu:
Oct-4-2023



::_
:msl

echo. & echo * Open MSL Affinity files.

set cbf-fn-list="%share-zone%\Miscellany\j.asc"

set cbf-fn-list=%cbf-fn-list% "%share-zone%\msl.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\lbm\miscellany\lbm.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\atoi.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\copy of cc.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\it.asc"
rem I put ni.bat before n.bat and m.bat because I want ni.bat to be the first file that is searched!
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\g.bat"

attrib +r "%share-zone%\copy of cc.asc"

start mew32 %cbf-fn-list%

exit/b

lu:
Dec-8-2021



::_
:meet

echo. & echo * Open Meeting affinity files.

set cbf-fn-list="%dropbox%\savannah\reach out\J.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\msl.asc"

set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CC.asc"
set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\CM.asc"
rem set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\IT.asc"

set cbf-fn-list=%cbf-fn-list% "%share-zone%\it2.asc"

set cbf-fn-list=%cbf-fn-list% "%dropbox%\savannah\reach out\OC.asc"

set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"

rem attrib +r "%share-zone%\it2.asc"

start mew32 %cbf-fn-list%

exit/b

lu:
Mar-8-2020



::_
:oicbf
:ofc
:ocbf
:ocm

echo. & echo * Open files to make CBFs.

set cbf-fn-list="%share-zone%\ni.bat"

set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"

start mew32 %cbf-fn-list%

exit/b

lu:
Aug-9-2021



::_
:xam

echo. & echo * Open XAM Affinity files.

set cbf-fn-list="%share-zone%\Miscellany\z.asc"

set cbf-fn-list=%cbf-fn-list% "%share-zone%\lbm\miscellany\lbm.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\atoi.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\copy of cc.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\it2.asc"
rem I put ni.bat before n.bat and m.bat because I want ni.bat to be the first file that is searched!
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\g.bat"

attrib +r "%share-zone%\copy of cc.asc"

start mew32 %cbf-fn-list%

exit/b

lu:
Aug-11-2021



::_
:vdi

echo. & echo * Open VDI Affinity files.

call e vdit /a>nul
call e nv /v>nul
call e n /o>nul

exit/b

lu:
Mar-1-2022



::_
:keld

echo. & echo * Open Keld Affinity files.

call e task
call e vdit /a>nul
rem call e i2>nul
call e nv /v>nul
call e n /o>nul

exit/b

lu:
Apr-8-2022



::_
:atoi

echo. & echo * Open ATOI Affinity files.

set cbf-fn-list="%share-zone%\Miscellany\J.asc"

set cbf-fn-list=%cbf-fn-list% "%share-zone%\lbm\miscellany\lbm.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\atoi.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\copy of cc.asc"
set cbf-fn-list=%cbf-fn-list% "%share-zone%\it2.asc"
rem I put ni.bat before n.bat and m.bat because I want ni.bat to be the first file that is searched!
set cbf-fn-list=%cbf-fn-list% "%share-zone%\ni.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\m.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\n.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\v.bat"
set cbf-fn-list=%cbf-fn-list% "%composable-batch-files%\g.bat"

attrib +r "%share-zone%\copy of cc.asc"

start mew32 %cbf-fn-list%

exit/b

lu:
Aug-11-2021



::_
:xam-first

echo. & echo * Open XAM Affinity files in Notepad.

call xac np "%share-zone%\Miscellany\z.asc"
call xac np "%composable-batch-files%\n.bat"
call xac np "%share-zone%\ni.bat"

exit/b

lu:
Aug-11-2021



::_
:aff_old
:affi_old
:inot_old

echo. & echo * Open affinity files - old.

start Mew32.exe "%reach out%\WK.asc" "%reach out%\CC.asc" "%reach out%\CM.asc" "%reach out%\IT.asc" 
"%reach out%\DI.asc" 
"%reach out%\JD.asc" "%reach out%\CH.asc" "%reach out%\RB.asc" "%reach out%\TJ.asc" "%reach out%\CI.asc" 
"%reach out%\TR.asc" "%dropbox%\savannah\reach out\OC.asc" "%composable-batch-files%\n.bat"

exit/b

lu:
Jan-9-2019



::_
:wait

echo. & echo * Open "waiting" files.

call fn machine-specific-file

set first_filename=%cbf-fn%

call fn ccf

set second_filename=%cbf-fn%

start mew32 "%first_filename%" "%second_filename%"

exit/b

lu:
Feb-27-2019



::_
:affc

echo. & echo * Open affinity files and close the DOS window.

call :aff

exit

lu:
Jan-23-2019



::_
:waitc

echo. & echo * Wait and close.

call %0 wait

exit

lu:
Mar-18-2019



:_ (!efm, !rfsp) (mov-9)

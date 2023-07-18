:_ (!gr)

@echo off



:_

set cbf-filep=* Gradle functions.

echo.
echo %cbf-filep%



:_

set fp=* Route callers.

if "%~1" == "" goto rute

if "%~1" == "?" goto help

goto %1



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function to perform.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): Nickname path to walk first.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:vers

set fp=* Version.

rem lu: Jan-8-2019

echo.
echo %fp%

gradle -version

exit/b



:_

:task

:tasks

set fp=* List tasks.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle tasks

exit/b



:_

:stat

set fp=* Status.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
call gradle --status

echo.

exit/b



:_

:buil

:build

set fp=* Build.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
call gradle build

col

echo.

exit/b



:_

:gr_dev

set fp=* Build CAPI for development.

rem color 60

rem lu: Jan-8-2019

echo.
echo %fp%

call %0 d

exit/b



:_

:help

set fp=* Help

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle help

exit/b



:_

:model

set fp=* Model.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle model

exit/b



:_

:prop

set fp=* Properties.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle properties

exit/b



:_

:scan

set fp=* Scan. Builds an online report.

rem lu: Jan-11-2019

echo.
echo %fp%

echo.
gradle --scan

exit/b



:_

:upli

set fp=* Update Liquibase.

rem lu: Jan-16-2019

echo.
echo %fp%

echo.
gradle liquibaseUpdate

exit/b



:_

:rgw

set fp=* Run gradlew.

rem color 60

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
gradlew

rem I noticed that ./gradlew doesn't work but .\gradlew does. So if you see ./gradlew, I
rem think that means you're looking at a non-Window environment.

exit/b



:_

:buildw

set fp=* Gradlew build.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradlew build

exit/b



:_

:bfpw

set fp=* Build for production, war file. This optimizes the cart-api application for production.

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
call gradlew -Pprod clean bootWar
echo.

exit/b



:_

:fqt

set fp=* FQT bootrun.

rem lu: Mar-6-2019

echo.
echo %fp%

echo.
gradle -Pfqt bootrun

exit/b



:_

:bapi

set fp=* Daily build per Sean.

rem lu: Jun-20-2019

echo.
echo %fp%

call tdc cart

call pl

call %0 bj

exit/b



:_

:br

set fp=* Bootrun from Sean. Notice that there is also a Maven version of this same command.

rem lu: Jan-9-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

gradle bootrun --debug-jvm

exit/b



:_+ Gradle commands that Edward and Matt use.



::_

:ed

set fp=* Edward's gradle command.

rem lu: Jun-21-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle�-Plocal -Pno-liquibase clean bootrun

rem I usually just run "clean ; ./gradlew &"

exit/b



::_

:run_api_with_debugger

set fp=* Run the API using Matt's gradle command and attach the debugger.

rem lu: Nov-8-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradlew -Pno-liquibase clean bootrun --debug-jvm

exit/b



::_

:run_fqt

set fp=* Run the API using Matt's gradle command with the FQT option too.

rem lu: Nov-8-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Pno-liquibase,fqt clean bootrun

exit/b



::_

:matt1

set fp=* Bootrun from Matt.

rem lu: Aug-12-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle clean bootRun --debug-jvm

exit/b



::_

:run

:run_api

set fp=* Run the API using Matt's gradle command.

rem lu: Nov-8-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradlew -Pno-liquibase clean bootrun

exit/b



:_

:bj

:bootjar

set fp=* Bootjar command.

rem This worked on Jun-20-2019 but only after I fixed the PKIX issue.

rem lu: Jun-20-2019

echo.
echo %fp%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: You must be in the api folder for this command to work.
  exit/b 1
)

echo.
gradle -Pdev bootJar

exit/b



:_

:debu

set fp=* Gradlew Debug. You should only use gradlew, not gradle.

rem lu: Nov-12-2019

echo.
echo %fp%

echo.
gradlew --debug

exit/b



:_+ Building Jar Files



::_

:build_jar_for_dev

set fp=* Build Jar for dev environment.

rem lu: Aug-14-2019

echo.
echo %fp%

call m specific_file_presence gradlew.bat

if %errorlevel% == 1 (
  exit/b
)

echo.
gradle -Pdev clean bootJar

exit/b



::_

:build_jar_for_fqt

set fp=* Build Jar for FQT environment.

rem lu: Sep-17-2019

echo.
echo %fp%

call m specific_file_presence gradlew.bat

if %errorlevel% == 1 (
  exit/b
)

echo.
gradle -Pfqt clean bootJar

exit/b



::_

:build_jar_for_dock

set fp=* Build Jar for Docker environment.

rem lu: Sep-17-2019

echo.
echo %fp%

call m specific_file_presence gradlew.bat

if %errorlevel% == 1 (
  exit/b
)

cls

echo.
@echo on
gradlew bootJar -Pprod jibDockerBuild
@echo off

exit/b



::_

:bjc

:build_jar_for_dock_clean

set fp=* Build Jar for Docker environment with clean.

rem lu: Sep-17-2019

echo.
echo %fp%

call m specific_file_presence gradlew.bat

if %errorlevel% == 1 (
  exit/b
)

cls

echo.
@echo on
gradlew clean bootJar -Pprod jibDockerBuild
@echo off

exit/b



:_

:dashx

:webp

:webpack

set fp=* Webpack.

rem lu: Mar-27-2020

echo.
echo %fp%

echo.
gradlew -x webpack
npm start

exit/b



:_

:wrap

set fp=* Gradle Wrapper. If gradelw doesn't work, try running "gradle wrapper" at the command line.

rem lu: Apr-22-2020

rem Run gradle wrapper to get gradle w to work.

echo.
echo %fp%

echo.
gradle wrapper

exit/b



:_

:csc

set fp=* Gradle task to build the client Maven project from the Swagger definition file.

rem lu: Apr-21-2020

rem You may need to disconnect from the VPN for this function to work.

cls

echo.
echo %fp%

call t csc

rem Gradlew didn't initially work, but now it does after I ran gradle wrapper. Apr-22-2020
call gradlew generateSwaggerCodeCartApi

rem call gradle generateSwaggerCodeCartApi

exit/b



:_+ BFP Family



::_

:bfp

set fp=* Build for production, jar file with td alias.

rem lu: Jan-17-2020

echo.
echo %fp%

call t rf_ma

cd api

call %0 build_jar_for_production

exit/b



::_

:bfpc

set fp=* Build for production jar file for the rest-client.

rem lu: Apr-27-2020

echo.
echo %fp%

call tdc csc>nul

call %0 build_jar_for_production

exit/b



::_

:build_jar_for_production

set fp=* Build Jar for prod environment.

rem lu: Jan-17-2020

echo.
echo %fp%

call m specific_file_presence gradlew.bat

if errorlevel 1 exit/b 1

echo.
call gradlew -Pprod clean bootJar

exit/b



:_

:rjut

:rt

:run_tests

:run_unit_tests

:rut

:rute

:test

:tests

set fp=* Run Java unit tests.

rem skw run tests, run unit tests

rem lu: Jun-30-2020

echo.
echo %fp%

call t api

echo.
gradlew test

exit/b

>< >< Footnote:

As of Apr-19-2021, there are this many Java unit tests: 725
As of Jul-7-2020, there are this many Java unit tests:  501
As of Jun-30-2020, there are this many Java unit tests: 484
As of Mar-5-2020, there are this many Java unit tests:  120



:_

:main

set base_folder=%cd%

set app_base_name=gradlew

set default_jvm_opts=

rem Find java.exe.
if defined java_home goto findjavafromjavahome

rem This is the case where Java_Home is undefined.
java -version>nul 2>&1

if "%errorlevel%" == "0" goto initialize

echo.
echo * Error: JAVA_HOME is not set and no 'java' command could be found in your PATH. ^ 
Please set the JAVA_HOME variable in your environment to match the location of your Java ^
installation.

exit/b 1



:_

:findjavafromjavahome

set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo * Error: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo * Please set the JAVA_HOME variable in your environment to match the location of your Java installation.

exit/b 1



:_

:initialize

rem Get command-line arguments, handling Windows variants

set cmd_line_args=%*

set CLASSPATH=%base_folder%\gradle\wrapper\gradle-wrapper.jar

rem Execute Gradle.
java %default_jvm_opts% %java_opts% %gradle_opts% "-dorg.gradle.appname=%app_base_name%" -classpath "%classpath%" org.gradle.wrapper.gradlewrappermain %cmd_line_args%

exit/b


Footnote
>< >< >< 

This is what runs:

"c:\aa\Java_Jdk_1.8.0.241/bin/java.exe"    "-Dorg.gradle.appname=gradlew" -classpath 
org.gradle.wrapper.GradleWrapperMain test

exit/b



:_ (!efgr, !rfsp) (mov-9)

:_

@echo off


if "%~1" == "?" goto help
if "%~1" == "" goto help

call paco "%~1" . && goto run

goto %1



:_

:help

cls

echo.
echo * Perform Java-related operations.

echo. & echo   Usage: %0 [Parameter 1]

echo. & echo * Parameter 1: The name of the Java file you wish to run.
echo   Or the function you wish to run.

echo. & echo * Parameter 1: Function to execute.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:iji

echo. & echo * Investigate Java installation.

rem lu: Dec-13-2018

echo.
call t jvpf

if %errorlevel% == 0 (
  dir /a /b /s /o-d "*java.exe*">%temp%\search_results_fs_special.txt
  echo.
  echo **** Search 1 completed.
)

call t jvpf86

if %errorlevel% == 0 (
  dir /a /b /s /o-d "*java.exe*">>%temp%\search_results_fs_special.txt
  echo.
  echo **** Search 2 completed.
)

if %errorlevel% == 0 (
  start "Test Title" "%cbf-default-text-editor%" "%temp%\search_results_fs_special.txt"
)

exit/b



:_

:rjz

echo. & echo * Rename Jar file to zip file in order to examine its contents.

rem lu: Dec-14-2018

echo.
echo.
ren *.jar *.zip

exit/b



:_

:je

echo. & echo * Run Jenkins.

echo.
call t desk

call m file_type_presence war

if %errorlevel% == 1 (
 exit/b
)

call m dos_color_yeonbl

title=Run Jenkins - Dedicated Job Window

echo.
call java -jar jenkins.war

exit/b



:_

:get_java_version

echo. & echo * Get Java version.

rem Outcome: This works!

echo.

cd c:\mercury\batch_files

javac generate_mercury_version_number.java

java -cp . generate_mercury_version_number>c:\a\j3.txt

set /p java_timestamp=<c:\a\j3.txt

echo jt: %java_timestamp%

exit/b



:_

:all

echo. & echo * Build all the jars in the libs folder?

rem lu: Apr-2-2020

echo.
echo.
java -jar build/libs/*.jar

exit/b



:_
:vers

echo. & echo * Version from %0.

echo.
java -version

exit/b



:_
:hw
rem echo. & echo * Hello world from %0.

call t dsa>nul
call jv HelloWorld.java

exit/b



:_
:rs
echo. & echo * Reverse string from %0.
call t dsa>nul
call jv c ReverseString.java>nul
echo.
java ReverseString.java %2
exit/b



:_

:cr

echo. & echo * Never used notional prototype. Compile, interpret and run the file you just compiled.

rem I never needed to use this one because "%0 ir" seemed to run the java program just fine.

echo.
call %0 c %2
call %0 r %2.java

exit/b



:_

:rj

echo. & echo * Run jar.

if "%~2" == "?" goto help
if "%~2" == "" goto help

rem lu: Mar-22-2022

java -jar %1

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Jar file name.



:_+ Comile and Run



::_

:c
:comp

echo. & echo * Compile and rebuild the class file.

if "%~2" == "?" goto help
if "%~2" == "" goto help

javac %~2

exit/b


:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: The java File you wish to compile.
echo. & echo Example: %0 HelloWorld.java

exit/b

Notice that the class file timestamp is only updated when you compile that java file but
nut when you merely run it.



::_

:run

rem echo. & echo * Interpret and run a java file.

call fe "%~1" || exit/b
call paco "%~1" .java || exit/b

echo.
java %*

exit/b



::_+ Language Features Family (!fylfjv) (skw language-functions-series-jj)



::_
:echo-parameters
:ep
echo. & echo * Echo parameters from %0.bat.
call t dsa>nul
call %0 EchoParameters.java %*
exit/b



_ (!rfsp) (mov-6)

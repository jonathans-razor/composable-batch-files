:_

@echo off

set cbf-filep=* Perform Java-related operations.

if -%~1-==-?-goto help
if -%~1-==-- goto help

goto %1



:_

:help

echo.
echo %cbf-filep%

echo. & echo Usage: %0 [Parameter 1]

echo. & echo Parameter 1: Function to execute.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:iji

set fp=* Investigate Java installation.

rem lu: Dec-13-2018

echo.
echo %fp%

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

set fp=* Rename Jar file to zip file in order to examine its contents.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
ren *.jar *.zip

exit/b



:_

:je

set fp=* Run Jenkins.

echo.
echo %fp%

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

set fp=* Get Java version.

rem Outcome: This works!

echo.
echo %fp%
echo.

cd c:\mercury\batch_files

javac generate_mercury_version_number.java

java -cp . generate_mercury_version_number>c:\a\j3.txt

set /p java_timestamp=<c:\a\j3.txt

echo jt: %java_timestamp%

exit/b



:_

:all

set fp=* Build all the jars in the libs folder?

rem lu: Apr-2-2020

echo.
echo %fp%

echo.
java -jar build/libs/*.jar

exit/b



:_

:old-vers

set fp=* Which Java version is running on this machine?

rem FCD: Mar-2-2017

rem echo.
rem echo %fp%
echo.

call c:\mercury\batch_files\update_java_timestamp.bat

set /p timestamp=<%tmp%\java_timestamp.txt

echo Java Version on %computername% on %timestamp%:

echo.

java -version

exit/b



:_
:/ver
:v
:ver
:vers
set fp=* Display Java version currently in use.

echo.
echo %fp%

echo.
java -version

exit/b

Possibly confusing error message just because I added an extra dash!

C:\JDK8>java --version
Unrecognized option: --version
Error: Could not create the Java Virtual Machine.
Error: A fatal exception has occurred. Program will exit.



:_

:cr

set fp=* Never used notional prototype. Compile, interpret and run the file you just compiled.

rem I never needed to use this one because "%0 ir" seemed to run the java program just fine.

echo.
echo %fp%

call %0 c %2
call %0 r %2.java

exit/b



:_

:rj

echo. & echo * Run jar.

if -%2-==-?- goto help
if -%2-==-- goto help

rem lu: Mar-22-2022

java -jar %1

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Jar file name.



:_+ Comile and Run



::_

:c

echo. & echo * Compile and rebuild the class file.

if -%2-==-?- goto help
if -%2-==-- goto help

javac %2

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: The java File you wish to compile.
echo. & echo Example: %0 HelloWorld.java

exit/b

Notice that the class file timestamp is only updated when you compile that java file but
nut when you merely run it.



::_

:r

echo. & echo * Interpret and run a java file.

if -%2-==-?- goto help
if -%2-==-- goto help

echo.
java %2

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: The java File you wish to run.
echo. & echo Example: %0 r HelloWorld.java, which is the same as typing java HelloWorld.java.
echo. & echo Which means that this batch file is useless from a typing perspective,
echo. & echo but still useful from an tutorial perspective.

exit/b



:_ (!rfsp) (mov-6)

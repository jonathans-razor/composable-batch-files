:_

@echo off

if "%~1" == "" goto skte
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * Maven functions.
echo. & echo * Usage: %0 [Parameter 1]
echo. & echo * Parameter 1: Function to execute.
echo. & echo * Batch file style: Function routing.
echo. & echo * Certified Bash friendly.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:build_applet

echo. & echo * Build the Applet.

rem I successfully built the applet on Mar-16-2017 after I put the Keystore under the
rem Netbeans folder.

cd \projects\netbeans\mercury6\Mercury-applet

rem May need Ikjae's -Pserver command.
mvn clean install

rem I was only able to successfully do this after I copied David's .m2 folder 
rem into my %homedrive%%homepath% folder.

exit/b



:_

:build_ejb

echo. & echo * Build Ejb file.

rem fcd: Mar-21-2017

cd \projects\netbeans\mercury6\mercury-ejb

rem May need Ikjae's -Pserver command.
mvn clean install

exit/b



:_

:build_s

:build_war_file_for_server

echo. & echo * Build War file for server.

rem build a war file: skw

rem To avoid a sharing violation, you may want to close applications that are looking at the
rem target folder.

rem fcd: Feb-17-2017

cd \projects\netbeans\mercury6

call mvn clean install -Pserver

rem call of targ

rem echo.
rem echo You are in the target folder where you should see your freshly built War file.

exit/b



:_

:build_war_file_for_local

echo. & echo * Build War file for deployment to local drive. Ikjae said that "local" is the default.

rem fcd: Jul-26-2017

cd \projects\netbeans\mercury6

call mvn clean install -Plocal

exit/b



:_

:clean

echo. & echo * Clean, which removes the target folder.

rem lu: Dec-14-2018

echo.
mvn clean

exit/b



:_+ Some Common commands.



::_

:c

echo. & echo * Compile.

rem lu: Dec-14-2018

echo.
mvn compile

exit/b



::_

:test2

echo. & echo * Test.

echo.
mvn test

exit/b

rem lu: Dec-14-2018



::_

:p

echo. & echo * Package. Builds a jar, not a war file. Can be renamed to a zip in order to get access to files inside it.

rem lu: Jan-7-2019

echo.
mvn package

exit/b



:_

:v

echo. & echo * Version.

rem lu: Jan-7-2019

echo.
mvn -version

exit/b



:_

:sbc

echo. & echo * Spring-boot compile?

rem lu: Jan-9-2019

echo.
mvn spring-boot::compile

exit/b



:_

:cp

echo. & echo * Clean package.

rem lu: Feb-14-2019

echo.
mvn clean package

exit/b



:_+ CSC



::_

:csc

echo. & echo * Run Maven against Cart Swagger client.

rem lu: Apr-23-2020

rem You may need to disconnect from the VPN to get this to work.

call t csc>nul

cd build/swagger-code-cartApi

echo.
rem The jar will be installed to your local .m2. See configuration discussion below.
call mvn clean install -Dmaven.javadoc.skip=true

exit/b



::_

:csc2

echo. & echo * Try runing 'mvn clean package' instead of 'mvn clean install -Dmaven.javadoc.skip=true'.

rem lu: Apr-23-2020

rem You may need to disconnect from the VPN to get this to work. See Jenkinsfile runTest28.

call t csc>nul

cd build/swagger-code-cartApi

echo.
call mvn clean package

exit/b



:_

:br

:sbr

echo. & echo * Spring Boot - run.

rem lu: Jan-9-2019

echo.
mvn spring-boot::run

exit/b


Footnote
>< >< ><

This may also work.
mvn spring-boot:run



:_

:dplr

:plr

echo. & echo * Purge local repository. Clean local dependencies.

rem lu: Mar-09-2022

mvn dependency:purge-local-repository

exit/b



:_

:ver

:vers

echo. & echo * Version information.

rem lu: Mar-22-2022

echo.
mvn --version

exit/b



:_

:glf

echo. & echo * Generate log file with install.

rem lu: Jun-06-2022

echo.
mvn --log-file ./maven-jersey.log clean -U

exit/b



:_

:glf

echo. & echo * Generate log file with install.

rem lu: Jun-06-2022

echo.
mvn --log-file ./maven-jersey.log clean -U

exit/b



:_

:clcl

echo. & echo * Clean clean.

rem lu: Jun-07-2022

echo.
mvn clean:clean

exit/b



:_+ Dependency Tree



::_

:detr

echo. & echo * Dependency tree.

rem lu: Jun-06-2022

echo.
mvn dependency:tree

exit/b



::_

:dsm

echo. & echo * Run dependency test against a single module.

rem lu: Jun-07-2022

echo.
mvn dependency:tree -pl "CVT domain objects"

exit/b



::_

:i

echo. & echo * Install file.

rem lu: Jun-07-2022

cd %USERPROFILE%\.m2\repository\classworlds\classworlds\1.1

echo.
mvn install:install-file classworlds-1.1.jar &
 -Dfile=classworlds-1.1.jar &
 -DgroupId=com.googlecode &
 -DartifactId=json-simplet &
 -Dversion=1.1.1 & 
 -Dpackaging=jar

 pause

exit/b



:_+ Common Maven Commands



::_

:b

:buil

:build

:cvt

echo. & echo * Build CVT.

rem lu: Mar-1-2022

rem call t apse>nul

if not exist pom.xml (
  echo. & echo * Error: There is no pom.xml file in the current folder.
  exit/b
)

cls

echo.
rem The jar will be installed to your local .m2. See configuration discussion below.
@echo on
mvn clean install -Dmaven.test.skip=true

exit/b

Note: You may need to disconnect from the VPN to get this to work.



::_

:inst
:phil

echo. & echo * Phil's Maven install command.

rem lu: Aug-08-2022

if not exist pom.xml (
  echo. & echo * Error: There is no pom.xml file in the current folder.
  exit/b
)

echo.
@echo on
mvn clean -U install -Dmaven.test.skip=true
@echo off

exit/b

+ This the order we successfully ran Phil's Maven command on Aug-08-2022 in the cvt folder:

iss

dal

cvt_appserv

After you build the ear files using the above command, you can find the ear files located at: td ears.



::_

:skte

echo. & echo * Skip tests.

if not exist pom.xml (
  call err There is no pom.xml file in the current folder.
  exit/b
)

echo.
call mvn clean package -DskipTests

call defn l4j2

exit/b



::_

:clpa
:dskte
:rute
:t
:test

echo. & echo * Run mvn clean package WITH tests.

if not exist pom.xml (
  call err There is no pom.xml file in the current folder.
  exit/b
)

echo.
call mvn clean package

call defn l4j2

exit/b



::_

:john

echo. & echo * John Loyde's Maven install command. This should be your default Maven build function because it has the extra necessary code.

if not exist pom.xml (
  call err There is no pom.xml file in the current folder.
  exit/b
)

@echo on
mvn clean install -Dmaven.test.skip=true
@echo off

rem This Maven build creates a Log4j jar file which will piss Marvin off, so delete the file.
echo %cd% | find /i "cvt\dal">nul
if errorlevel 0 call de log4

exit/b

rem lu: Nov-08-2022
rem lu: Oct-18-2022



::_

:pack

echo. & echo * Phil's Maven package command.

rem lu: Sep-30-2022

if not exist pom.xml (
  call err There is no pom.xml file in the current folder.
  exit/b
)

echo.
@echo on
mvn clean -U package -Dmaven.test.skip=true
@echo off

exit/b



:_

:hlph

echo. & echo * Maven help.

echo.
mvn --help

exit/b



:hlp

echo. & echo * Maven help piped to a file.

echo.
call mvn --help>%tmp%\maven-help.txt

call an kr

set cbf-parameter=%tmp%\maven-help.txt

call r

exit/b



:_

:avn

:svn

echo. & echo * Set or add version number to pom files.

if "%~2" == "" goto help

rem Run this from the common-build folder, which is the parent folder. This is key.
mvn versions:set -DnewVersion=%2

exit/b


:help

echo. & echo * Parameter Description(s):
echo. & echo * Parameter 2: Version number.

exit/b



:_

:buja

echo. & echo * Build jar.

if not exist pom.xml (
  call err There is no pom.xml file in the current folder.
  exit/b
)

mvn org.apache.maven.plugins:maven-dependency-plugin:3.2.0:copy -Dartifact=org.kie:kie-dmn-xls2dmn-cli:9999:jar -DoutputDirectory=.

exit/b



:_

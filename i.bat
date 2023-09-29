:_

@echo off

if "%~1" == "" goto show-cbf-variables
if "%~1" == "?" goto help
if "%~1" == "/c" goto clear-cbf-variables

call :clear-cbf-variables

call n %1

if errorlevel 1 exit/b

call :show-cbf-variables-2 %1

exit/b



:_

:help

cls

echo. & echo * Show or clear CBF environment variables.
echo. & echo * Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1 (Optional): 
echo   If left blank, current CBF variables are shown.
echo   If "/c" is passed in, CBF variables are cleared.
echo   Else the CBF variables for the passed in alias are shown.
echo. & echo * Batch file style: Single purpose.

exit/b

rem lu: Oct-29-2022



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::
        `--'      `--'      `--'      `--'      `--'     



:_
:clear-cbf-variables
echo. & echo * Clear CBF variables.



:_
rem Application
set cbf-app=



:_

rem Application Location
set cbf-app-location=



:_
rem Ax Clipboard Loader
set cbf-ax=



:_
rem Bitbucket
set cbf-bi=
set cbf-bi2=



:_
rem Bitbucket ssh stored value
set cbf-bisv=



:_
rem Branch
set cbf-branch=
set cbf-branch-to-delete=



:_
rem Com
set cbf-com=



:_
rem Clone URL
set cbf-cn=



:_
rem Clone H URL
set cbf-cnh=



:_
rem Clone SSH URL
set cbf-cnssh=



:_
rem Composed Variable
set cbf-composed-variable=



:_

rem Confluence

set cbf-cf=
set cbf-cf1=
set cbf-cf2=
set cbf-cf3=



:_

rem Create Pull Request

set cbf-cpr=



:_

rem Default Browser

rem I commented this because normally I don't want to see this.
rem set cbf-default-browser=

if "%cbf-default-browser%"=="" echo. & echo * Warning: cbf-default-browser is blank.



:_

rem Default Text Editor

rem set cbf-default-text-editor=



:_

rem Development Website

set cbf-dv=



:_

rem Demo

set cbf-demo=
set cbf-demo2=
set cbf-demo3=
set cbf-demo4=
set cbf-demo5=
set cbf-demo6=



:_

rem Desired path

set cbf-desired-path=



:_
rem Distilled
set cbf-distilled_filename=
set cbf-distilled_path=



:_
rem Error Graphic
set cbf-error-graphic=



:_
rem Excel
set cbf-ex=
set cbf-ex1=
set cbf-ex2=
set cbf-ex3=



:_

rem expand-to-path-only-pt

set cbf-expand-to-path-only-pt=



:_

rem Expanded Variable

set cbf-expanded-variable=



:_

rem File purpose

set cbf-filep=



:_

rem File Type

set cbf-file-type=



:_
rem Filename
set cbf-fn=
set cbf-fn2=



:_

rem Filename List

set cbf-fn-list=



:_

rem F. website

set cbf-fq=



:_

rem Full Pem

set cbf-full-pem=



:_
rem Google Docs
set cbf-gd=



:_
rem GitHub
set cbf-gh=



:_
rem GitHub - My Implementation of Another GitHub Repository
set cbf-ghmy=



:_
rem GitHub Historical record
set cbf-ghh=



:_
rem GitLab
set cbf-gl=



:_
rem GitLab ssh stored value
set cbf-glsv=



:_
rem Go
set cbf-go=
set cbf-go2=



:_
rem Google Sheets
set cbf-gs=



:_

rem Hostname

set cbf-host=



:_

rem Instance ID

set cbf-instance-id=



:_

rem IP Address

set cbf-ip=



:_

rem IXM

set cbf-ixm=



:_

rem Java

set cbf-java=



:_

rem Java

set cbf-jav=
set cbf-jav2=



:_

rem Jenkins Branch Specific

set cbf-jb=



:_

rem Jenkins Branch - Non-prod

set cbf-jbn=



:_

rem Jenkins Branch Specific

set cbf-jbp=



:_

rem Jenkins (deprecated as a CBF)

set cbf-je=



:_

rem Jenkins E. Folder

set cbf-jefd=



:_

rem Jenkinsfile

set cbf-jf=



:_

rem Jenkins Folder non-E. folder, a.k.a. Ansible Folder

set cbf-jfd=



:_
rem Jira
set cbf-ji=
set cbf-ji2=
set cbf-ji3=



:_

rem Jenkins Job (Build Console Output)

set cbf-jj=



:_

rem Jenkins Multibranch pipeline (non-Branch Specific)

set cbf-jm=



:_

rem Jenkins Pipeline (non-Branch Specific) This should have a "Build with Parameters" button.

set cbf-jp=



:_

rem JPG

set cbf-jpg=



:_
rem Json
set cbf-json=
set cbf-json2=



:_

rem Local Host

set cbf-lh=



:_

rem Link files.

set cbf-lnk=



:_
rem Message
set cbf-msg=



:_
><    ><    ><    ><    ><    Separator (!midwi, !half, !midw): Halfway point. (skw midway)



:_
rem Nexus
set cbf-nx=



:_

rem Parameter

rem Ugh. I am seeing parameter wars now. May-23-2022 In order for j.bat to work, it seems that cbf-parameter needs to be cleared.
set cbf-parameter=



:_
rem Project Designator
set cbf-pd=



:_
rem Package JSON
set cbf-pj=



:_
rem PNG
set cbf-png=



:_

rem Production Website

set cbf-po=



:_

rem Pull Requests

set cbf-pr=



:_

rem Png

set cbf-png=
set cbf-png2=
set cbf-png3=



:_

rem PowerPoint

set cbf-ppt=



:_
rem PowerPoint with Macros Enabled
set cbf-pptm=



:_

rem Path

set cbf-pt=
set cbf-pt2=
set cbf-pt3=



:_
rem PIV URL.
set cbf-purl=



:_

rem Previous Path.

set cbf-previous-pt=



:_

rem Releases

set cbf-rl=



:_

rem Recording - Microsoft Teams Recorded Meeting

rem set cbf-rg=



:_

rem Reserved Path

rem Commented for now because it causes an issue. Jun-11-2021
rem set cbf-reserved-path=



:_

rem Sharepoint website

set cbf-shar=



:_

rem Screenshot

set cbf-ss=



:_

rem S. website

set cbf-st=



:_

rem Splunk

set cbf-splu=
set cbf-splu2=



:_
rem S. website
set cbf-st=



:_
rem TD Child
set cbf-tdc=



:_
rem TD Parent
set cbf-tdp=



:_
rem T. website
set cbf-tr=



:_
rem URL
set cbf-url=
set cbf-url2=



:_
rem VPN
set cbf-vpn=



:_
rem Word
set cbf-wo=
set cbf-wo2=



:_

if "%~1" == "/c" goto show-cbf-variables

exit/b



:_
:show-cbf-variables-2

cls

echo. & echo * Show CBF variables for "%1".

goto main

:show-cbf-variables

cls

echo. & echo * Show CBF variables.

:main

call el

echo.
set cbf

exit/b

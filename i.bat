:_
@echo off

if "%~1" == "" goto show-cbf-variables
if "%~1" == "?" goto help
if "%~1" == "/c" goto clear-cbf-variables

call :clear-cbf-variables
call n %1 || exit/b
call :show-cbf-variables-2 %1

exit/b



:_
:help
cls

echo. & echo * Show or clear CBF environment variables.
echo. & echo   Usage: %0 [space separated parameter(s)]
echo. & echo * Parameter 1 (Optional): 
echo   If left blank, current CBF variables are shown.
echo   If "/c", CBF variables are cleared.
echo   Else the CBF variables for the passed in alias are shown.

echo. & echo   Batch file style: Single purpose.

echo. & echo * Example(s):
echo   %0 cbf

exit/b
lu:
Oct-29-2022



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::
        `--'      `--'      `--'      `--'      `--'     



:_
:clear-cbf-variables

echo. & echo * Clear CBF variables.

rem Note: This list is alphabetical by the CBF variable name, and not its description.

:
rem Application
set cbf-app=

:
rem Application Location
set cbf-app-location=

:
rem Ax Clipboard Loader
set cbf-ax=

:
rem Bitbucket
set cbf-bi=
set cbf-bi2=

:
rem Bitbucket ssh stored value
set cbf-bisv=

:
rem Branch
set cbf-branch=
set cbf-branch-to-delete=

:
rem Clone URL
set cbf-cn=

:
rem Clone H URL
set cbf-cnh=

:
rem Clone SSH URL
set cbf-cnssh=

:
rem Composed Variable
set cbf-composed-variable=

:
rem Confluence
set cbf-cf=
set cbf-cf1=
set cbf-cf2=
set cbf-cf3=

:
rem Create Pull Request
set cbf-cpr=

:
rem Current Directory
set cbf-current-directory=

:
rem Date
set cbf-date=

:
rem Default Browser
rem I commented this because normally I don't want to see this.
rem set cbf-default-browser=
if "%cbf-default-browser%"=="" echo. & echo * Warning: cbf-default-browser is blank.

:
rem Default Text Editor
rem set cbf-default-text-editor=

:
rem Demo
set cbf-demo=
set cbf-demo2=
set cbf-demo3=
set cbf-demo4=
set cbf-demo5=
set cbf-demo6=

:
rem Desired path
set cbf-desired-path=

:
rem Distill file folder.
set cbf-distilled-file-folder=

:
rem Distilled
set cbf-distilled_filename=
set cbf-distilled_path=

:
rem Editor Parameter
set cbf-editor-parameter=

:
rem Error Graphic
set cbf-error-graphic=

:
rem Excel
set cbf-ex=
set cbf-ex1=
set cbf-ex2=
set cbf-ex3=

:
rem expand-to-path-only-pt
set cbf-expand-to-path-only-pt=

:
rem Expanded Variable
set cbf-expanded-variable=

:
rem File purpose
set cbf-filep=

:
rem File Type
set cbf-file-type=

:
rem Filename
set cbf-fn=
set cbf-fn2=

:
rem Filename List
set cbf-fn-list=

:
rem F. website
set cbf-fq=

:
rem Full Pem
set cbf-full-pem=

:
rem Google Docs
set cbf-gd=

:
rem GitHub
set cbf-gh=

:
rem GitHub - My Implementation of Another GitHub Repository
set cbf-ghmy=

:
rem GitHub Original Content
set cbf-gho=

:
rem GitHub Historical record
set cbf-ghh=

:
rem GitLab
set cbf-gl=

:
rem GitLab ssh stored value
set cbf-glsv=

:
rem Go
set cbf-go=
set cbf-go2=

:
rem Graphic
set cbf-graphic=

:
rem Google Sheets
set cbf-gs=

:
rem Hostname
set cbf-host=

:
rem Instance ID
set cbf-instance-id=

:
rem IP Address
set cbf-ip=

:
rem is-leetcode-number
set cbf-is-leetcode-number=

:
rem IXM
set cbf-ixm=

:
rem Java
set cbf-java=

:
rem Java
set cbf-jav=
set cbf-jav2=

:
rem Jenkins Branch Specific
set cbf-jb=

:
rem Jenkins Branch - Non-prod
set cbf-jbn=

:
rem Jenkins Branch Specific
set cbf-jbp=

:
rem Jenkins (deprecated as a CBF)
set cbf-je=

:
rem Jenkins E. Folder
set cbf-jefd=

:
rem Jenkinsfile
set cbf-jf=

:
rem Jenkins Folder non-E. folder, a.k.a. Ansible Folder
set cbf-jfd=

:
rem Jira
set cbf-ji=
set cbf-ji2=
set cbf-ji3=

:
rem Jenkins Job (Build Console Output)
set cbf-jj=

:
rem Jenkins Multibranch pipeline (non-Branch Specific)
set cbf-jm=

:
rem Jenkins Pipeline (non-Branch Specific) This should have a "Build with Parameters" button.
set cbf-jp=

:
rem JPG
set cbf-jpg=

:
rem Json
set cbf-json=
set cbf-json2=

:
rem Latest Folder
set cbf-latest-folder-result=

:
rem Local Host
set cbf-lh=

:
rem Link files.
set cbf-lnk=

:
rem Message
set cbf-msg=

: Separator (!midwi, !half, !midw): Halfway point. (skw midway) ****************************************

:
rem Notice Graphic.
set cbf-notice-graphic=

:
rem Nexus
set cbf-nx=

:
rem Parameter
rem Ugh. I am seeing parameter wars now. May-23-2022 In order for j.bat to work, it seems that cbf-parameter needs to be cleared.
set cbf-parameter=

:
rem Parser
set cbf-parser=

:
rem Project Designator
set cbf-pd=

:
rem Package JSON
set cbf-pj=

:
rem PNG
set cbf-png=

:
rem Production Website
set cbf-po=

:
rem Pull Requests
set cbf-pr=

:
rem Png
set cbf-png=
set cbf-png2=
set cbf-png3=

:
rem PowerPoint
set cbf-ppt=

:
rem PowerPoint with Macros Enabled
set cbf-pptm=

:
rem Path
set cbf-pt=
set cbf-pt2=
set cbf-pt3=

:
rem PIV URL.
set cbf-purl=

:
rem Previous Path.
set cbf-previous-pt=

:
rem Microsoft Teams Recorded Meeting
set cbf-reme=

:
rem Pipe to File
set cbf_parameter_total=

:
rem Python Results
set cbf-python-results=

:
rem Parameter Total
set cbf_pipe_to_file=

:
rem Releases
set cbf-rl=

:
rem Reserved Path
rem Commented for now because it causes an issue. Jun-11-2021
rem set cbf-reserved-path=

:
rem Search Subfolders
set cbf-search-subfolders=

:
rem Sharepoint website
set cbf-shar=

:
rem Screenshot
set cbf-ss=

:
rem S. website
set cbf-st=

:
rem Splunk
set cbf-splu=
set cbf-splu2=

:
rem S. website
set cbf-st=

:
rem TD Child
set cbf-tdc=

:
rem TD Parent
set cbf-tdp=

:
rem Title
set cbf-title=

:
rem Transfer Item
set cbf-transfer-item=

:
rem T. website
set cbf-tr=

:
rem URL
set cbf-url=
set cbf-url2=

:
rem VPN
set cbf-vpn=

:
rem Word
set cbf-wo=
set cbf-wo2=

:
rem YouTube
set cbf-yt=

:
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



:_

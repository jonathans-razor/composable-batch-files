:_ Nickname Dictionary (!n, !bfn)

@echo off


if "%~1" == "" goto help
if "%~1" == "?" goto help

ver>nul

goto %1



:_
:help

cls

echo. & echo * Nicknames dictionary. This can be thought of as a large configuration 
echo file, batch file database or data layer that set enviornment variables. 
echo The idea is that you register your folder, file, etc. here and then you can 
echo easily access it via your chosen alias.
echo. & echo In the function block corresponding to the label, you can set any or all
echo of the CBF environment variables. Typically this batch file would be called 
echo by a different batch file looking to set a particular CBF environment variable.


echo. & echo   Usage: %0 [single parameter]
echo. & echo * Parameter 1: Alias to run assignment for.

echo. & echo * Example(s):
echo   %0 cbf
exit/b



:_

Metadata: Track Size (!tsn)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  ----------------------------------------------

: Nov-3-2023   4,134     55,731        296

:Jul-10-2023   2,443     30,655        168

: Jul-3-2023   2,183     27,420        150  Finished cleaning up CBF.

:Jun-28-2023     839     11,341         61



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ ASCII Art Family (!fyaa)



::_
:ascii-art-2023-separator
echo. & echo * ASCII Art - %1.
call n cbf
set cbf-graphic=%cbf-pt%\ascii-art-2023-separator.txt
exit/b
rem lu: Sep-20-2023



::_
:ascii-art-error
echo. & echo * ASCII Art - %1.
call n cbf
set cbf-error-graphic=%cbf-pt%\ascii-art-error-box.txt
exit/b
rem lu: Sep-22-2022



::_

:ascii_art_sailboat

:aass

echo. & echo * ASCII Art - %1.

rem lu: Nov-25-2019

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_sailboat.txt

exit/b



::_

:ascii_art_sea_scene

:aass

echo. & echo * ASCII Art - %1.

rem lu: Nov-6-2019

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_sea_scene.txt

exit/b



::_

:ascii_art_scuba

:aa_sc

echo. & echo * Ascii art - scuba.

rem lu: Nov-6-2019

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_scuba.txt

exit/b



::_

:parrot

echo. & echo * Parrot.

rem lu: Apr-1-2019



set cbf-fn=%composable-batch-files%\parrot.txt

exit/b



::_

:ascii_art

echo. & echo * ASCII art.

rem lu: Apr-1-2019

rem 

set cbf-fn=%composable-batch-files%\ascii_art.txt

exit/b



::_

:ascii_art_2

echo. & echo * ASCII art.

rem lu: Apr-1-2019

rem 

set cbf-fn=%composable-batch-files%\ascii_art_2.txt

exit/b



:_+ Editors



::_
:no
:note
echo. & echo * Notepad.
rem This is used as a cbf system default, if none is set. Please DO NOT DELETE.
set cbf-app=c:\windows\system32\notepad.exe
exit/b


rem lu: Jan-24-2018



::_

:wp

:wopa

echo. & echo * WordPad.

rem lu: Aug-9-2018

set cbf-app=c:\program files\windows nt\accessories\wordpad.exe

exit/b



::_

:npp

echo. & echo * Notepad++.

rem lu: Mar-9-2018

rem Determine installation path.

if exist "c:\program files\notepad++\notepad++.exe" set cbf-app=c:\program files\notepad++\notepad++.exe

if exist "c:\program files (x86)\notepad++\notepad++.exe" set cbf-app=c:\program files (x86)\notepad++\notepad++.exe

if not exist "%cbf-app%" set cbf-app=W:\Notepad++V7.8.4\Notepad++.exe

if not exist "%cbf-app%" (
  echo. & echo * Error: Notepad++ is not installed.
  exit/b 2
)

exit/b



::_

:me

echo. & echo * Multi-Edit.

set cbf-app=C:\Program Files (x86)\multi-edit 2008\mew32.exe

exit/b

lu:
Feb-7-2020



::_

:subl

echo. & echo * Sublime.

rem lu: Oct-9-2019

set cbf-app=C:\Program Files\Sublime Text 3\sublime_text.exe

exit/b



::_

:viva

echo. & echo * Vivaldi.

rem lu: Jul-17-2018

set cbf-app=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

exit/b



:_

:feed

echo. & echo * Feed reader sample.

rem lu: Jul-17-2018

set cbf-pt=%cbf-repo%\feedreader

set cbf-url=https://github.com/codehollow/FeedReader.git

exit/b



:_+ CBF-related links.



::_
:c
:cbf
echo. & echo * Composable batch files.
set cbf-branch=main
set cbf-cn=git@github.com:jonathans-razor/Composable-Batch-Files.git

set cbf-gh=https://github.com/jonathans-razor/Composable-Batch-Files

set cbf-pt=%dropbox%\it\composable-batch-files
rem The following line is unnecessary but is left as a hook for the future. Jun-21-2023
if /i %computername%==xps set cbf-pt=d:\dropbox\it\composable-batch-files

set cbf-rl=https://github.com/jonathans-razor/Composable-Batch-Files/releases
exit/b

rem lu: Jul-18-2023

Footnote
>< >< ><

about: Windows Batch Scripting files that are function-based, modularized and easy to use and 
understand.

branches: 1

contributors: 1

languages: Batchfile, Java

last commit: Jun-18-2021

releases: 4



::_
:f
:ffb
:ffbs
echo. & echo * Function first bash scripts.
set cbf-gh=https://github.com/jonathans-razor/function-first-bash-scripts
set cbf-pt=%dropbox%\it\function-first-bash-scripts
exit/b
rem lu: Sep-9-2023



::_
:jj
:jjgh
:jjgit
echo. & echo * Jonathan's Github page.
set cbf-gh=https://github.com/jonathans-razor
set cbf-rl=%cbf-gh%\Composable-Batch-Files\releases
exit/b
rem lu: Jun-27-2023



::_

:cbfgp

:ghp

echo. & echo * CBF on GitHub Pages.

rem lu: Jan-31-2018

set cbf-url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

exit/b



::_

:cbf-p

echo. & echo * CBF Pulse on GitHub.

rem lu: Jan-24-2018

set cbf-url=https://github.com/jonathan-r-jones/Composable-Batch-Files/pulse

exit/b



::_
:obx
echo. & echo *  OBX.
call n r>nul
set cbf-pt=%cbf-pt%\obx
set cbf-ex=%dropbox%\savannah\Excels\obx.xls
set cbf-fn=%cbf-pt%\index.md
set cbf-gh=https://github.com/jonathans-razor/OBX.git
set cbf-mtp=%reach out%\obx.mtp
set cbf-url=https://jonathans-razor.github.io/Outer-Banks-2021/
exit/b
rem lu: Jun-27-2023
rem lu: Jan-24-2018



::_

:pat
echo. & echo * Personal Access Token.
call n up>nul
set cbf-fn=%cbf-pt%\.git-credentials
exit/b



::_
:hp
echo. & echo * Github home page.
set cbf-gh=https://github.com
exit/b
lu: 
Nov-10-2023



:_
:gral
echo. & echo * Greek Alphabet.
call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1tbV5cVzO5_5zTt4d4pLmohx1DeacuzFB3U5cb19Pcm0/edit#gid=1236387935
exit/b
rem lu: Sep-25-2023



:_
:miss
echo. & echo * Mission.
call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1d1vwKHe2RjbkqmVt8trayVu7YKTzpeutBk2aXa2nxAg/edit#gid=847203255
exit/b
rem lu: Sep-25-2023



:_

:daap

echo. & echo * Dating apps.

call pn exs

set cbf-ex=%cbf-pt%\dating apps.xlsx
call ap br>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/1y4CQHUdMAQrZu_qYtKcGUm-qtD93-QNAs8upLvcr-eM/edit#gid=0

exit/b
lu:
Oct-18-2023
creation date: Jan-25-2023



:_
:ear
:earx
:em
:emai
echo. & echo * Email accounts registrar.
call pn exs>nul
set cbf-ex=%cbf-pt%\email accounts register.xlsx
set cbf-gs=https://docs.google.com/spreadsheets/d/1SKXiQZX4zrFkllI3hQAcWsNuJ5ULXkmiazmkcz9MDm0/edit#gid=1544547210
exit/b
rem lu: Nov-7-2022



:_+ Base64 Family (!fycb64)



::_
:b64
:base64
:b64e
echo. & echo * Base64 Encode.
set cbf-url=https://www.base64encode.org/
exit/b
rem lu: Mar-08-2023



::_
:b64d
echo. & echo * Base64 Decode.
set cbf-url=https://www.base64decode.org/
exit/b
rem lu: Mar-08-2023



:_
:sz
echo. & echo * Share-zone
call pn dr
set cbf-pt=%cbf-pt%\it\share-zone
exit/b
creation date: Mar-22-2023



:_
:ssh
echo. & echo * SSH folder.
call pn h>nul
set cbf-pt=%cbf-pt%\.ssh
exit/b
rem lu: Mar-28-2023



;+ Code Keepers Family (!fyck)



::_
:ck
:ckan
:ckba
:ckcs
:ckjv
echo. & echo * %1 code keepers.
call pn dbf>nul
set cbf-pt=%cbf-pt%\code keepers
set cbf-fn=%cbf-pt%\%1.asc
exit/b
rem lu: May-12-2022
rem Ansible, Bash, C#, Java Code Keepers



::_
:ckgr
:ckje
:ckjf
:jf
echo. & echo * Groovy/Jenkinsfile code keepers.
call pn vdi>nul
set cbf-pt=%cbf-pt%\code keepers
set cbf-pt=%cbf-pt%\Jenkinsfiles
set cbf-fn=%cbf-pt%\%cbf-pd%\ckjf.asc
exit/b
creation date: Feb-25-2023
skw Groovy Code Keepers



::_
:bcs
:bscs
:chsh
echo. & echo * Bash scripting cheat sheet.
set cbf-url=https://devhints.io/bash
exit/b
rem lu: Mar-01-2023



:_
:st23
echo. & echo * Summer trip 2023.
call pn tran
set cbf-pt=%cbf-pt%\summer-trip-2023
exit/b
creation date: Apr-2-2023



:_
:ga
echo. & echo * Gettysburg Address.
call pn cbf>nul
set cbf-fn=%cbf-pt%\gettysburg-address.txt
exit/b
rem lu: Apr-20-2023



:_
:cdr
echo. & echo * C: drive.
set cbf-pt=c:\
exit/b



:_
:prep
echo. & echo * Prepare.
call pn exs>nul
set cbf-ex=%cbf-pt%\prepare.xlsx
exit/b
creation date: May-30-2023



:_
:shwe
:shoe
:snwe
echo. & echo * Shoe Weights.
call pn exs>nul
set cbf-ex=%cbf-pt%\Shoe Weights.xlsx
call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1_F2hoEwMmbB9B8Oqt4cV1O-4T_6gAyDaJdoX4-OORYU/edit#gid=523644252           
exit/b
creation date: Jun-6-2023



:_
:pres
echo. & echo * my-presidential-voting-history.
call pn exs>nul
set cbf-ex=%cbf-pt%\my-presidential-voting-history.xlsx
exit/b
creation date: Jun-11-2023



:_
:rp
:repo
:repos
:repository_folder
echo. & echo * Repository folder.
set cbf-pt=c:\repos
if exist "c:\GitHub Repositories" set cbf-pt=c:\GitHub Repositories
if exist "d:\aa\repositories" set cbf-pt=d:\aa\repositories
if exist "c:\aa\repositories" set cbf-pt=c:\aa\repositories
if exist "c:\repositories" set cbf-pt=c:\repositories
exit/b



:_
:pete0
echo. & echo * %1.
call pn dbf
set cbf-fn=%cbf-pt%\pete.asc
exit/b
creation date: Jun-20-2023



:_
:tol
:tsh
echo. & echo * Tysons OneLife Fitness.
set cbf-url=https://www.mysportandhealth.com
exit/b
creation date: Jun-26-2023



:_

:a
:afd

echo. & echo * A folder.

if exist c:\a set cbf-pt=c:\a
if exist w:\a set cbf-pt=w:\a
rem export cbf-pt=/c/a

exit/b

lu:
Nov-9-2023
Dec-12-2017



:_+ Windows Folders Family (!fywin)



::_

:dl
:dn
:down

echo. & echo * Downloads folder.

set cbf-pt=%userprofile%\downloads

if exist w:\downloads set cbf-pt=w:\downloads

exit/b


rem lu: Jun-7-2018



::_

:rece

echo. & echo * Recents folder.

rem lu: Nov-19-2019

set cbf-pt=%appdata%\Microsoft\Windows\Recent

exit/b



::_

:stme

echo. & echo * Open Windows start menu folder.

rem lu: Mar-27-2020

set cbf-pt=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu

exit/b



::_

:star

:start

echo. & echo * Windows Startup folder.

rem fcd: May-9-2017

set cbf-pt=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

exit/b



::_

:udocs

echo. & echo * Userprofile Documents folder.

rem lu: Jul-9-2018

set cbf-pt=%userprofile%\documents

exit/b



::_

:desk
:desktop

echo. & echo * Windows desktop.

set cbf-pt=%userprofile%\desktop

call pn 1d
if exist Desktop set cbf-pt=%cbf-pt%\Desktop

exit/b

rem lu: Dec-27-2018



::_

:32

:sys32

echo. & echo * Windows system 32.

rem lu: Dec-27-2018

call pn cbf>nul

set cbf-fn=%cbf-pt%\32.asc

set cbf-pt=c:\windows\system32

exit/b



::_

:win

:wind

echo. & echo * Windows.

rem lu: Feb-5-2019

set cbf-pt=c:\windows

exit/b



::_
:winu
:wiup
echo. & echo * Windows update.
set cbf-url=http://windowsupdate.microsoft.com
exit/b
rem lu: Jul-10-2023



:_+ Meta files



::_
:tcp
echo. & echo * Python table of contents.
call pn d>nul
set cbf-fn=%cbf-pt%\ph-tc.txt
exit/b
rem lu: May-17-2022
table-of-contents-series: skw



::_
:tcc
:tccbf
echo. & echo * CBF table of contents.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-tc.txt
exit/b
rem lu: May-17-2022
table-of-contents-series: skw



::_
:tcf
:tcffb
echo. & echo * FFB table of contents.
call pn f>nul
set cbf-fn=%cbf-pt%\ffb-tc.txt
exit/b
rem lu: May-17-2022
table-of-contents-series: skw



::_
:tcd
:tcdbf
echo. & echo * DBF table of contents.
call pn dbf>nul
set cbf-fn=%cbf-pt%\dbf-tc.txt
exit/b
table-of-contents-series: skw



::_
:tck
echo. & echo * KCR table of contents. (Key Crusher)
call pn dbf>nul
set cbf-fn=%cbf-pt%\kc-tc.txt
exit/b
rem lu: Jun-26-2023
table-of-contents-series: skw



::_
:tcs
echo. & echo * Share-zone table of contents.
call pn s>nul
set cbf-fn=%cbf-pt%\s-tc.txt
exit/b
rem lu: May-17-2022
table-of-contents-series: skw



::_
:cbf-el
:elcbf
echo. & echo * CBF error levels/codes.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-el.txt
exit/b
rem lu: Jun-06-2022



::_
:cbf-gl
:glcbf
echo. & echo * CBF glossary
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-gl.txt
exit/b
rem lu: Jun-06-2022



::_
:cbf-ov
:ovcbf
echo. & echo * CBF Overview.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-ov.txt
exit/b
rem lu: Aug-28-2023



::_
:cbf-sgd
:sgdcbf
echo. & echo * CBF style guide.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-sgd.txt
exit/b
rem lu: Jun-06-2022



:_

:8

echo. & echo * 8.

rem lu: Jun-1-2022

call pn bel>nul

set cbf-fn=%cbf-pt%\8.bat

exit/b



:_

:sasu

echo. & echo * Savannah summary.

rem lu: Jun-9-2022

call pn ro>nul

set cbf-fn=%cbf-pt%\%cbf-pd%\savannah summary.txt

exit/b



:_+ Messaging



::_

:mtx

:mtxps

echo. & echo * Message to XPS.

rem lu: Jan-31-2022

call pn vdi>nul

set cbf-fn=%cbf-pt%\Miscellany\message-to-xps.txt

exit/b



::_

:mtg

:meet

echo. & echo * Meeting.txt.

rem lu: Feb-28-2022

call pn vdi>nul

set cbf-pt=%cbf-pt%\Miscellany

set cbf-fn=%cbf-pt%\meeting.txt

exit/b



:_
:pv
echo. & echo * PV CBFs.
call pn bel
set cbf-fn=%cbf-pt%\pv.bat
exit/b
creation date: May-24-2023



:_+ Browsers (!brows)



::_
:br
:brav
:clau
echo. & echo * Brave.
set cbf-app=C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe
exit/b
rem lu: Nov-3-2021



::_

:jone
:kr

rem echo. & echo * Chrome.

rem lu: Jan-24-2018

set cbf-app=

if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" set cbf-app=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" set cbf-app=C:\Program Files\Google\Chrome\Application\chrome.exe
rem if exist "" set cbf-app=

if "%cbf-app%" == "" (
  echo.
  echo * Error: %fp% is not installed. ****
  exit/b 2
)

exit/b



::_

:adam
:fx

echo. & echo * Firefox.

rem Determine installation path.

set cbf-app=

if exist "c:\program files\mozilla firefox\firefox.exe" set cbf-app=c:\program files\mozilla firefox\firefox.exe
if exist "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" set cbf-app=C:\Program Files (x86)\Mozilla Firefox\firefox.exe

if "%cbf-app%" == "" (
  echo.
  echo * Error: Firefox is not installed. ****
  exit/b 2
)

exit/b



::_

:viv

echo. & echo * Vivaldi.

rem lu: Feb-12-2020

rem Determine installation path.

set cbf-app=

if exist "%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe" set cbf-app=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

if "%cbf-app%" == "" (
  echo.
  echo * Error: %fp% is not installed. ****
  exit/b 2
)

exit/b



::_
:ed
:edge

echo. & echo * Microsoft Edge browser.

rem lu: Feb-7-2018

rem set cbf-app=microsoft-edge
set cbf-app=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe

exit/b



::_

:ie

echo. & echo * Internet Explorer.

rem This is used as the system default browser, if none is set. Please DO NOT DELETE.

rem lu: Jan-24-2018

set cbf-app=c:\program files\internet explorer\iexplore.exe

exit/b



::_

:op

echo. & echo * Opera.

set cbf-app=c:\program files\opera\launcher.exe
set cbf-pt=C:\ProgramData\Microsoft\Windows\Start Menu\Programs

exit/b
rem lu: 
Sep-25-2023
Feb-13-2018



:_+ Root Drive



::_

:cdr

echo. & echo * Root of the C Drive.

rem lu: Feb-5-2018

set cbf-pt=c:\

exit/b



::_

:gdr

echo. & echo * G drive.

rem lu: Jul-15-2019

set cbf-pt=g:\

exit/b



::_

:hdr

echo. & echo * H drive.

rem lu: Jul-1-2019

set cbf-pt=h:\

exit/b



:_+ Repositories



::_

:c-aa-repos

echo. & echo * C aa repositories.

set cbf-pt=c:\aa\repositories

exit/b

lu:
Nov-9-2023
Nov-2-2018



::_

:d-aa-repos

echo. & echo * D aa repositories.

set cbf-pt=d:\aa\repositories

exit/b

lu:
Nov-9-2023
Nov-2-2018



:_+ J Files (!fycj)



::_
:j1
:j2
echo. & echo * %1.txt.
set cbf-pt=c:\a
if exist w:\a set cbf-pt=w:\a
set cbf-fn=%cbf-pt%\%1.txt
exit/b



::_
:j1j
echo. & echo * j1.json.
set cbf-pt=c:\a
set cbf-fn=%cbf-pt%\%1.json
exit/b



::_
:j1x
echo. & echo * j1.xml.
call pn a>nul
set cbf-fn=%cbf-pt%\j1.xml
exit/b



::_
:j5
:j6
echo. & echo * %1.txt. A more permanent recyclable file.
call pn pm>nul
set cbf-fn=%cbf-pt%\%1.txt
exit/b



::_
:npt
echo. & echo * NP text.
call pn 1m>nul
set cbf-fn=%cbf-pt%\%1.txt
exit/b



::_
:np2t
echo. & echo * NP2 text.
call pn 1m>nul
set cbf-fn=%cbf-pt%\%1.txt
exit/b



::_
:time
echo. & echo * Time.
call pn tmp>nul
set cbf-fn=%cbf-pt%\%1.txt
exit/b



::_
:date
echo. & echo * Date.
call pn tmp>nul
set cbf-fn=%cbf-pt%\%1.txt
exit/b



::_
:dtt
echo. & echo * Date and time.
call pn tmp>nul
set cbf-fn=%cbf-pt%\%1.txt
exit/b



:_+ Blank Documents



::_
:bed
echo. & echo * Blank Excel document.
call pn c>nul
set cbf-ex=%cbf-pt%\blank.xlsx
exit/b
rem lu: Mar-22-2020
rem (skw blank Excel document, blank excel file)



::_
:bpd
echo. & echo * Blank PowerPoint document.
call pn c>nul
set cbf-ppt=%cbf-pt%\blank.pptx
exit/b
rem lu: Oct-25-2020



::_
:btd
echo. & echo * Blank txt document.
call pn c>nul
set cbf-fn=%cbf-pt%\blank.txt
exit/b
rem lu: May-4-2022



::_
:bwd
echo. & echo * Blank Word document.
call pn c>nul
set cbf-wo=%cbf-pt%\blank.docx
exit/b
rem lu: May-4-2022



:_

:tag
echo. & echo * Open the MP3 tagging program.
set cbf-app=C:\Program Files\Mp3tag\mp3tag.exe
exit/b



:_

:vft

echo. & echo * Various file types.

rem lu: Jun-8-2018

set cbf-pt=%dropbox%\it\various file types

exit/b



:_+ Microsoft Products



::_

:ex

echo. & echo * Excel.

rem lu: Jan-3-2019

rem Determine installation path.

set cbf-app=

if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" set cbf-app=C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE
if exist "c:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" set cbf-app=c:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE

if "%cbf-app%" == "" (
  echo.
  echo * Error: Excel is not installed. ****
  exit/b 2
)

set cbf-pt=%cbf-app:\excel.exe=%
rem Commented the following line because it breaks f.bat. Nov-26-2019 11:28 AM
rem set cbf-fn=%cbf-app%

exit/b



::_

:pp

echo. & echo * PowerPoint.

rem lu: Oct-25-2020

rem Determine installation path.

set cbf-app=

if exist "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE" set cbf-app=C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE
if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE" set cbf-app=C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE

if "%cbf-app%" == "" (
  echo.
  echo * PowerPoint doesn't seem to be installed.
  exit/b 1
)

set cbf-pt=%cbf-app:\powerpnt.exe=%

exit/b



::_

:wo

echo. & echo * Word.

rem lu: Jan-24-2019

rem Determine installation path.

set cbf-app=

if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\winword.exe" set cbf-app=C:\Program Files (x86)\Microsoft Office\root\Office16\winword.exe
if exist "c:\Program Files\Microsoft Office\root\Office16\winword.exe" set cbf-app=c:\Program Files\Microsoft Office\root\Office16\winword.exe

if "%cbf-app%" == "" (
  echo.
  echo * Error: Word is not installed. ****
  exit/b 2
)

set cbf-pt=%cbf-app:\winword.exe=%
rem Commented the following line because it breaks f.bat. Nov-26-2019 11:28 AM
rem set cbf-fn=%cbf-app%

exit/b



:_ + Git



::_

:git_bin

:git_user_bin

:gu

:gub

:sg

:sugi

:super_bin

:super_git

echo. & echo * Git power user bin. Loaded with utilities.

rem skw: git utilities, git user bin, super path, super git

rem lu: Oct-23-2020

rem skw git super location, git super path, super git, GitHub super

call pn cbf>nul

set cbf-fn=%cbf-pt%\gub.asc

set cbf-pt=%localappdata%\Programs\Git\usr\bin

set cbf-url=http://www.maizure.org/projects/decoded-gnu-coreutils

if exist "c:\Program Files\Git\usr\bin\" set cbf-pt=c:\Program Files\Git\usr\bin

exit/b



::_

:gh

:git

echo. & echo * Git.

rem lu: Dec-6-2018

set cbf-pt=%localappdata%\Programs\Git

set cbf-url=https://github.com

exit/b



::_

:glab

echo. & echo * GitLab.

set cbf-url=https://gitlab.com

exit/b



::_

:gigu

echo. & echo * Git gui.

rem lu: Aug-1-2018

set cbf-app=C:\Program Files\Git\cmd\git-gui.exe

if exist C:\Users\JJones2\AppData\Local\Programs\Git\cmd\git-gui.exe set cbf-app=C:\Users\JJones2\AppData\Local\Programs\Git\cmd\git-gui.exe

set cbf-fn=%cbf-app%

exit/b



:_+ Excel



::_

:exs
:excs

echo. & echo * Excel files.

call pn sv

set cbf-pt=%cbf-pt%\excels

exit/b

>< >< ><
Footnote

certified monogamous CBF



:_+ Savannah



::_

:sv

echo. & echo * Dropbox Savannah.
set cbf-pt=%dropbox%\savannah
exit/b

lu: May-26-2019

certified monogamous CBF



::_
:ldsv
echo. & echo * Local drive Savannah.
set cbf-pt=%savannah%
exit/b

lu: Jan-25-2021



:_+ Belfry



::_

:bel

:belf

echo. & echo * Belfry.

rem lu: Aug-24-2018

set cbf-pt=%dropbox%\savannah\belfry

exit/b



::_

:ldbelf

echo. & echo * Local drive Belfy.

rem lu: Mar-1-2020

set cbf-pt=%dropbox%\savannah\belfry

exit/b



:_+ Reach Out



::_
:ro
:drro
echo. & echo * Reach out.
set cbf-pt=%dropbox%\savannah\reach out
set cbf-fn=%cbf-pt%\message to ipad.txt
exit/b
rem lu: Jun-30-2023



::_
:ldro
:rold
echo. & echo * Reach out local drive.
set cbf-pt=%my documents%\savannah\reach out
exit/b
rem lu: Jun-30-2023



:_+ Multi-Edit Configuration Files (skw Multi-Edit Config Files)



::_

:mecfg

echo. & echo * Multi-Edit Config file folder.

rem lu: Dec-7-2018

set cbf-pt=%appdata%\Multi Edit Software\Multi-Edit\11\Config.04

exit/b



::_

:drmecfg

:mecfg_dr

echo. & echo * Dropbox Multi-Edit Config files.

rem lu: Dec-7-2018

set cbf-pt=%dropbox%\Multi-Edit_2008_Config_Files

exit/b



::_

:bumecfg

:mecfg_bu

echo. & echo * Multi-Edit Config Files Backups.

rem lu: Jan-3-2018

set cbf-pt=%dropbox%\Backups\Multi-Edit Config Files

exit/b



::_

:smecfg

echo. & echo * Multi-Edit Config file folder in Share-Zone.

rem lu: Feb-13-2019

set cbf-pt=%share-zone%\Multi-Edit_2008_Config_Files

exit/b



:_+ Visual Studio Code



::_

:code

:lnk-vsc

:vc

echo. & echo * Visual Studio Code.

rem lu: Feb-23-2022

set cbf-app=C:\Users\jonat\AppData\Local\Programs\Microsoft VS Code\Code.exe

if exist "C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe" set cbf-app=C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe

if exist "C:\Users\jonat\AppData\Local\Programs\Microsoft VS Code\Code.exe" set cbf-app=C:\Users\jonat\AppData\Local\Programs\Microsoft VS Code\Code.exe

if exist "C:\Program Files\Microsoft VS Code\Code.exe" set cbf-app=C:\Program Files\Microsoft VS Code\Code.exe

if exist "C:\Users\JJONES4\AppData\Local\Programs\Microsoft VS Code\bin\code" set cbf-app=C:\Users\JJONES4\AppData\Local\Programs\Microsoft VS Code\bin\code

rem set cbf-app=C:\Program Files\Microsoft VS Code\Code.exe
rem set cbf-fn=C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe
rem C:\Users\JJones2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk

exit/b

Footnote
>< >< ><

To run Visual Studio Code in a particular folder type: "code ."



::_

:vsc_ws

echo. & echo * Visual Studio Code workspace..

rem lu: Jul-1-2020

call tdp ma>nul

set cbf-pt=%cd%

set cbf-fn=%cbf-pt%\riverstone_vscode.code-workspace

exit/b



:_+ Backups Family



::_

:mibu

:missbu

echo. & echo * Mission backups.

rem lu: Jan-8-2020

set cbf-pt=%dropbox%\backups\mission

exit/b



::_

:svbu

echo. & echo * Savannah backups.

rem lu: Jan-8-2020

set cbf-pt=%dropbox%\backups\savannah

exit/b



::_

:bu
echo. & echo * Backups.
call pn v
set cbf-pt=%cbf-pt%\Backups
if exist %dropbox%\backups set cbf-pt=%dropbox%\backups
exit/b



:_ Priv Pass-through.

:2021
:2022
:jona
:port
:papo
:pass
:pom
:pome
:st (!qh)
:fina
:hc2
:po
:fn
:idv
:disc
:emdo
:r
:res
:mcres
:resmc
:s
:v
:pete
:psc
:dbf
:vesp
:sth
:tax21
:tax22
:tx21
:tx22
:tax
:taxe
:taxes
:tx

rem Priv pass-through.

call pn bel>nul
if exist "%cbf-pt%\pv.bat" call %cbf-pt%\pv.bat %1

exit/b



:_+ Windows Application Family (!fywin)



::_
:magn
echo. & echo * Start Windows Magnifier.
set cbf-app=%windir%\system32\magnify.exe
exit/b
lu: Oct-6-2023



::_

:clea

:clean

:dicl

echo. & echo * Disk Cleanup.

rem lu: May-06-2022

set cbf-app=%windir%\system32\cleanmgr.exe

exit/b



::_

:shot

:snto

echo. & echo * Snipping tool.

rem lu: Feb-4-2019

rem clip, screen shot: skw

set cbf-app=%windir%\system32\SnippingTool.exe

exit/b



::_

:copa

echo. & echo * Control panel.

rem lu: Jan-31-2019

set cbf-app=%systemroot%\system32\control.exe

set cbf-fn=%cbf-app%

exit/b



::_

:sk

:skyp

:skype

echo. & echo * Skype for business.

rem lu: Jan-18-2019

set cbf-app=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business.lnk

set cbf-fn=%cbf-app%

exit/b



::_

:zoomit

echo. & echo * ZoomIt

rem lu: Dec-14-2018

call %0 pounders

set cbf-app=%cbf-pt%\zoomit.exe

if not exist %cbf-app% set cbf-app=%share-zone%\copied software\zoomit.exe

set cbf-fn=%cbf-app%

exit/b



::_
:add_to_path
:add_path
:addpath
:env
:envi
:oden
:odenv
echo. & echo * Environment variables information.
rem System Properties, Advanced System Settings, edit path, edit you path, edit env, set env: skw
set cbf-app=%systemroot%\system32\SystemPropertiesAdvanced.exe
rem call pn exs>nul
set cbf-ex=%cbf-pt%\My Official Inter-Computer Environment Variables.xlsx
set cbf-fn=%cbf-app%
exit/b
rem set cbf-fn2=%cbf-pt%\Environment Variables from ATOI on Aug-5-2021.txt
rem set cbf-fn3=%cbf-pt%\Environment Variables from XAM on Aug-5-2021.txt
rem lu: Apr-29-2019



::_
:serv
:svc
:svcs
:wsvc
echo. & echo * Start Windows Services viewer.
set cbf-app=c:\windows\system32\services.msc
exit/b
rem fcd: May-11-2017



::_

:shde

echo. & echo * Show desktop.

rem lu: Jun-13-2018

set cbf-pt=%userprofile%\desktop

set cbf-fn=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

exit/b



::_

:sow

echo. & echo * Show open windows.

rem lu: Jun-13-2018

set cbf-fn=%appdata%\microsoft\internet explorer\quick launch\window switcher.lnk

exit/b



:_
:gosh
echo. & echo * Google Sheets.
set cbf-url=https://docs.google.com/spreadsheets/u/2/
exit/b
creation date: Jul-6-2023



:_
:ghas
echo. & echo * GitHub advanced search.
set cbf-gh=https://github.com/search/advanced?
exit/b
creation date: Jul-6-2023



:_
:tran
echo. & echo * Transfer folder.
set cbf-pt=%dropbox%\Transfer
exit/b
rem lu: Oct-7-2019



:_+ Home Folders



::_

:jdk

:jdkh

:jh

:jvh

:jv_hm

:java_home

echo. & echo * Java Home.

rem fcd: Dec-14-2018

set cbf-pt=%java_home%

exit/b

Footnote
>< >< >< 

On Keld - Aug-18-2022

java version "1.8.0_341"
Java(TM) SE Runtime Environment (build 1.8.0_341-b10)
Java HotSpot(TM) 64-Bit Server VM (build 25.341-b10, mixed mode)

C:\JDK8>

On Keld - Aug-17-2022

c:\a>where java
C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\JDK8\bin\java.exe
C:\Program Files\Microsoft\jdk-11.0.14.101-hotspot\bin\java.exe
C:\Program Files (x86)\Java\jre1.8.0_341\bin\java.exe

c:\a>cd C:\Program Files (x86)\Common Files\Oracle\Java\javapath

C:\Program Files (x86)\Common Files\Oracle\Java\javapath>java -version
java version "1.8.0_341"
Java(TM) SE Runtime Environment (build 1.8.0_341-b10)
Java HotSpot(TM) Client VM (build 25.341-b10, mixed mode)

C:\Program Files (x86)\Common Files\Oracle\Java\javapath>cd C:\JDK8\bin

C:\JDK8\bin>java -version
java version "1.8.0_321"
Java(TM) SE Runtime Environment (build 1.8.0_321-b07)
Java HotSpot(TM) 64-Bit Server VM (build 25.321-b07, mixed mode)

C:\JDK8\bin>cd C:\Program Files\Microsoft\jdk-11.0.14.101-hotspot\bin

C:\Program Files\Microsoft\jdk-11.0.14.101-hotspot\bin>java -version
openjdk version "11.0.14.1" 2022-02-08 LTS
OpenJDK Runtime Environment Microsoft-31205 (build 11.0.14.1+1-LTS)
OpenJDK 64-Bit Server VM Microsoft-31205 (build 11.0.14.1+1-LTS, mixed mode)

C:\Program Files\Microsoft\jdk-11.0.14.101-hotspot\bin>cd C:\Program Files (x86)\Java\jre1.8.0_341\bin

C:\Program Files (x86)\Java\jre1.8.0_341\bin>java -version
java version "1.8.0_341"
Java(TM) SE Runtime Environment (build 1.8.0_341-b10)
Java HotSpot(TM) Client VM (build 25.341-b10, mixed mode)


Java Home on XPS on Nov-19-2021 is:             C:\Program Files\Eclipse Adoptium\jdk-17.0.1.12-hotspot
Java Home on XPS on Nov-18-2021 is:             C:\Program Files\Java\jdk1.8.0_241
Java Runtime Path on Nov-18-2021 (JRE_HOME) is: C:\Program Files\Java\jdk1.8.0_241\jre

Java Home on ATOI on Dec-18-2020. I removed the first 1.

:C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\Program Files\Java\jdk1.8.0_241\bin\java.exe

Java Home on XPS Nov-24-2020. I removed the first 2.

:C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\ProgramData\Oracle\Java\javapath\java.exe
C:\Program Files\Java\jdk1.8.0_241\bin\java.exe

:+ Java Home on ATOI

C:\Program Files\Common Files\Oracle\Java\javapath\java.exe
C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\Program Files (x86)\Java\jre1.8.0_261\bin\java.exe

::c:\aa\Java_Jdk_1.
:wlap8.0.241\bin>java -version
java version "1.8.0_241"
Java(TM) SE Runtime Environment (build 1.8.0_241-b07)
Java HotSpot(TM) 64-Bit Server VM (build 25.241-b07, mixed mode)

::c:\aa\Java_Jdk_1.
:wlap8.0.241_part_2\bin>java -version
java version "1.8.0_241"
Java(TM) SE Runtime Environment (build 1.8.0_241-b07)
Java HotSpot(TM) 64-Bit Server VM (build 25.241-b07, mixed mode)

c:\aa\jdk-11.0.9

Prior to Nov-9-2020 Java Home on ATOI was: c:\aa\Java_Jdk_1.8.0.241

setx -m JAVA_HOME "c:\aa\jdk-11.0.9"

setx -m JAVA_HOME "C:\Program Files\Java\jdk-11.0.7"

https://www.codejava.net/java-se/download-and-install-java-11-openjdk-and-oracle-jdk



::_

:jre

:jreh

:jrh

:jvre

echo. & echo * Java runtime path. According to Craig M., this should be %java_home%\jre.

rem lu: Apr-7-2021

set cbf-pt=%jre_home%

exit/b



::_

:dh

:docker-home

echo. & echo * Docker home.

rem fcd: Aug-15-2022

call pn home>nul
set cbf-pt=%cbf-pt%\.docker
set cbf-fn=%cbf-pt%\config.json

exit/b



::_

:nh

:node_home

echo. & echo * Node home.

rem fcd: Feb-11-2019

set cbf-pt=%node_home%

exit/b



::_

:m2r

set fp=M2 or Maven2 repository.

rem fcd: Jul-7-2017

set cbf-url=https://mvnrepository.com

exit/b



::_

:mh

:mvh

echo. & echo * Maven Home.

rem fcd: Jun-29-2022

rem This is useful for new installs.

set cbf-pt=%mvn_home%

exit/b

Is mvn_home correct or should it be maven_home?



::_

:m2

:m2p

echo. & echo * M2 or Maven2.

rem fcd: Jul-7-2017

set cbf-pt=%userprofile%\.m2

exit/b



::_

:m2h

echo. & echo * M2 Home as defined in the Env GUI settings, which evaluates to the same as my m2 cbf.

rem fcd: Jun-29-2022

set cbf-pt=%m2_home%

exit/b



::_

:aws

:aws_cfg

:aws_hm

:aws_home

echo. & echo * AWS configuration.

rem lu: Nov-6-2018

set cbf-fn=%userprofile%\.aws\credentials

set cbf-pt=%userprofile%\.aws

set cbf-pt2=%share-zone%\aws cli

exit/b



::_

:je_hm

:je_home

echo. & echo * Jenkins home

rem lu: Dec-15-2018

call %0 home

set cbf-pt=%cbf-pt%\.jenkins

exit/b



::_

:hm

:home

echo. & echo * Home. Note: this could be defined in environment variables OR in startup scripts.

rem lu: Mar-1-2022

set cbf-pt=%home%

if "%cbf-pt%" == "" set cbf-pt=%HOMEDRIVE%\%HOMEPATH%

exit/b



::_

:u

:up

:user

:usr

echo. & echo * User profile.

rem lu: Mar-1-2022

set cbf-pt=%userprofile%

exit/b



::_

:wa

echo. & echo * Windows Apps.

rem lu: Dec-19-2018

set cbf-pt=%localappdata%\Microsoft\WindowsApps

exit/b



:_

:foo

echo. & echo * Foo takes you to the bar folder. Of course it does.

rem lu: Aug-10-2018

set cbf-pt=C:\Program Files\MSBuild\Microsoft\Windows Workflow Foundation\bar

exit/b



:_

:gett

echo. & echo * Gettysburg Address.

rem lu: Aug-13-2018

set cbf-fn=%composable-batch-files%\Gettysburg_Address.txt

exit/b



:_

:fox

echo. & echo * Fox.

rem lu: Jun-4-2020

set cbf-url=https://www.foxnews.com

exit/b



:_+ IT



::_

:it-old

echo. & echo * IT.

rem lu: May-10-2022

set cbf-fn=%share-zone%\it.asc

set cbf-pt=%dropbox%\it\

exit/b



::_

:i2
:it2

echo. & echo * IT.

rem lu: May-10-2022

call pn pm>nul
set cbf-fn=%cbf-pt%\it2.asc

set cbf-pt=%dropbox%\it\

exit/b



::_
:it
echo. & echo * IT.
set cbf-gh=https://github.com/jonathans-razor
set cbf-pt=%dropbox%\it
exit/b
rem lu: Jun-20-2023



::_
:it3
echo. & echo * IT.
set cbf-gh=https://github.com/jonathans-razor
set cbf-pt=%dropbox%\it
set cbf-fn=%cbf-pt%\miscellany\it3.asc
exit/b
rem lu: 
Oct-31-2023



:_
:rt
echo. & echo * Root.
set cbf-gd=https://docs.google.com/document/u/3/
set cbf-gs=https://docs.google.com/spreadsheets/u/3/
exit/b
creation date: Jul-14-2023



:_
:inco
:iw
echo. & echo * Interview code.
call pn dr>nul
set cbf-pt=%cbf-pt%\it\interview-code
set cbf-gh=https://github.com/jonathans-razor/interview-code
set cbf-url=https://www.youtube.com/playlist?list=PLV-KEAAMgUZB0reX0lqWdun75FrvRmG4O
exit/b
creation date: Jul-18-2023



:_+ QuickLauncher



::_
:qlld
echo. & echo * Quickla on local.
set cbf-pt=C:\Users\jonat\Documents\savannah\cmac\Quickla-for-Multi-Edit
exit/b
rem lu: May-24-2023

Note: I edit Quickla in Dropbox but the official GitHub repository is on local.



::_
:drql
:ql
:qldr
echo. & echo * Quickla CMAC on Dropbox.
set cbf-pt=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit
set cbf-gh=https://github.com/jonathans-razor/Quickla-for-Multi-Edit.git
exit/b
rem lu: Jun-27-2023



:_

:dr
:drop
echo. & echo * Dropbox.
set cbf-pt=%dropbox%
if exist d:\Dropbox set cbf-pt=d:\Dropbox
set cbf-url=http://www.dropbox.com
exit/b
rem lu: Sep-9-2021



:_

:ba

echo. & echo * Bash code keepers.

rem lu: May-12-2022

call pn cbf>nul

set cbf-fn=%cbf-pt%\ba.asc

exit/b



:_

:arp

echo. & echo * Add or Remove Programs.

rem lu: Apr-17-2019

set cbf-app=appwiz.cpl

exit/b



:_+ Shortcuts



::_
:bases
:bashs
:sh
:shor
echo. & echo * Base shortcuts.
set cbf-pt=%dropbox%\it\shortcuts
if exist w: set cbf-pt=w:\shortcuts
exit/b
rem base icons: skw
rem lu: Jan-9-2020



::_

:bish

echo. & echo * Big shortcuts.

rem lu: Jul-2-2021

call pn s>nul

set cbf-pd=big shortcuts

set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



:_ + Appdata



::_

:apda

:appd

:appdata

echo. & echo * App data.

rem lu: Dec-4-2018

set cbf-pt=%appdata%

exit/b



::_

:lad

echo. & echo * Local app data.

rem lu: Dec-4-2018

set cbf-pt=%localappdata%

exit/b



::_

:dtbg

echo. & echo * Desktop background.

rem lu: Feb-24-2020

set cbf-pt=%localappdata%\microsoft\windows\themes\roamedthemefiles\desktopbackground

exit/b

:+ desktopbackground

::C:\%appdata%

::C:\Users\jonat\AppData\Local\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

::C:\Users\      jonat\AppData\Local\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

::C:\Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes\Snowy Nig\DesktopBackground




:+_+ My Machines



::_

:earl

echo. & echo * Earl.

rem lu: Jun-30-2019

set cbf-fn=%dropbox%\savannah\reach out\earl.asc

exit/b



::_

:sp7

echo. & echo * SP7.

rem lu: Feb-25-2020

set cbf-fn=%dropbox%\savannah\reach out\sp7.asc

exit/b



::_

:ipad

echo. & echo * iPad.

rem lu: Oct-12-2020

set cbf-fn=%dropbox%\savannah\reach out\ipad.txt

exit/b



:_+ VSC Snippets Family (!fysnip)



::_
:snip
echo. & echo * VSC Snippet folder and Snippet Generator.
call pn up>nul
set cbf-pt=%cbf-pt%\AppData\Roaming\Code\User\snippets
set cbf-fn=%cbf-pt%\Jonathan's Global Snippets File.code-snippets
set cbf-url=https://snippet-generator.app/
exit/b
rem lu: Aug-28-2023



::_
:bsnip
echo. & echo * Batch snippets.
call pn snip>nul
set cbf-fn=%cbf-pt%\bat.json
exit/b
rem lu: Aug-28-2023



::_
:bksnip
echo. & echo * Snippets backup folder.
call pn it>nul
set cbf-pt=%cbf-pt%\visual-studio-code-snippets
set cbf-fn=%cbf-pt%\bat.json
exit/b
rem lu: Aug-28-2023



:_
:higolf
echo. & echo * Golf History.
call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1Jd8ZEPJsjwozonWeRni0Fe3hTEOiTifWW42R_yMjNL0/edit#gid=233212548

exit/b
creation date: Aug-29-2023



:_
:hite
echo. & echo * Tennis history.
set cbf-gs=https://docs.google.com/spreadsheets/d/1kqoWiBPaiBvS7zhkG6XNIM3P6_OSZm_iDkmPouItSDs/edit#gid=610253301
exit/b

lu:
Oct-5-2023
Sep-5-2023



:_+ Zoom and Microsoft Teams



::_
:mite
:mste
:team
:teams
echo. & echo * Microsoft Teams.
set cbf-pt=%AppData%\Microsoft\Windows\Start Menu\Programs
set cbf-app=%cbf-pt%\Microsoft Teams.lnk
rem Top 8 Ways to Fix Cannot Record Meeting in Microsoft Teams
set cbf-url=https://www.guidingtech.com/top-ways-to-fix-cant-record-meeting-in-microsoft-teams/
set cbf-url2=https://teams.microsoft.com
exit/b
rem lu: Jan-27-2022



::_
:zoom
echo. & echo * Zoom.
set cbf-app=%AppData%\Zoom\bin\zoom.exe
exit/b
rem lu: Oct-12-2020



::_
:mtdd
echo. & echo * Microsoft Teams down detector.
set cbf-url=https://downdetector.com/status/teams/
exit/b
rem lu: Feb-3-2020



:_
:fj
:hifj
:hires
echo. & echo * Job Search History.
call pn jona
set cbf-pt=%cbf-pt%\Find a Job
call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1MtAgqCRRMNliiAw6nNLj1a0IsIw7nM6n_AcsBm9bvVI/edit#gid=1499309585
exit/b
creation date: Aug-31-2023



:_+ Family Gmail (!fygmai)



::_
:gmai
:gmail
:j3
echo. & echo * Gmail.
call an br
set cbf-url=https://mail.google.com
exit/b
creation date: Sep-7-2023



::_
:j7
echo. & echo * Gmail.
call an edge
set cbf-url=https://mail.google.com
exit/b
creation date: Sep-21-2023



:_

:aa

:perm

echo. & echo * Aa, a.k.a. permanent folders for Jonathan.

rem lu: Nov-2-2018

if exist "c:\aa" set cbf-pt=c:\aa
if exist "d:\aa" set cbf-pt=d:\aa

exit/b



:_
:mons
echo. & echo * Monster.com.
set cbf-url=https://www.monster.com/resumes/resume/manageresumes?landedFrom=post-resume2
exit/b
creation date: Sep-12-2023



:_+ Localhost



::_

:nd
:3000

echo. & echo * Localhost port 3000. Used by Node.

set cbf-lh=http://localhost:3000

exit/b
rem lu: Oct-18-2023



::_

:3000h

echo. & echo * Localhost port %1.

set cbf-lh=http://localhost:%1/hello

exit/b
rem lu: Sep-21-2023



::_
:gu
:4200

echo. & echo * Default localhost port for Angular.

set cbf-lh=http://localhost:4200

exit/b

lu:
Sep-27-2023
Jul-06-2022



::_

:5000

echo. & echo * Show JSON Server.

set cbf-lh=http://localhost:5000
rem set cbf-lh=http://localhost:5000/tasks

exit/b

lu:
Sep-29-2023



::_

:8000

:8080

:8800

:9000

echo. & echo * Localhost port %1.

set cbf-lh=http://localhost:%1

exit/b

lu:
Sep-27-2023
Jul-06-2022



::_

:gsg

:psg

echo. & echo * Pipeline script generator.

rem lu: Jan-11-2019

call an kr

set cbf-url=http://localhost:8080/job/PipelineTest2/pipeline-syntax/

exit/b



:_
:sail
echo. & echo * Sailing.
call pn dr
set cbf-pt=%cbf-pt%\Sailing
exit/b
creation date: Sep-22-2023



:_
:brow
echo. & echo * Browsers.
call pn jona
set cbf-gs=https://docs.google.com/spreadsheets/d/10tSDycsuYNkc2ACvw9YeclwAwKIiHNpX7YN7PzpcV9Y/edit#gid=2066608253
exit/b
creation date: Sep-22-2023



:_
:bl
:blr
echo. & echo * Better life registry.
call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/10q6Lde4zafkKnqeSZq8uhgMI4c82DynKiL3dKAcpqGY/edit#gid=101239705
exit/b
creation date: Sep-25-2023



:_
:otta
echo. & echo * Otta.
call pn
set cbf-url=https://app.otta.com/
exit/b
creation date: Sep-25-2023



:_+ AI Family



::_
:bn
:bing
:new-bing
echo. & echo * New Bing.
call pn c>nul
set cbf-lnk=%cbf-pt%\bing.url
exit/b

set cbf-url=https://www.bing.com/search?q=Bing+AI
https://www.bing.com/search?q=Bing+AI&showconv=1

lu:
Oct-9-2023

Uses up-to-date data.



::_
:bard
echo. & echo * Bard.
set cbf-url=https://bard.google.com/
exit/b
creation date: Sep-7-2023

Best code generator.



::_
:chat
:gp
:gpt
echo. & echo * ChatGPT.
call an edge>nul
set cbf-url=https://chat.openai.com
set cbf-url2=https://chat.openai.com/auth/login
exit/b
creation date: Sep-7-2023

Data is out of date.



::_
:clai
echo. & echo * Claude.ai.
set cbf-url=https://claude.ai/chats
exit/b
creation date: Sep-7-2023



::_
:perp
echo. & echo * Perplexity.ai.
set cbf-url=https://www.perplexity.ai
exit/b
creation date: Sep-20-2023



::_
:jasp
echo. & echo * Jasper.ai.
set cbf-url=https://www.jasper.ai
exit/b
creation date: Sep-20-2023



::_
:ubdu
echo. & echo * Uberduck.ai. Make Music WithAI Vocals.
set cbf-url=https://www.uberduck.ai
exit/b
creation date: Sep-20-2023



:_+ Bash



::_
:bash
echo. & echo * Git bash.
set cbf-app=C:\Program Files\Git\git-bash.exe
rem if exist C:\Users\JJ\AppData\Local\Programs\Git\git-bash.exe set cbf-app=C:\Users\JJ\AppData\Local\Programs\Git\git-bash.exe
exit/b



::_
:brc
echo. & echo * Bash run commands.
call pn home>nul
set cbf-fn=%cbf-pt%\.bashrc
exit/b

rem Note: This points to the %HOME% folder. If that is not defined, it defaults to the
rem user profile folder.



::_
:kbrc
echo. & echo * Keld Bash rc.
call pn d>nul
set cbf-fn=.bashrc-keld-backup
exit/b
rem lu: Sep-01-2022



::_
:gc
:ggc
:ggcf
echo. & echo. * Git global configuration file.
call pn home>nul
set cbf-fn=%cbf-pt%\.gitconfig
exit/b

rem lu: Jan-27-2022
I don't know where the Git system configuration file is located.



::_
:obrc
echo. & echo * Old Bash rc.
call pn 1d>nul
set cbf-fn=%cbf-pt%\Backups\Minishift\.bashrc
exit/b
rem lu: Sep-01-2022



:_+ CBF Testing (skw test-cbf, test cbf, cbf-testing, Batch File Meta Rubric)



::_
:amp
:ambu
:ampe-bug
:wlcbf

echo. & echo * Get ampersands to work in cbf-urls. For example, get "sf wlcbf" to work. It has an ampersand in the cbf-url string.

rem This works! Oct-10-2023 (skw triple hat works, triple caret)
set cbf-url=https://www.bing.com/search?q=Bing+AI^^^&showconv=1

echo.
echo * cbf-url: %cbf-url%%cbf-url2%%cbf-url3%

exit/b

Double quoates didn't work.
set cbf-url=https://www.bing.com/search?q=Bing+AI"&"showconv=1

set cbf-url1=https://www.bing.com/search?q=Bing+AI
set cbf-url2=%%&
set cbf-url3=showconv=1

set cbf-url=https://www.bing.com/search?q=Bing+AI%%38showconv=1

Double backslash doesn't work.
set cbf-url=https://www.bing.com/search?q=Bing+AI\\&showconv=1

Slash doesn't work.
set cbf-url=https://www.bing.com/search?q=Bing+AI/&showconv=1

Backslash doesn't work.
set cbf-url=https://www.bing.com/search?q=Bing+AI\&showconv=1

Original Oct-9-2023 - Doesn't work.
set cbf-url=https://www.bing.com/search?q=Bing+AI&showconv=1

rem lu: Sep-5-2021
rem This is a copy of the original, listed at the bottom.
set cbf-url=https://www.youtube.com/watch?v=w7ejDZ8SWv8&list=WL&index=10&t=831s

set cbf-url=https://www.youtube.com

rem This is the original minus everything to the right of the first ampersand.
rem Result? Same friggin link.
set cbf-url=https://www.youtube.com/watch?v=w7ejDZ8SWv8

rem This is the original.
set cbf-url=https://www.youtube.com/watch?v=w7ejDZ8SWv8&list=WL&index=10&t=831s



::_
:t1
echo. & echo * Test folder.
call pn aa>nul
set cbf-pt=%cbf-pt%\test-folder
exit/b



::_
:t2
echo. & echo * Test 2.
exit/b
rem created: Nov-01-2022



::_
:bog
:bogu
:bogus
:k
echo. & echo * Bogus CBF for error testing.

set cbf-app=xx
set cbf-ex=c:\a\test4.xlsx
set cbf-fn=c:\b\j5.txt
set cbf-pt=d:\Dropbox\IT\share-zone\Relaxing Reading Room\Playbooks-4
set cbf-pd=bogus-test
set cbf-wo=c:\a\test3.docx
set cbf-yt=https://www.youtube.com/watch?v=8WZmIdXZe3Q
set cbf-url=xxx
call pn vft
set cbf-pdf=%cbf-pt%\Access Google's Web Service.pdf
exit/b
rem lu: Mar-31-2022



::_
:obf
echo. & echo * An overcomplicated(?) way to call a batch file.
call pn cbf>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-app=%cbf-pt%\t.bat
exit/b
rem lu: Aug-18-2021



::_
:repa
echo. & echo * Relative path.
set cbf-pt=\test\integration
exit/b
rem lu: Mar-31-2022



::_
:el-test
echo. & echo * Test where error level 4 is coming from.
rem call n vdi>nul
set cbf-fn=%cbf-pt%\Miscellany\message-to-xps.txt
exit/b
rem lu: Jan-31-2022



:_+ EMDO Family (!emdo)



::_
:doj
:dtg
:gci
:atoi
:lbm
:msl
:nes
:nes2
echo. & echo * %1.
call pn emdo
set cbf-fn=%cbf-pt%\%1.asc
exit/b
lu: Oct-3-2023



::_
:sai
echo. & echo * %1.
call pn emdo
set cbf-fn=%cbf-pt%\%1.bul
exit/b
lu: Oct-3-2023



:_
:iw
echo. & echo * Interview preparation code.
call pn it>nul
set cbf-pt=%cbf-pt%\interview-code
exit/b
lu: Oct-9-2023



:_
:ch
set cbf-pd=%1.asc
echo. & echo * %cbf-pd%.
call pn ro
set cbf-fn=%cbf-pt%\%cbf-pd%
exit/b
creation date: Jun-24-2023



:_+ Code Compare Family



::_
:icoco
echo. & echo * Install Code Compare.
set cbf-app=C:\Users\jonat\Dropbox\Software\Code Compare\codecomparepro40.exe
set cbf-fn=%cbf-app%
exit/b
rem lu: Feb-27-2020



::_
:coco
echo. & echo * Run Code compare.
set cbf-app=c:\program files\devart\code compare\codecompare.exe
set cbf-fn=%cbf-app%
exit/b
rem lu: Jan-31-2019



::_
:teco
echo. & echo * Text compare.
set cbf-url=https://text-compare.com/
exit/b

skw Online comparison tool, code compare



:_
:jo
echo. & echo * Jonathan
call pn dr>nul
set cbf-pt=%cbf-pt%\jonathan
exit/b
lu: Oct-13-2023



:_
:mi
echo. & echo * Miscellany
call pn jo>nul
set cbf-pt=%cbf-pt%\miscellany
exit/b
lu: Oct-13-2023



:_+ LeetCode (!fyle)



::_
:ne
:neet
echo. & echo * Neet.
call an br>nul
set cbf-url=https://neetcode.io/practice
exit/b
lu: Oct-16-2023



::_
:le
:leet
echo. & echo * LeetCode.
call an br>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/1cPViBct-hqOPcmxnw7awCmwNFFOqwpmbzbJaNhzwyPE/edit#gid=0
set cbf-url=https://leetcode.com/problemset/all/
exit/b
lu: Oct-13-2023



:_
:til
echo. & echo * TheIncLab.
call pn aa>nul
set cbf-pt=%cbf-pt%\theinclab
exit/b
lu: Oct-17-2023



:_+ Pictures (!fypict)



::_
:fvpi
:fvpict
:hura
set cbf-pd=Favorites
echo. & echo * %cbf-pd%. All time favorite pictures.
call pn pict
set cbf-pt=%cbf-pt%\%cbf-pd%
exit/b



::_

:pict
echo. & echo * Pictures.
set cbf-pt=%dropbox%\pictures
set cbf-ex=%cbf-pt%\pictures.xlsx
exit/b
rem lu: Sep-25-2020



::_
:nex
:nx
echo. & echo * New and exciting.
call pn dr
set cbf-pt=%cbf-pt%\pictures\new and exciting
exit/b



::_

:baar
echo. & echo * Bahamian art.
call pn pict
set cbf-pd=bahamian art
set cbf-pt=%cbf-pt%\%cbf-pd%
exit/b



::_
:wosa
set cbf-pd=Work Safe
echo. & echo * %cbf-pd%.
call pn pict
set cbf-pt=%cbf-pt%\%cbf-pd%
exit/b



::_
:b
:brea
:nppi
set cbf-pd=Breakaway
echo. & echo * %cbf-pd%.
call pn pict
set cbf-pt=%cbf-pt%\%cbf-pd%
exit/b



::_
:fun
:funn
:humo
set cbf-pd=humor
echo. & echo * %cbf-pd%.
call pn pict
set cbf-pt=%cbf-pt%\humor
exit/b



:_+ Temporary Folders



::_
:tmp
echo. & echo * Temporary user folder.
set cbf-pt=%tmp%
exit/b
rem lu: Jan-23-2018
rem This is used as a cbf system default, if none is set. Please DO NOT DELETE.



::_
:temp
echo. & echo * Temporary c: drive folder.
set cbf-pt=c:\temp
exit/b



:_
:phdocs
echo. & echo * Python docs.
set cbf-url=https://docs.python.org/3/
exit/b
lu: Oct-25-2023



:_+ Podcast and ClipJam Folders



::_

:cldr
:clip
:clp

echo. & echo * Clip drive.

set cbf-pt=

if exist "g:\" (
  rem echo. & echo * G exists.
  set cbf-pt=g:\
  exit/b
)

if exist "h:\" (
  rem echo. & echo * H exists.
  set cbf-pt=h:\
  exit/b
)

if "%cbf-pt%" == "" (
  call err "cbf-pt" is undefined. Is the MP3 player plugged in? Oct-30-2023_11_10_AM - %0.bat
  exit/b 1
)

exit/b 3

rem lu: Feb-9-2022



::_

:audi
:cja

call pn clp || exit/b

echo. & echo * Audiobooks.

set cbf-pt=%cbf-pt%audiobooks

exit/b

rem lu: 
Oct-30-2023
Oct-18-2021



::_

:cj
:cl
:cjp
:clip
:clja
:clipjam_podcasts

call pn clp || exit/b

echo. & echo * Podcasts.

set cbf-pt=%cbf-pt%podcasts

exit/b

rem lu: 
Oct-30-2023
Jul-15-2018



::_

:pc

:podcast_folder

echo. & echo * Podcaster.

rem lu: Jun-24-2020

set cbf-pt=%my documents%\gpodder\downloads

set cbf-app=C:\Program Files (x86)\gPodder\bin\gpodder.exe

exit/b

     

::_
:sa
:stag
:staging-area
echo. & echo * Staging area.
set cbf-pt=%my documents%\mp3 staging area
exit/b
rem lu: Aug-20-2022



::_
:ec
:exco
:mec
echo. & echo * Extra content - MP3.
set cbf-pt=%my documents%\mp3 extra content
exit/b
rem lu: Jan-26-2022



:_+ Language Functions Family (!fylfn) (skw language-functions-series-jj)



::_
:dnhw
set cbf-pd=hello-world
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.cs
exit/b
lu: Oct-31-2023



::_
:dnfz
set cbf-pd=fizz
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\fizz-csharp\Program.cs
exit/b
lu: Oct-31-2023



::_
:ggfz
set cbf-pd=fizz
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.go
exit/b
lu: 
Nov-1-2023



::_
:ggrs
set cbf-pd=reverse-string
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.go
exit/b
lu: 
Nov-1-2023



::_
:dnrs
set cbf-pd=reverse-string
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\reverse-string-csharp\Program.cs
exit/b
lu: Oct-31-2023



::_
:ndfz
set cbf-pd=fizz
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.js
exit/b
lu: Oct-31-2023



::_
:ndrs
set cbf-pd=reverse-string
echo. & echo * %cbf-pd%. Reverses a string the manual way, without using a built-in function.
call pn d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.js
exit/b
lu: Oct-31-2023



::_
:phfz
set cbf-pd=fizz
echo. & echo * %cbf-pd%.
call pn d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.py
exit/b
lu: Oct-31-2023



:_

:post

echo. & echo * Postman.

rem lu: Jun-14-2018

rem set cbf-app=C:\Users\jonat\AppData\Local\Postman\Update.exe --processStart "Postman.exe"
set cbf-app=C:\Users\jonat\AppData\Local\Postman\Postman.exe

set cbf-url=https://web.postman.com

exit/b



:_
:scsh
:ss
echo. & echo * Screenshots folder.
call pn up>nul
set cbf-pt=%cbf-pt%\pictures\screenshots
exit/b
creation date: Jul-12-2023



:_+ Find a Job Family (!fycfj)



::_
:prat
set cbf-pd=python-rest-api-tutorial
echo. & echo * %cbf-pd%.
call pn it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=%cbf-gh%/%cbf-pd%
set cbf-yt=https://www.youtube.com/watch?v=qbLc5a9jdXo
set cbf-url=https://api.stackexchange.com
exit/b
lu: Oct-31-2023



::_
:nwe
echo. & echo * node-with-express-fireship-tutorial. Node.js Quickstart
call pn it>nul
set cbf-pt=%cbf-pt%\node-with-express-fireship-tutorial
set cbf-gh=https://github.com/jonathans-razor/node-with-express-fireship-tutorial
set cbf-url=https://fireship.io/courses/javascript/node-basics
set cbf-yt=https://www.youtube.com/watch?v=ENrzD9HAZK4
exit/b
lu: Oct-17-2023



::_
:d
:dsa
echo. & echo * Data structures and algorithms.
call pn it>nul
set cbf-pt=%cbf-pt%\dsa
set cbf-gh=https://github.com/jonathans-razor/data-structures-and-algorithms
exit/b
lu: Oct-10-2023



::_
:acc
echo. & echo * Angular Crash Course.
call pn it>nul
set cbf-pt=%cbf-pt%\angular-crash-course-by-traversy-media
set cbf-gho=https://github.com/bradtraversy/angular-crash-2021
set cbf-gh=https://github.com/jonathans-razor/angular-crash-course-by-traversy-media
set cbf-yt=https://www.youtube.com/watch?v=3dHNOWTI7H8
exit/b
lu: Sep-29-2023



:_
:d3
set cbf-pd=d3-js-data-visualization-full-course
echo. & echo * %cbf-pd%.
call pn it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=https://github.com/jonathans-razor/%cbf-pd%

exit/b
lu:
Nov-8-2023



:_

:cfgh
:ghcf

echo. & echo * Go to the current folder's GitHub repository.

call g is-git-folder>nul

if errorlevel 1 (
  call err Not a git folder.
  exit/b 1
)

call m distill-file-folder %cd%>nul

set cbf-url=https://github.com/jonathans-razor/%cbf-distilled-file-folder%

exit/b

lu:
Nov-10-2023



:_

:sett

echo. & echo * Go to the setting page of the current folder's GitHub repository.

call g is-git-folder>nul

if errorlevel 1 (
  call err Not a git folder.
  exit/b 1
)

call m distill-file-folder %cd%>nul

set cbf-url=https://github.com/jonathans-razor/%cbf-distilled-file-folder%/settings

exit/b

lu:
Nov-10-2023



:_
:cska
set cbf-pd=css-kata
echo. & echo * %cbf-pd%. 
call pn it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=%cbf-gh%/%cbf-pd%
set cbf-yt=https://www.youtube.com/watch?v=Z4pCqK-V_Wo
exit/b
lu: 
Nov-13-2023



:_
:cid
set cbf-pd=Comodo Ice Dragon.
echo. & echo * %cbf-pd%. 
set cbf-app=C:\Program Files\Comodo\IceDragon\icedragon.exe
exit/b
lu: 
Nov-13-2023



:_ (!efn)

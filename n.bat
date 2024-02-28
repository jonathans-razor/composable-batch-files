:_ (!n)

@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~1" == "?" goto help

ver>nul

goto %1



:_
:help

cls

echo. & echo * Nicknames dictionary. This can be thought of as a large configuration ^
file, batch file database or data layer that sets enviornment variables. ^
The idea is that you register your folder, file, etc. here and then you can ^
easily access it via your chosen alias.

echo. & echo In the function block corresponding to the label, you can set any or all ^
of the CBF environment variables. Typically this batch file would be called ^
by a different batch file looking to set a particular CBF environment variable.

echo. & echo   Usage: %0 [single parameter]
echo. & echo   Parameter 1: Alias to run assignment for.

echo. & echo * Example(s):
echo   %0 cbf

exit/b



:_
;Metadata: Track Size (!tsn)

     Date      Lines      Bytes   Functs  Notes
 -----------  ------  ---------  -------  ----------------------------------------------

:Feb-21-2024   6,424     79,638      422

: Jan-4-2024   4,312     59,945      320

: Jan-3-2024   4,309     59,898      320

: Nov-3-2023   4,134     55,731      296

:Jul-10-2023   2,443     30,655        168

: Jul-3-2023   2,183     27,420        150  Finished cleaning up CBF.

:Jun-28-2023     839     11,341         61



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ ASCII Art Family (!fcasar)



::_
:ascii-art-1
:ascii-art-2
:ascii-art-3
:ascii-art-4

echo. & echo * ASCII Art - %1.
call n cbf
set cbf-graphic=%cbf-pt%\%1.txt

exit/b

lu:
Feb-23-2024



::_
:ascii-art-separator-feb-2024

echo. & echo * ASCII Art - %1.
call n cbf
set cbf-graphic=%cbf-pt%\ascii-art-separator-feb-2024.txt

exit/b

lu:
Feb-22-2024



::_
:ascii-art-separator-2024

echo. & echo * ASCII Art - %1.
call n cbf>nul
set cbf-graphic=%cbf-pt%\ascii-art-separator-2024.txt

exit/b

lu:
Feb-22-2024



::_
:ascii-art-separator-2023

echo. & echo * ASCII Art - %1.
call n cbf>nul
set cbf-graphic=%cbf-pt%\ascii-art-separator-2023.txt

exit/b

lu:
Sep-20-2023



::_
:ascii-art-separator-2022

echo. & echo * ASCII Art - %1.
call n cbf>nul
set cbf-graphic=%cbf-pt%\ascii-art-separator-2022.txt

exit/b

lu:
Sep-20-2023



::_
:ascii-art-error

echo. & echo * ASCII Art - %1.

call n cbf

set cbf-message-graphic=%cbf-pt%\ascii-art-error.txt

exit/b

lu: Sep-22-2022



::_
:ascii-art-notice

echo. & echo * ASCII Art - %1.

call n cbf
set cbf-message-graphic=%cbf-pt%\ascii-art-notice.txt

exit/b

lu:
Dec-29-2023



::_
:ascii_art_sailboat
:aass

echo. & echo * ASCII Art - %1.

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_sailboat.txt

exit/b

lu:
Nov-25-2019


::_
:ascii_art_sea_scene
:aass

echo. & echo * ASCII Art - %1.

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_sea_scene.txt

exit/b

lu:
Nov-6-2019



::_
:ascii_art_scuba
:aa_sc

echo. & echo * Ascii art - scuba.

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_scuba.txt

exit/b

lu:
Nov-6-2019



::_
:parrot

echo. & echo * Parrot.

set cbf-fn=%composable-batch-files%\parrot.txt

exit/b

lu:
Apr-1-2019



::_
:ascii_art

echo. & echo * ASCII art.

set cbf-fn=%composable-batch-files%\ascii_art.txt

exit/b

lu:
Apr-1-2019



::_
:ascii_art_2

echo. & echo * ASCII art.

set cbf-fn=%composable-batch-files%\ascii_art_2.txt

exit/b

lu:
Apr-1-2019



:_+ Editors



::_
:no
:note

echo. & echo * Notepad.

rem This is used as a cbf system default, if none is set. Please DO NOT DELETE.
set cbf-app=c:\windows\system32\notepad.exe

exit/b

lu:
Jan-24-2018



::_
:wp
:wopa

echo. & echo * WordPad.

set cbf-app=c:\program files\windows nt\accessories\wordpad.exe

exit/b

lu:
Aug-9-2018



::_
:npp

echo. & echo * Notepad++.

rem Determine installation path.

if exist "c:\program files\notepad++\notepad++.exe" set cbf-app=c:\program files\notepad++\notepad++.exe

if exist "c:\program files (x86)\notepad++\notepad++.exe" set cbf-app=c:\program files (x86)\notepad++\notepad++.exe

if not exist "%cbf-app%" set cbf-app=W:\Notepad++V7.8.4\Notepad++.exe

if not exist "%cbf-app%" (
  echo. & echo * Error: Notepad++ is not installed.
  exit/b 2
)

exit/b

lu:
Mar-9-2018



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

set cbf-app=C:\Program Files\Sublime Text 3\sublime_text.exe

exit/b

lu:
Oct-9-2019



::_
:viva

echo. & echo * Vivaldi.

set cbf-app=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

exit/b

lu:
Jul-17-2018



:_
:feed

echo. & echo * Feed reader sample.

set cbf-pt=%cbf-repo%\feedreader

set cbf-url=https://github.com/codehollow/FeedReader.git

exit/b

lu:
Jul-17-2018



:_
:gral

echo. & echo * Greek Alphabet.

call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1tbV5cVzO5_5zTt4d4pLmohx1DeacuzFB3U5cb19Pcm0/edit#gid=1236387935

exit/b

lu:
Sep-25-2023



:_
:miss

echo. & echo * Mission.

call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1d1vwKHe2RjbkqmVt8trayVu7YKTzpeutBk2aXa2nxAg/edit#gid=847203255

exit/b

lu:
Sep-25-2023



:_
:daap

echo. & echo * Dating apps.

call n exs

set cbf-ex=%cbf-pt%\dating apps.xlsx
call ap br>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/1y4CQHUdMAQrZu_qYtKcGUm-qtD93-QNAs8upLvcr-eM/edit#gid=0

exit/b

lu:
Oct-18-2023
Jan-25-2023



:_
:ear
:earx
:em
:emai

echo. & echo * Email accounts registrar.

call n exs>nul
set cbf-ex=%cbf-pt%\email accounts register.xlsx
set cbf-gs=https://docs.google.com/spreadsheets/d/1SKXiQZX4zrFkllI3hQAcWsNuJ5ULXkmiazmkcz9MDm0/edit#gid=1544547210

exit/b

lu:
Nov-7-2022



:_+ Base64 Family (!fccb64)



::_
:b64
:base64
:b64e

echo. & echo * Base64 Encode.

set cbf-url=https://www.base64encode.org/

exit/b

lu:
Mar-08-2023



::_
:b64d

echo. & echo * Base64 Decode.

set cbf-url=https://www.base64decode.org/

exit/b

lu:
Mar-08-2023



:_
:ssh

echo. & echo * SSH folder.

call n h>nul

set cbf-pt=%cbf-pt%\.ssh

exit/b

lu:
Mar-28-2023



;+ Code Keepers Family (!fcck)



::_
:ck
:ckan
:ckba
:ckcs
:ckjv

echo. & echo * %1 code keepers.

call n it>nul
set cbf-pt=%cbf-pt%\code-keepers
set cbf-fn=%cbf-pt%\%1.asc

exit/b

lu:
May-12-2022

Ansible, Bash, C#, Java Code Keepers



::_
:ckgr
:ckje
:ckjf
:jf

echo. & echo * Groovy/Jenkinsfile code keepers.

call n vdi>nul

set cbf-pt=%cbf-pt%\code-keepers
set cbf-pt=%cbf-pt%\Jenkinsfiles
set cbf-fn=%cbf-pt%\%cbf-pd%\ckjf.asc

exit/b

lu:
Feb-25-2023

skw:
groovy code keepers



::_
:bcs
:bscs
:chsh

echo. & echo * Bash scripting cheat sheet.

set cbf-url=https://devhints.io/bash

exit/b

lu:
Mar-01-2023



:_
:st23

echo. & echo * Summer trip 2023.

call n tran
set cbf-pt=%cbf-pt%\summer-trip-2023

exit/b

lu:
Apr-2-2023



:_
:ga

echo. & echo * Gettysburg Address.

call n cbf>nul
set cbf-fn=%cbf-pt%\gettysburg-address.txt

exit/b

lu:
Apr-20-2023



:_
:cdr

echo. & echo * C: drive.

set cbf-pt=c:\

exit/b



:_
:prep

echo. & echo * Prepare.

call n exs>nul
set cbf-ex=%cbf-pt%\prepare.xlsx

exit/b

lu:
May-30-2023



:_
:shwe
:shoe
:snwe

echo. & echo * Shoe Weights.

call n exs>nul
set cbf-ex=%cbf-pt%\Shoe Weights.xlsx
call an br

set cbf-gs=https://docs.google.com/spreadsheets/d/1_F2hoEwMmbB9B8Oqt4cV1O-4T_6gAyDaJdoX4-OORYU/edit#gid=523644252           

exit/b

lu:
Jun-6-2023



:_
:pres

echo. & echo * my-presidential-voting-history.

call n exs>nul
set cbf-ex=%cbf-pt%\my-presidential-voting-history.xlsx

exit/b

lu:
Jun-11-2023



:_
:repo

set cbf-pt=c:\repos
if exist "c:\GitHub Repositories" set cbf-pt=c:\GitHub Repositories
if exist "d:\aa\repositories" set cbf-pt=d:\aa\repositories
if exist "c:\aa\repositories" set cbf-pt=c:\aa\repositories
if exist "c:\repositories" set cbf-pt=c:\repositories

echo. & echo * Set repository folder to "%cbf-pt%".

exit/b



:_
:pete0

echo. & echo * %1.

call n dbf
set cbf-fn=%cbf-pt%\pete.asc

exit/b

lu:
Jun-20-2023



:_
:tol
:tsh

echo. & echo * Tysons OneLife Fitness.
set cbf-url=https://www.mysportandhealth.com

exit/b

lu:
Jun-26-2023



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



:_+ Windows Folders Family (!fcwin)



::_
:dl
:dn
:down

echo. & echo * Downloads folder.

set cbf-pt=%userprofile%\downloads

if exist w:\downloads set cbf-pt=w:\downloads

exit/b

lu:
Jun-7-2018



::_
:rece

echo. & echo * Recents folder.

set cbf-pt=%appdata%\Microsoft\Windows\Recent

exit/b

lu:
Nov-19-2019



::_
:stme

echo. & echo * Open Windows start menu folder.

set cbf-pt=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu

exit/b

lu:
Mar-27-2020



::_
:star
:start

echo. & echo * Windows Startup folder.

set cbf-pt=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

exit/b

lu:
May-9-2017


::_
:udocs

echo. & echo * Userprofile Documents folder.

set cbf-pt=%userprofile%\documents

exit/b

lu:
Jul-9-2018



::_
:desk
:desktop

echo. & echo * Windows desktop.

set cbf-pt=%userprofile%\desktop

call n 1d
if exist Desktop set cbf-pt=%cbf-pt%\Desktop

exit/b

lu:
Dec-27-2018



::_
:32
:sys32

echo. & echo * Windows system 32.

call n cbf>nul

set cbf-fn=%cbf-pt%\32.asc

set cbf-pt=c:\windows\system32

exit/b

lu:
Dec-27-2018



::_
:win
:wind

echo. & echo * Windows.

set cbf-pt=c:\windows

exit/b

lu:
Feb-5-2019



::_
:winu
:wiup

echo. & echo * Windows update.

set cbf-url=http://windowsupdate.microsoft.com

exit/b

lu:
Jul-10-2023



:_
:8

echo. & echo * 8.

call n bel>nul

set cbf-fn=%cbf-pt%\8.bat

exit/b

lu:
Jun-1-2022



:_
:sasu

echo. & echo * Savannah summary.

call n ro>nul

set cbf-fn=%cbf-pt%\%cbf-pd%\savannah summary.txt

exit/b

lu:
Jun-9-2022



:_+ Messaging



::_
:mtx
:mtxps

echo. & echo * Message to XPS.

call n ro>nul

set cbf-fn=%cbf-pt%\message-to-xps.txt

exit/b

lu: 
Jan-31-2022



::_
:mt7

echo. & echo * Message to SP7.

call n ro>nul

set cbf-fn=%cbf-pt%\message-to-sp7.txt

exit/b

lu: 
Jan-11-2024



::_
:mtg
:meet

echo. & echo * Meeting.txt.

call n ro>nul

set cbf-fn=%cbf-pt%\meeting.txt

exit/b



:_
:pv

echo. & echo * PV CBFs.

call n bel

set cbf-fn=%cbf-pt%\pv.bat

exit/b

lu:
May-24-2023



:_+ Browsers (!brows)



::_
:br
:brav

echo. & echo * Brave.

set cbf-app=C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe

exit/b

lu:
Nov-3-2021



::_
:jone
:kr

rem echo. & echo * Chrome.

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

lu:
Jan-24-2018



::_
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

rem Determine installation path.

set cbf-app=

if exist "%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe" set cbf-app=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

if "%cbf-app%" == "" (
  echo.
  echo * Error: %fp% is not installed. ****
  exit/b 2
)

exit/b

lu:
Feb-12-2020



::_
:ed
:edge

echo. & echo * Microsoft Edge browser.

set cbf-app=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe

exit/b

lu:
Feb-7-2018

rem:
It seems like Edge can save and edit PDF files.



::_
:ie

echo. & echo * Internet Explorer.

rem This is used as the system default browser, if none is set. Please DO NOT DELETE.

set cbf-app=c:\program files\internet explorer\iexplore.exe

exit/b

lu:
Jan-24-2018



::_
:op

echo. & echo * Opera.

set cbf-app=c:\program files\opera\launcher.exe
set cbf-pt=C:\ProgramData\Microsoft\Windows\Start Menu\Programs

exit/b

lu: 
Sep-25-2023
Feb-13-2018



:_+ Root Drive



::_
:cdr

echo. & echo * Root of the C Drive.

set cbf-pt=c:\

exit/b

lu:
Feb-5-2018



::_
:gdr

echo. & echo * G drive.

set cbf-pt=g:\

exit/b

lu:
Jul-15-2019



::_
:hdr

echo. & echo * H drive.

set cbf-pt=h:\

exit/b

lu:
Jul-1-2019



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



:_+ J Files (!fccj)



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

call n a>nul
set cbf-fn=%cbf-pt%\j1.xml

exit/b



::_
:j5
:j6

echo. & echo * %1.txt. A more permanent recyclable file.
call n pm>nul
set cbf-fn=%cbf-pt%\%1.txt

exit/b



::_
:npt

echo. & echo * NP text.

call n 1m>nul
set cbf-fn=%cbf-pt%\%1.txt

exit/b



::_
:np2t

echo. & echo * NP2 text.

call n 1m>nul
set cbf-fn=%cbf-pt%\%1.txt

exit/b



::_
:time

echo. & echo * Time.

call n tmp>nul
set cbf-fn=%cbf-pt%\%1.txt

exit/b



::_
:date

echo. & echo * Date.

call n tmp>nul
set cbf-fn=%cbf-pt%\%1.txt

exit/b



::_
:dtt

echo. & echo * Date and time.

call n tmp>nul
set cbf-fn=%cbf-pt%\%1.txt

exit/b



:_+ Blank Documents



::_
:bed

echo. & echo * Blank Excel document.

call n c>nul
set cbf-ex=%cbf-pt%\blank.xlsx

exit/b

lu:
Mar-22-2020

skw:
blank excel document
blank excel file



::_
:bpd

echo. & echo * Blank PowerPoint document.

call n c>nul
set cbf-ppt=%cbf-pt%\blank.pptx

exit/b

lu:
Oct-25-2020



::_
:btd

echo. & echo * Blank txt document.

call n c>nul
set cbf-fn=%cbf-pt%\blank.txt

exit/b

lu:
May-4-2022



::_
:bwd

echo. & echo * Blank Word document.

call n c>nul
set cbf-wo=%cbf-pt%\blank.docx

exit/b

lu:
May-4-2022



:_
:tag

echo. & echo * Open the MP3 tagging program.

set cbf-app=C:\Program Files\Mp3tag\mp3tag.exe

exit/b



:_
:vft

echo. & echo * Various file types.

set cbf-pt=%dropbox%\it\various file types

exit/b

lu:
Jun-8-2018



:_+ Microsoft Products



::_
:ex

echo. & echo * Excel.

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

lu:
Jan-3-2019



::_
:pp

echo. & echo * PowerPoint.

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

lu:
Oct-25-2020



::_
:wo

echo. & echo * Word.

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

lu:
Jan-24-2019



:_ + Git



::_
:git_bin
:git_user_bin
:gu
:gub
:sugi
:super_bin
:super_git

echo. & echo * Git power user bin. Loaded with utilities.

call n cbf>nul

set cbf-fn=%cbf-pt%\gub.asc

set cbf-pt=%localappdata%\Programs\Git\usr\bin

set cbf-url=http://www.maizure.org/projects/decoded-gnu-coreutils

if exist "c:\Program Files\Git\usr\bin\" set cbf-pt=c:\Program Files\Git\usr\bin

exit/b

lu:
Oct-23-2020

skw:
git super location
git super path
git utilities
git user bin
github super
super git
super path



::_
:gh
:git

echo. & echo * Git.

set cbf-pt=%localappdata%\Programs\Git

set cbf-url=https://github.com

exit/b

lu:
Dec-6-2018



::_
:glab

echo. & echo * GitLab.

set cbf-url=https://gitlab.com

exit/b



::_
:gigu

echo. & echo * Git gui.

set cbf-app=C:\Program Files\Git\cmd\git-gui.exe

if exist C:\Users\JJones2\AppData\Local\Programs\Git\cmd\git-gui.exe set cbf-app=C:\Users\JJones2\AppData\Local\Programs\Git\cmd\git-gui.exe

set cbf-fn=%cbf-app%

exit/b

lu:
Aug-1-2018



:_+ Excel



::_
:exs
:excs

echo. & echo * Excel files.

call n sv

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

lu:
May-26-2019

certified monogamous CBF



::_
:ldsv

echo. & echo * Local drive Savannah.

set cbf-pt=%savannah%

exit/b

lu:
Jan-25-2021



:_+ Belfry



::_
:bel
:belf

echo. & echo * Belfry.

set cbf-pt=%dropbox%\savannah\belfry

exit/b

lu:
Aug-24-2018



::_
:ldbelf

echo. & echo * Local drive Belfy.

set cbf-pt=%savannah%\belfry

exit/b

lu: 
Mar-1-2020



:_+ Reach Out



::_
:ro
:drro

echo. & echo * Reach out.

set cbf-pt=%dropbox%\savannah\reach out
set cbf-fn=%cbf-pt%\message to ipad.txt

exit/b

lu:
Jun-30-2023



::_
:ldro
:rold

echo. & echo * Reach out local drive.

set cbf-pt=%my documents%\savannah\reach out

exit/b

lu:
Jun-30-2023



:_+ Multi-Edit Configuration Files



::_
:mecfg

echo. & echo * Multi-Edit Config file folder.

set cbf-pt=%appdata%\Multi Edit Software\Multi-Edit\11\Config.04

exit/b

lu:
Dec-7-2018

skw:
Multi-Edit Config Files



::_
:drmecfg
:mecfg_dr

echo. & echo * Dropbox Multi-Edit Config files.

set cbf-pt=%dropbox%\Multi-Edit_2008_Config_Files

exit/b

lu:
Dec-7-2018



::_
:bumecfg
:mecfg_bu

echo. & echo * Multi-Edit Config Files Backups.

set cbf-pt=%dropbox%\Backups\Multi-Edit Config Files

exit/b

lu:
Jan-3-2018



::_
:smecfg

echo. & echo * Multi-Edit Config file folder in Share-Zone.

set cbf-pt=%share-zone%\Multi-Edit_2008_Config_Files

exit/b

lu:
Feb-13-2019



:_+ Visual Studio Code



::_
:vco
:vcw

echo. & echo * Visual Studio Code in the Cloud, on the Web, online.

set cbf-url=https://vscode.dev

exit/b



::_
:code
:lnk-vsc
:vc

echo. & echo * Visual Studio Code.

set cbf-app=%localappdata%\Programs\Microsoft VS Code\Code.exe

if exist "C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe" set cbf-app=C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe

if exist "%localappdata%\Programs\Microsoft VS Code\Code.exe" set cbf-app=%localappdata%\Programs\Microsoft VS Code\Code.exe

if exist "C:\Program Files\Microsoft VS Code\Code.exe" set cbf-app=C:\Program Files\Microsoft VS Code\Code.exe

if exist "C:\Users\JJONES4\AppData\Local\Programs\Microsoft VS Code\bin\code" set cbf-app=C:\Users\JJONES4\AppData\Local\Programs\Microsoft VS Code\bin\code

rem set cbf-app=C:\Program Files\Microsoft VS Code\Code.exe
rem set cbf-fn=C:\Users\JJones2\AppData\Local\Programs\Microsoft VS Code\Code.exe
rem C:\Users\JJones2\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk

set cbf-gh=https://github.com/Microsoft/vscode/issues?q=is%%3Aopen+is%%3Aissue+label%%3Afeature-request+sort%%3Areactions-%%2B1-desc

exit/b

Footnote
>< >< ><

lu:
Feb-23-2022

To run Visual Studio Code in a particular folder type: "code ."



::_
:vsc_ws

echo. & echo * Visual Studio Code workspace.

call tdp ma>nul

set cbf-pt=%cd%

set cbf-fn=%cbf-pt%\riverstone_vscode.code-workspace

exit/b

lu:
Jul-1-2020



:_+ Backups Family



::_
:mibu
:missbu

echo. & echo * Mission backups.

set cbf-pt=%dropbox%\backups\mission

exit/b

lu:
Jan-8-2020



::_
:svbu

echo. & echo * Savannah backups.

set cbf-pt=%dropbox%\backups\savannah

exit/b

lu:
Jan-8-2020



::_
:bu

echo. & echo * Backups.

call n dr

set cbf-pt=%cbf-pt%\Backups
if exist %dropbox%\backups set cbf-pt=%dropbox%\backups

exit/b



:_+ Windows Application Family (!fcwin)



::_
:magn

echo. & echo * Start Windows Magnifier.

set cbf-app=%windir%\system32\magnify.exe

exit/b

lu:
Oct-6-2023



::_
:clean
:dicl

echo. & echo * Disk Cleanup.

set cbf-app=%windir%\system32\cleanmgr.exe

exit/b

lu:
May-06-2022



::_
:shot
:snto

echo. & echo * Snipping tool.

set cbf-app=%windir%\system32\SnippingTool.exe

exit/b

lu:
Feb-4-2019

skw:
clip
screen shot



::_
:copa

echo. & echo * Control panel.

set cbf-app=%systemroot%\system32\control.exe

set cbf-fn=%cbf-app%

exit/b

lu:
Jan-31-2019



::_
:sk
:skyp
:skype

echo. & echo * Skype for business.

set cbf-app=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business.lnk

set cbf-fn=%cbf-app%

exit/b

lu:
Jan-18-2019



::_
:zoomit

echo. & echo * ZoomIt

call %0 pounders

set cbf-app=%cbf-pt%\zoomit.exe

if not exist %cbf-app% set cbf-app=%share-zone%\copied software\zoomit.exe

set cbf-fn=%cbf-app%

exit/b

lu:
Dec-14-2018


::_
:add_to_path
:add_path
:addpath
:env
:envi
:oden
:odenv

echo. & echo * Environment variables information.

set cbf-app=%systemroot%\system32\SystemPropertiesAdvanced.exe
rem call n exs>nul
set cbf-ex=%cbf-pt%\My Official Inter-Computer Environment Variables.xlsx
set cbf-fn=%cbf-app%

exit/b

rem set cbf-fn2=%cbf-pt%\Environment Variables from ATOI on Aug-5-2021.txt
rem set cbf-fn3=%cbf-pt%\Environment Variables from XAM on Aug-5-2021.txt

lu:
Apr-29-2019

skw:
advanced system settings
edit path
edit you path
edit env
set env
system properties



::_
:serv
:svc
:svcs
:wsvc

echo. & echo * Start Windows Services viewer.

set cbf-app=c:\windows\system32\services.msc

exit/b

lu:
May-11-2017



::_
:shde

echo. & echo * Show desktop.

set cbf-pt=%userprofile%\desktop

set cbf-fn=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

exit/b

lu:
Jun-13-2018



::_
:sow

echo. & echo * Show open windows.

set cbf-fn=%appdata%\microsoft\internet explorer\quick launch\window switcher.lnk

exit/b

lu:
Jun-13-2018



:_
:gosh

echo. & echo * Google Sheets.

set cbf-url=https://docs.google.com/spreadsheets/u/2/

exit/b

lu:
Jul-6-2023



:_
:ghas

echo. & echo * GitHub advanced search.

set cbf-gh=https://github.com/search/advanced?

exit/b

lu:
Jul-6-2023



:_
:tran

echo. & echo * Transfer folder.

set cbf-pt=%dropbox%\Transfer

exit/b

lu:
Oct-7-2019



:_+ Home Folders



::_
:jdk
:jdkh
:jh
:jvh
:jv_h
:java_home

echo. & echo * Java Home.

set cbf-pt=%java_home%

exit/b

lu:
Dec-14-2018

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

C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\Program Files\Java\jdk1.8.0_241\bin\java.exe

Java Home on XPS Nov-24-2020. I removed the first 2.

C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
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

set cbf-pt=%jre_home%

exit/b

lu:
Apr-7-2021



::_
:dh
:docker-home

echo. & echo * Docker home.

call n home>nul
set cbf-pt=%cbf-pt%\.docker
set cbf-fn=%cbf-pt%\config.json

exit/b

lu:
Aug-15-2022



::_
:nh
:node_home

echo. & echo * Node home.

set cbf-pt=%node_home%

exit/b

lu:
Feb-11-2019



::_
:m2r

set fp=M2 or Maven2 repository.

set cbf-url=https://mvnrepository.com

exit/b

lu:
Jul-7-2017



::_
:mh
:mvh

echo. & echo * Maven Home.

rem This is useful for new installs.

set cbf-pt=%mvn_home%

exit/b

lu:
Jun-29-2022

Is mvn_home correct or should it be maven_home?



::_
:m2
:m2p

echo. & echo * M2 or Maven2.

set cbf-pt=%userprofile%\.m2

exit/b

lu:
Jul-7-2017



::_
:m2h

echo. & echo * M2 Home as defined in the Env GUI settings, which evaluates to the same as my m2 cbf.

set cbf-pt=%m2_home%

exit/b

lu:
Jun-29-2022



::_
:aws
:aws_cfg
:aws_hm
:aws_home

echo. & echo * AWS configuration.

set cbf-fn=%userprofile%\.aws\credentials

set cbf-pt=%userprofile%\.aws

set cbf-pt2=%share-zone%\aws cli

exit/b

lu:
Nov-6-2018



::_
:je_hm
:je_home

echo. & echo * Jenkins home

call %0 home

set cbf-pt=%cbf-pt%\.jenkins

exit/b

lu:
Dec-15-2018



::_
:hm
:home

echo. & echo * Home. Note: this could be defined in environment variables OR in startup scripts.

set cbf-pt=%home%

if "%cbf-pt%" == "" set cbf-pt=%HOMEDRIVE%\%HOMEPATH%

exit/b

lu:
Mar-1-2022



::_
:u
:up
:user
:usr

echo. & echo * User profile.

set cbf-pt=%userprofile%

exit/b

lu:
Mar-1-2022



::_
:wa

echo. & echo * Windows Apps.

set cbf-pt=%localappdata%\Microsoft\WindowsApps

exit/b

lu:
Dec-19-2018



:_
:foo

echo. & echo * Foo takes you to the bar folder. Of course it does.

set cbf-pt=C:\Program Files\MSBuild\Microsoft\Windows Workflow Foundation\bar

exit/b

lu:
Aug-10-2018



:_
:gead
:gett

echo. & echo * The Gettysburg Address.

set cbf-skw=The Gettysburg Address
set cbf-fn=%composable-batch-files%\Gettysburg_Address.txt

exit/b

lu:
Aug-13-2018



:_
:fox

echo. & echo * Fox.

set cbf-url=https://www.foxnews.com

exit/b

lu:
Jun-4-2020



:_+ IT



::_
:it-old

echo. & echo * IT.

set cbf-fn=%share-zone%\it.asc

set cbf-pt=%dropbox%\it\

exit/b

lu:
May-10-2022



::_
:i2
:it2

echo. & echo * IT.

call n pm>nul
set cbf-fn=%cbf-pt%\it2.asc

set cbf-pt=%dropbox%\it\

exit/b

lu:
May-10-2022



::_
:it

echo. & echo * IT.

set cbf-gh=https://github.com/jonathans-razor
set cbf-pt=%dropbox%\it

exit/b

lu:
Jun-20-2023



::_
:it3

echo. & echo * IT.

set cbf-gh=https://github.com/jonathans-razor
set cbf-pt=%dropbox%\it
set cbf-fn=%cbf-pt%\miscellany\it3.asc

exit/b

lu: 
Oct-31-2023



:_
:rt

echo. & echo * Root.

set cbf-gd=https://docs.google.com/document/u/0/
set cbf-gs=https://docs.google.com/spreadsheets/u/0/

exit/b

lu:
Jul-14-2023



:_
:inco
:iw

echo. & echo * Interview code.

call n dr>nul
set cbf-pt=%cbf-pt%\it\interview-code
set cbf-gh=https://github.com/jonathans-razor/interview-code
set cbf-url=https://www.youtube.com/playlist?list=PLV-KEAAMgUZB0reX0lqWdun75FrvRmG4O

exit/b

lu:
Jul-18-2023



:_+ QuickLauncher



::_
:qlld

echo. & echo * Quickla on local.

set cbf-pt=C:\Users\jonat\Documents\savannah\cmac\Quickla-for-Multi-Edit

exit/b

lu:
May-24-2023

Note: I edit Quickla in Dropbox but the official GitHub repository is on local.



::_
:drql
:ql
:qldr

echo. & echo * Quickla CMAC on Dropbox.

set cbf-pt=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit
set cbf-gh=https://github.com/jonathans-razor/Quickla-for-Multi-Edit.git

exit/b

lu:
Jun-27-2023



:_
:dr
:drop

echo. & echo * Dropbox.

set cbf-pt=%dropbox%
if exist d:\Dropbox set cbf-pt=d:\Dropbox
set cbf-url=http://www.dropbox.com

exit/b

lu:
Sep-9-2021



:_
:arp

echo. & echo * Add or Remove Programs.

set cbf-app=appwiz.cpl

exit/b

lu:
Apr-17-2019



:_+ Shortcuts



::_
:bases
:bashs
:sh
:shor
:taba
:taskbar

echo. & echo * Base shortcuts.

set cbf-pt=%dropbox%\it\shortcuts
if exist w: set cbf-pt=w:\shortcuts

exit/b

lu:
Feb-28-2024
Jan-9-2020

skw:
taskbar
base icons



::_
:bish

echo. & echo * Big shortcuts.

call n s>nul

set cbf-pd=big shortcuts

set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b

lu:
Jul-2-2021



:_ + Appdata



::_
:ad
:apda
:appd
:appdata

echo. & echo * App data.

set cbf-pt=%appdata%

exit/b



::_
:lad

echo. & echo * Local app data.

set cbf-pt=%localappdata%

exit/b

lu:
Dec-4-2018



::_
:dtbg

echo. & echo * Desktop background.

set cbf-pt=%localappdata%\microsoft\windows\themes\roamedthemefiles\desktopbackground

exit/b

lu:
Feb-24-2020

:+ desktopbackground

::C:\%appdata%

::%localappdata%\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

::C:\Users\      jonat\AppData\Local\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

::C:\Users\jrj.GCITECH\AppData\Local\Microsoft\Windows\Themes\Snowy Nig\DesktopBackground



:+_+ My Machines



::_
:sp7

echo. & echo * sp7.asc.

call n ro>nul
set cbf-fn=%cbf-pt%\sp7.asc

exit/b



::_
:ipad

echo. & echo * iPad.

call n ro>nul
set cbf-fn=%cbf-pt%\ipad.txt

exit/b



:_+ VSC Snippets Family (!fcsnip)



::_
:snip

echo. & echo * VSC Snippet folder and Snippet Generator.

call n up>nul
set cbf-pt=%cbf-pt%\AppData\Roaming\Code\User\snippets
set cbf-fn=%cbf-pt%\Jonathan's Global Snippets File.code-snippets
set cbf-url=https://snippet-generator.app/

exit/b

lu:
Aug-28-2023



::_
:bsnip

echo. & echo * Batch snippets.

call n snip>nul
set cbf-fn=%cbf-pt%\bat.json

exit/b

lu:
Aug-28-2023



::_
:busnip

echo. & echo * Snippets backup folder.

call n it>nul
set cbf-pt=%cbf-pt%\visual-studio-code-snippets
set cbf-fn=%cbf-pt%\bat.json

exit/b

lu:
Aug-28-2023



:_
:higolf

echo. & echo * Golf History.

call an br
set cbf-gs=https://docs.google.com/spreadsheets/d/1Jd8ZEPJsjwozonWeRni0Fe3hTEOiTifWW42R_yMjNL0/edit#gid=233212548

exit/b

lu:
Aug-29-2023



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
set cbf-app=%cbf-pt%\Microsoft Teams classic.lnk
set cbf-url=https://teams.microsoft.com

exit/b

lu:
Jan-8-2024
Jan-27-2022



::_
:zoom

echo. & echo * Zoom.

set cbf-app=%AppData%\Zoom\bin\zoom.exe

rem This is where recorded meetings are saved.
set cbf-pt=%userprofile%\Documents\Zoom

exit/b

On XPS I have version 5.16.1 on Jan-8-2024.

lu: 
Jan-8-2024
Oct-12-2020



::_
:mtdd

echo. & echo * Microsoft Teams down detector.

set cbf-url=https://downdetector.com/status/teams/

exit/b

lu:
Feb-3-2020



:_
:fj
:hifj
:hires

echo. & echo * Job Search History.

call n jona>nul
set cbf-pt=%cbf-pt%\Find a Job
call an br>nul

set cbf-gs=https://docs.google.com/spreadsheets/d/1MtAgqCRRMNliiAw6nNLj1a0IsIw7nM6n_AcsBm9bvVI/edit#gid=1499309585

exit/b

lu:
 Aug-31-2023



:_+ Family Gmail (!fcgmai)



::_
:gmai
:gmail
:j3

echo. & echo * Gmail.

call an kr
set cbf-url=https://mail.google.com

exit/b

lu:
Sep-7-2023



::_
:j7

echo. & echo * Gmail.

call an edge
set cbf-url=https://mail.google.com

exit/b

lu:
Sep-21-2023



:_
:aa
:perm

echo. & echo * Aa, a.k.a. permanent folders for Jonathan.

if exist "c:\aa" set cbf-pt=c:\aa
if exist "d:\aa" set cbf-pt=d:\aa

exit/b

lu:
Nov-2-2018



:_
:mons

echo. & echo * Monster.com.

set cbf-url=https://www.monster.com/resumes/resume/manageresumes?landedFrom=post-resume2

exit/b

lu:
Sep-12-2023



:_
:sail

echo. & echo * Sailing.

call n dr
set cbf-pt=%cbf-pt%\Sailing

exit/b

lu:
Sep-22-2023



:_
:brow

echo. & echo * Browsers.

call n jona
set cbf-gs=https://docs.google.com/spreadsheets/d/10tSDycsuYNkc2ACvw9YeclwAwKIiHNpX7YN7PzpcV9Y/edit#gid=2066608253

exit/b

lu:
 Sep-22-2023



:_
:bl
:blr

echo. & echo * Better life registry.

call an nt>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/10q6Lde4zafkKnqeSZq8uhgMI4c82DynKiL3dKAcpqGY/edit#gid=101239705

exit/b

lu:
Sep-25-2023



:_
:otta

echo. & echo * Otta.

set cbf-url=https://app.otta.com/

exit/b

lu:
Sep-25-2023



:_+ AI Family



::_
:bn
:bing
:new-bing

echo. & echo * New Bing.

call an ed>nul
set cbf-url=https://www.bing.com/search?toncp=0^^^&FORM=hpcodx^^^&q=Bing+AI^^^&showconv=1

exit/b

rem call n c>nul
rem set cbf-lnk=%cbf-pt%\bing.url

https://www.bing.com/search?toncp=0&FORM=hpcodx&q=Bing+AI&showconv=1
https://www.bing.com/search?q=Bing+AI
https://www.bing.com/search?q=Bing+AI&showconv=1

lu:
Jan-10-2024
Oct-9-2023

Uses up-to-date data.



::_
:bard

echo. & echo * Bard.

set cbf-url=https://bard.google.com/

exit/b

lu:
Sep-7-2023

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

lu:
Sep-7-2023

Data is out of date.



::_
:clai

echo. & echo * Claude.ai.

set cbf-url=https://claude.ai/chats

exit/b

lu:
Sep-7-2023



::_
:perp

echo. & echo * Perplexity.ai.

set cbf-url=https://www.perplexity.ai

exit/b

lu:
Sep-20-2023



::_
:jasp

echo. & echo * Jasper.ai.

set cbf-url=https://www.jasper.ai

exit/b

lu:
Sep-20-2023



::_
:ubdu

echo. & echo * Uberduck.ai. Make Music WithAI Vocals.

set cbf-url=https://www.uberduck.ai

exit/b

lu:
Sep-20-2023



:_+ EMDO Family (!emdo)



::_
:cyd
:doj
:dtg
:gci
:atoi
:lbm
:msl
:nes
:nes2

echo. & echo * %1.

call n emdo

set cbf-fn=%cbf-pt%\%1.asc

exit/b

lu:
Jan-24-2024
Oct-3-2023



::_
:sai
:saic

echo. & echo * %1.

call n emdo

set cbf-fn=%cbf-pt%\sai.bul

exit/b

lu:
Oct-3-2023



:_
:iw

echo. & echo * Interview preparation code.

call n it>nul

set cbf-pt=%cbf-pt%\interview-code

exit/b

lu:
Oct-9-2023



:_
:char
set cbf-pd=%1.asc

echo. & echo * %cbf-pd%.

call n ro
set cbf-fn=%cbf-pt%\%cbf-pd%

exit/b

lu:
Jun-24-2023



:_+ Code Compare Family



::_
:icoco

echo. & echo * Install Code Compare.

set cbf-app=%userprofile%\Dropbox\Software\Code Compare\codecomparepro40.exe
set cbf-fn=%cbf-app%

exit/b

lu:
Feb-27-2020



::_
:coco

echo. & echo * Run Code compare.

set cbf-app=c:\program files\devart\code compare\codecompare.exe
set cbf-fn=%cbf-app%

exit/b

lu:
Jan-31-2019



::_
:teco

echo. & echo * Text compare.

set cbf-url=https://text-compare.com/

exit/b

skw:
code compare
online comparison tool



:_
:jo

echo. & echo * Jonathan

call n dr>nul
set cbf-pt=%cbf-pt%\jonathan

exit/b

lu:
 Oct-13-2023



:_
:mi

echo. & echo * Miscellany

call n jo>nul
set cbf-pt=%cbf-pt%\miscellany

exit/b

lu:
Oct-13-2023



:_+ LeetCode (!fcle)



::_
:ne
:neet

echo. & echo * Neet.

call an br>nul
set cbf-url=https://neetcode.io/practice

exit/b

lu:
Oct-16-2023



::_
:le
:leet

echo. & echo * LeetCode.

call an nt>nul

set cbf-gs=https://docs.google.com/spreadsheets/d/1cPViBct-hqOPcmxnw7awCmwNFFOqwpmbzbJaNhzwyPE/edit#gid=0
set cbf-url=https://leetcode.com/problemset/all/

exit/b

lu:
Jan-10-2024
Oct-13-2023



:_
:til

echo. & echo * TheIncLab.

call n aa>nul
set cbf-pt=%cbf-pt%\theinclab

exit/b

lu:
Oct-17-2023



:_+ Temporary Folders



::_
:tmp

echo. & echo * Temporary user folder.
set cbf-pt=%tmp%

exit/b

lu:
Jan-23-2018

This is used as a cbf system default, if none is set. Please DO NOT DELETE.



::_
:temp

echo. & echo * Temporary c: drive folder.

set cbf-pt=c:\temp

exit/b



:_+ Language Functions Family (!fclfn) (skw supported-languages-series-jj)



::_
:dnhw
set cbf-pd=hello-world

echo. & echo * %cbf-pd%.

call n d>nul

set cbf-fn=%cbf-pt%\%cbf-pd%.cs

exit/b

lu:
Oct-31-2023



::_
:dnfz

set cbf-pd=fizz

echo. & echo * %cbf-pd%.

call n d>nul
set cbf-fn=%cbf-pt%\fizz-csharp\Program.cs

exit/b

lu:
Oct-31-2023



::_
:ggfz
set cbf-pd=fizz

echo. & echo * %cbf-pd%.

call n d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.go

exit/b

lu: 
Nov-1-2023



::_
:ggrs
set cbf-pd=reverse-string

echo. & echo * %cbf-pd%.

call n d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.go

exit/b

lu: 
Nov-1-2023



::_
:dnrs

set cbf-pd=reverse-string

echo. & echo * %cbf-pd%.

call n d>nul
set cbf-fn=%cbf-pt%\reverse-string-csharp\Program.cs

exit/b

lu:
Oct-31-2023



::_
:ndfz

set cbf-pd=fizz

echo. & echo * %cbf-pd%.

call n d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.js

exit/b

lu:
Oct-31-2023



::_
:ndrs

set cbf-pd=reverse-string

echo. & echo * %cbf-pd%. Reverses a string the manual way, without using a built-in function.

call n d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.js

exit/b

lu:
Oct-31-2023



::_
:phfz

set cbf-pd=fizz

echo. & echo * %cbf-pd%.

call n d>nul
set cbf-fn=%cbf-pt%\%cbf-pd%.py

exit/b

lu:
Oct-31-2023



:_
:post

echo. & echo * Postman.

set cbf-app=%localappdata%\Postman\Postman.exe
set cbf-url=https://web.postman.com

exit/b

lu: 
Jun-14-2018


:_
:scsh
:ss

echo. & echo * Screenshots folder.

call n up>nul
set cbf-pt=%cbf-pt%\pictures\screenshots

exit/b

lu:
Jul-12-2023



:_+ Find a Job Family (!fccfj)



::_
:prat

set cbf-pd=python-rest-api-tutorial

echo. & echo * %cbf-pd%.

call n it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=%cbf-gh%/%cbf-pd%
set cbf-yt=https://www.youtube.com/watch?v=qbLc5a9jdXo
set cbf-url=https://api.stackexchange.com

exit/b

lu:
Oct-31-2023



::_
:nwe

echo. & echo * node-with-express-fireship-tutorial. Node.js Quickstart

call n it>nul
set cbf-pt=%cbf-pt%\node-with-express-fireship-tutorial
set cbf-gh=https://github.com/jonathans-razor/node-with-express-fireship-tutorial
set cbf-url=https://fireship.io/courses/javascript/node-basics
set cbf-yt=https://www.youtube.com/watch?v=ENrzD9HAZK4

exit/b

lu:
Oct-17-2023



::_
:d
:dsa

echo. & echo * Data structures and algorithms.

call n it>nul
set cbf-pt=%cbf-pt%\dsa
set cbf-gh=https://github.com/jonathans-razor/data-structures-and-algorithms

exit/b

lu:
Oct-10-2023



::_
:acc

echo. & echo * Angular Crash Course.

call n it>nul
set cbf-pt=%cbf-pt%\angular-crash-course-by-traversy-media
set cbf-gho=https://github.com/bradtraversy/angular-crash-2021
set cbf-gh=https://github.com/jonathans-razor/angular-crash-course-by-traversy-media
set cbf-yt=https://www.youtube.com/watch?v=3dHNOWTI7H8

exit/b

lu:
Sep-29-2023



:_
:d3

set cbf-pd=d3-js-data-visualization-full-course

echo. & echo * %cbf-pd%.

call n it>nul

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

call n it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=%cbf-gh%/%cbf-pd%
set cbf-yt=https://www.youtube.com/watch?v=Z4pCqK-V_Wo

exit/b

lu: 
Nov-13-2023



:_
:cid
:como

echo. & echo * Comodo Ice Dragon.

set cbf-app=C:\Program Files\Comodo\IceDragon\icedragon.exe

exit/b

lu: 
Nov-13-2023



:_
:mah

set cbf-pd=Mission at Home

echo. & echo * %cbf-pd%. 

set cbf-gs=https://docs.google.com/spreadsheets/d/1MonEhCyxbEwQ^
QZFsG6g-DD7gcO6DeyW3awwHUmyMVvM/edit#gid=506097238

call an br>nul

exit/b

Note: I used a line continuation character above to circumvent a double q conflict.

lu: 
Nov-14-2023



:_+ GraphQL Family (!fcgcc)



::_
:gcc

set cbf-pd=graphql-crash-course

echo. & echo * %cbf-pd%. 

call n it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-yt=https://www.youtube.com/watch?v=xMCnDesBggM
set cbf-gh=https://github.com/jonathans-razor/%cbf-pd%
rem The original repo.
set cbf-gh2=https://github.com/iamshaunjp/%cbf-pd%

exit/b

lu: 
Nov-14-2023



::_
:apsa

set cbf-pd=apollo-sandbox

echo. & echo * %cbf-pd%. 

call n it>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-url=https://studio.apollographql.com/sandbox/explorer/
call an kr

exit/b

lu: 
Nov-15-2023



:_
:k9s
set cbf-pd=k9s

echo. & echo * %cbf-pd%. 

call n it>nul
set cbf-gh=https://github.com/derailed/k9s/releases
set cbf-yt=https://www.youtube.com/watch?v=q^
qR0c-qcILI

exit/b

lu: 
Nov-15-2023



:_+ Meta files



::_
:tcc
:tccbf

echo. & echo * CBF table of contents.

call n cbf>nul
set cbf-fn=%cbf-pt%\cbf-tc.txt

exit/b

lu:
May-17-2022

skw:
table-of-contents-series



::_
:tcp

echo. & echo * Python table of contents.

call n d>nul
set cbf-fn=%cbf-pt%\ph-tc.txt

exit/b

lu:
May-17-2022

skw:
table-of-contents-series



::_
:tcba
:tcf
:tcffb

echo. & echo * FFB table of contents.

call n f>nul

set cbf-fn=%cbf-pt%\ffb-tc.txt

exit/b

lu:
May-17-2022

skw:
table-of-contents-series



::_
:tcd
:tcdbf

echo. & echo * DBF table of contents.

call n dbf>nul

set cbf-fn=%cbf-pt%\dbf-tc.txt

exit/b

skw:
table-of-contents-series



::_
:tck

echo. & echo * KCR table of contents. (Key Crusher)

call n dbf>nul
set cbf-fn=%cbf-pt%\kc-tc.txt

exit/b

lu:
Jun-26-2023

skw:
table-of-contents-series



::_
:tcs

echo. & echo * Share-zone table of contents.

call n s>nul
set cbf-fn=%cbf-pt%\s-tc.txt

exit/b

lu:
May-17-2022

skw:
table-of-contents-series



::_
:cbf-el
:elcbf

echo. & echo * CBF error levels/codes.

call n cbf>nul
set cbf-fn=%cbf-pt%\cbf-el.txt

exit/b

lu:
Jun-06-2022



::_
:cbf-gl
:glcbf

echo. & echo * CBF glossary

call n cbf>nul
set cbf-fn=%cbf-pt%\cbf-gl.txt

exit/b

lu:
Jun-06-2022



::_
:cbf-ov
:ovcbf

echo. & echo * CBF Overview.

call n cbf>nul
set cbf-fn=%cbf-pt%\cbf-ov.txt

exit/b

lu:
Aug-28-2023



::_
:cbf-sgd
:sg
:sgdcbf

echo. & echo * CBF style guide.

call n cbf>nul
set cbf-fn=%cbf-pt%\cbf-sg.txt

exit/b

lu:
Jun-06-2022



:_
:tr

echo. & echo * Travel.

call n dr>nul
set cbf-pt=%cbf-pt%\travel

exit/b

lu: 
Nov-22-2023



:_
:winz
:wizi

echo. & echo * Winzip.

set cbf-app=c:\program files\winzip\winzip64.exe

exit/b

lu: 
Apr-27-2020



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

lu:
Feb-9-2022



::_
:cj
:cl
:cjp
:clja
:clipjam_podcasts

call n clp || exit/b

echo. & echo * Podcasts.

set cbf-pt=%cbf-pt%podcasts

exit/b

lu: 
Oct-30-2023
Jul-15-2018



::_
:audi
:cja

call n clp || exit/b

echo. & echo * Audiobooks.

set cbf-pt=%cbf-pt%audiobooks

exit/b

lu: 
Oct-30-2023
Oct-18-2021



::_
:pc
:podcast_folder

echo. & echo * Podcaster.

set cbf-pt=%my documents%\gpodder\downloads
set cbf-app=C:\Program Files (x86)\gPodder\bin\gpodder.exe

exit/b

lu:
Jun-24-2020

     

::
:s
:stag
:staging-area

echo. & echo * Staging area.

set cbf-pt=%my documents%\mp3 staging area

exit/b

lu:
Aug-20-2022



::
:ec
:exco
:mec

echo. & echo * Extra content - MP3.

set cbf-pt=%my documents%\mp3 extra content

exit/b

lu:
Jan-26-2022



:
:dec-6-2023
echo. & echo * %1.
call n fj>nul
set cbf-jd=%cbf-pt%\%1.png

exit/b

lu: 
Dec-5-2023



:_
:seja

echo. & echo * Visual Studio Code user settings file.

call n apda>nul
set cbf-fn=%cbf-pt%\code\user\settings.json

exit/b

lu: 
Dec-14-2023



:_
:acli
:apcl

echo. & echo * %1.

call n it>nul

set cbf-pt=%cbf-pt%\ai-powered-command-line

exit/b



:_
:cola

echo. & echo * Colaboratory.

set cbf-url=https://colab.research.google.com

exit/b



:_
:oa

echo. & echo * Open AI virtual environment.

call n it>nul

set cbf-pt=%cbf-pt%\open-ai-virtual-environment

exit/b



:_
:sc

echo. & echo * Google Docs spell checker.

call an br

set cbf-gd=https://docs.google.com/document/d/1Nn2yT-QO6Pefuk5g2qDZfVox_VF0dHDiLGNjaimMWOE/edit

exit/b



:_+ Bash



::_
:brc

echo. & echo * Bash run commands.

call n home>nul
set cbf-fn=%cbf-pt%\.bashrc

exit/b

rem Note: This points to the %HOME% folder. If that is not defined, it defaults to the
rem user profile folder.



::_
:xbrc

echo. & echo * XPS Bash run commands backup.

call n f>nul
set cbf-fn=%cbf-pt%\.bashrc-xps-backup

exit/b



::_
:ba
:bash

echo. & echo * Git bash.

set cbf-pt=C:\Program Files\Git
set cbf-app=C:\Program Files\Git\git-bash.exe
rem if exist C:\Users\JJ\AppData\Local\Programs\Git\git-bash.exe set cbf-app=C:\Users\JJ\AppData\Local\Programs\Git\git-bash.exe

exit/b



::_
:kbrc

echo. & echo * Keld Bash rc.

call n dbf>nul
set cbf-fn=%cbf-pt%\.bashrc-keld-backup

exit/b

lu:
Sep-01-2022



::_
:gc
:ggc
:ggcf

echo. & echo. * Git global configuration file.

call n home>nul
set cbf-fn=%cbf-pt%\.gitconfig

exit/b

lu:
Jan-27-2022

I don't know where the Git system configuration file is located.



::_
:obrc

echo. & echo * Old Bash rc.

call n 1d>nul
set cbf-fn=%cbf-pt%\Backups\Minishift\.bashrc

exit/b

lu:
Sep-01-2022



:_
:hivg

echo. & echo * My History of Video Games.

call an br>nul

set cbf-gs=https://docs.google.com/spreadsheets/d/1jmjGD4AsLCaAiJKZ-TNdKbYzPgqVHpvGX2jDsw25NcM/edit#gid=2046626056

exit/b



:_
:hc
:htyc

echo. & echo * html-tags-youtube-course.

call n it>nul
set cbf-pt=%cbf-pt%\html-tags-youtube-course

exit/b



:_
:so

echo. & echo * Learning software.

call an br>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/1d5iDDqNyaVCXBxER40YEzaYimNM4x2YgDgkOneC6q6I/edit#gid=0

exit/b



:_
:ny

echo. & echo * NFL quarter highlights.

set cbf-yt=https://www.youtube.com/playlist?list=PLa3OmXFd7fC60N9KvCrn-bLdcwJv6SnOV

exit/b



:_
:rsdn
:rsgg
:rsjv
:rsjs
:rsph

echo. & echo * Reverse string for a language file.

call n d>nul

set cbf-parser=%1
set cbf-parser=%cbf-parser:~2,2%

if "%cbf-parser%" == "gg" set cbf-parser=go
if "%cbf-parser%" == "ph" set cbf-parser=py
if "%cbf-parser%" == "jv" (
  set cbf-fn=ReverseString.java
  exit/b
)
if "%cbf-parser%" == "dn" (
  set cbf-fn=%cbf-pt%\reverse-string-csharp\Program.cs
  exit/b
)

set cbf-fn=%cbf-pt%\reverse-string.%cbf-parser%

exit/b



:_
:fzgg
:fzjs
:fzph

echo. & echo * Fizz buzz for a language file.

call n d>nul

set cbf-parser=%1
set cbf-parser=%cbf-parser:~2,2%

if "%cbf-parser%" == "gg" set cbf-parser=go
if "%cbf-parser%" == "ph" set cbf-parser=py

set cbf-fn=%cbf-pt%\fizz.%cbf-parser%

exit/b



:_
:nort
:nt

echo. & echo * Norton browser.

set cbf-app=%localappdata%\Norton\Browser\Application\NortonBrowser.exe

exit/b

:rem
Has nice PDF edeiting capability. Jan-22-2024



:_
:fsd
:fvski

echo. & echo * Favorite ski days.

call an br>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/1Q6YUJzTG_cHhKTBjBeawmoRMo-rYLXTo3ukRFzn1_IQ/edit#gid=0

exit/b



:_
:giu

echo. & echo * Google image search - upload an image.

set cbf-url=https://images.google.com/imghp?hl=en^^^&gws_rd=ssl

exit/b



:_ IP Address family (!fcip)



::_
:ip

echo. & echo * IP Address.

set cbf-skw=What's my ip address?
set cbf-url=https://whatismyipaddress.com

rem This site has some other cool tools as well as IP address.
set cbf-url2=https://www.whatsmyip.org

exit/b



::_
:ipc

echo. & echo * IP Address config/all.

set cbf-app-quoteless=ipconfig/all

exit/b



:_
:geh
:gehe

echo. & echo * German helmets.

set cbf-skw=german helmets

exit/b



:_
:hr

echo. & echo * HarckerRank.

call an nt>nul
call n it>nul
set cbf-gs=https://docs.google.com/spreadsheets/d/1GEYx1kiMVIUhrzTK50fKF8mqK45Sl2vW4znU9cf1XDc/edit#gid=0
set cbf-pt=%cbf-pt%\HackerRank
set cbf-url=https://wwww.hackerrank.com

exit/b



:_
:g

echo. & echo * Grammarly.

set cbf-app=%appdata%\Microsoft\Windows\Start Menu\Programs\Grammarly.lnk

exit/b



:_
:licr

echo. & echo * LinkedIn connection request.

set cbf-url=https://www.linkedin.com/mynetwork

exit/b



:_
:gas

echo. & echo * Google advanced search.

set cbf-url=http://www.google.com/advanced_search?hl=en

exit/b



:_+ Localhost



::_
:nd
:3000

echo. & echo * Localhost port 3000. Used by Node.

set cbf-lh=http://localhost:3000

exit/b

lu:
Oct-18-2023



::_
:3000h

echo. & echo * Localhost port %1.

set cbf-lh=http://localhost:%1/hello

exit/b

lu:
Sep-21-2023



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

echo. & echo * Localhost using port %1.

set cbf-lh=http://localhost:%1

exit/b

lu:
Sep-27-2023
Jul-06-2022



::_
:gsg
:psg

echo. & echo * Pipeline script generator.

call an kr

set cbf-url=http://localhost:8080/job/PipelineTest2/pipeline-syntax/

exit/b

lu:
Jan-11-2019



:_
:revo

echo. & echo * Revo. news.

set cbf-url=https://revolver.news

exit/b



:_
:map

echo. & echo * map-of-the-united-states.

call n educ>nul
set cbf-fn=%cbf-pt%\map-of-the-united-states.webp

exit/b

:skw
map of the united states



:_
:bci

echo. & echo * Better code imagery.

call n pict>nul
set cbf-pt=%cbf-pt%\Better Code Imagery

exit/b



:_
:docu

echo. & echo * Documents.

set cbf-pt=%userprofile%\documents

exit/b



:_+ Vue Family (!fcvu)



::_
:vue

echo. & echo * Vue.

set cbf-gh=https://github.com/vuejs
set cbf-lh=http://localhost:8080

exit/b

lu:
Feb-2-2024



::_
:vuet

set cbf-pd=vue-3-and-composition-api-tutorial

echo. & echo * %cbf-pd%. Builds an expense tracker followed tutorial by Traversy Media.

call n it>nul
set cbf-docs=https://vuejs.org/guide/introduction.html
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=%cbf-gh%/%cbf-pd%
set cbf-lh=http://localhost:5173
set cbf-yt=https://www.youtube.com/watch?v=hNPwdOZ3qFU

exit/b

lu:
Jan-18-2024



::_
:stbl

echo. & echo * StackBlitz.

set cbf-url=https://vite.new/vue

exit/b



::_
:jsf

echo. & echo * JSFiddle.

set cbf-url=https://jsfiddle.net/yyx990803/2ke1ab0z/

exit/b



::_
:vupl

echo. & echo * Playground.

set cbf-url=https://play.vuejs.org

exit/b



::_
:vu

echo. & echo * Vue.

set cbf-docs=https://vuejs.org/guide/introduction.html
set cbf-lh=http://localhost:5173
set cbf-url=https://discord.com/invite/HBherRA
set cbf-gha=https://api.github.com/repos/vuejs/core/commits?per_page=3

exit/b



::_
:vute

echo. & echo * Vue testing.

call n it>nul
set cbf-pt=%cbf-pt%\vue-testing
set cbf-gh=https://github.com/jonathans-razor/vue-testing.git

exit/b

lu:
Jan-30-2024



::_
:vue-src

set cbf-pd=vue-expense-tracker

echo. & echo * %cbf-pd% source project.

call n repo>nul
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-gh=https://github.com/bradtraversy/vue-expense-tracker
set cbf-lh=http://localhost:5173

exit/b

lu:
Jan-18-2024



::_
:vuejs-hw

echo. & echo * Hello world from Vue.js.

call n d>nul
set cbf-fn=%cbf-pt%\hello-world-vuejs\index.html

exit/b



::_
:vudocs
:vuin

echo. & echo * Introduction.

call an kr>nul
set cbf-url=https://vuejs.org/guide/introduction.html

exit/b



::_
:vuld

echo. & echo * Lifecycle diagram.

set cbf-url=https://vuejs.org/guide/essentials/lifecycle

exit/b



::_
:vutu

echo. & echo * Tutorial.

call an kr>nul
set cbf-url=https://vuejs.org/tutorial/#step-1

exit/b



::_
:vuqs

echo. & echo * Quick start.

set cbf-url=https://vuejs.org/guide/quick-start.html

exit/b



::_
:vuvqs

echo. & echo * Vuetify Quick start.

set cbf-url=https://vuetifyjs.com/vuetify/quick-start.html

exit/b



::_
:vuapi

echo. & echo * Vue API tutorial.

set cbf-url=https://metricloop.com/blog/how-to-make-api-calls-with-vuex

exit/b



::_
:vutd

echo. & echo * Todo app.

set cbf-url=https://scotch.io/tutorials/build-a-to-do-app-with-vue-js-2

exit/b



::_
:vubu

echo. & echo * Vue button.

call n d>nul
set cbf-pt=%cbf-pt%\vue-button

exit/b



::_
:volar

echo. & echo * Vue language features. (Volar)

set cbf-url=https://marketplace.visualstudio.com/items?itemName=Vue.volar

exit/b



::_
:vuve

echo. & echo * Vue Examples.

set cbf-url=https://vuejs.org/examples/#hello-world

exit/b



::_
:vu21
:vumd

echo. & echo * Simple Marddown editor.

set cbf-url=https://vuejs.org/examples/#markdown

exit/b



:_+ Vue Applications Family (!fcvuapp)



::_
:app1

echo. & echo * Vue %1.

call n d>nul
set cbf-pt=%cbf-pt%\hello-world-vuejs
set cbf-fn=%cbf-pt%\index.html

exit/b



::_
:app5
:app7
:app8
:app9

echo. & echo * Vue application folders.

call n vu>nul
set cbf-pt=%cbf-pt%\%1
set cbf-fn=%cbf-pt%\index.html

exit/b



::_
:app6

echo. & echo * Vue application application 6.

call n vu>nul
set cbf-pt=%cbf-pt%\%1
set cbf-fn=%cbf-pt%\index.html

rem For problems roughly numbered 15 or less.
set cbf-url=https://vuejs.org/tutorial/#step-1

rem For problems numbered 16 to 37.
set cbf-url2=https://vuejs.org/examples

exit/b



:_
:sido

echo. & echo * Adobe Fill and Sign documents.

set cbf-url=https://www.adobe.com/acrobat/online/sign-pdf.html

exit/b

lc:
(!sido)

skw:
document signing
How do you convert a pdf document to a word document?
How do you sign a pdf form?
Sign document.
signing documents



:_
:vitedocs

echo. & echo * Vite docs.

set cbf-url=https://vitejs.dev/guide/

exit/b



:_
:telog

echo. & echo * Tennis log.

set cbf-gs=https://docs.google.com/spreadsheets/d/1rnoBNQugS6OKo26lPwY2ppc7_DIRwaYx2lZPQFmMeMA/edit#gid=0

exit/b



:_+ CBF-related links.



::_
:jj
:jjgh
:jjgit

echo. & echo * Jonathan's Github page.

set cbf-gh=https://github.com/jonathans-razor
set cbf-gha=https://api.github.com/repos/jonathans-razor/composable-batch-files/commits?per_page=3
set cbf-ghp=https://github.com/settings/profile
set cbf-ghr=https://github.com/jonathans-razor?tab=repositories
set cbf-rl=%cbf-gh%\Composable-Batch-Files\releases

exit/b

lu:
Jun-27-2023



::_
:c
:cbf

echo. & echo * Composable batch files.

set cbf-branch=main
set cbf-cn=git@github.com:jonathans-razor/Composable-Batch-Files.git
set cbf-gh=https://github.com/jonathans-razor/Composable-Batch-Files
call an nt>nul
Rem Top Useful Demoable Cbfs Spreadsheet:
set cbf-gs=https://docs.google.com/spreadsheets/d/1oDL5jPYWqjjmGYEMmHZBykuOuxdha8RFnErpEd64vrY/edit#gid=0

echo %computername%| find /i "ones">nul
if %errorlevel% == 0 (
  set cbf-pt=c:\aa\repositories\composable-batch-files
) else (
  set cbf-pt=%dropbox%\it\composable-batch-files
  call el /c>nul
)

exit/b

lc:
(!ones)

lu:
Jan-26-2024
Jul-18-2023

rem:
about: Windows Batch Scripting files that are function-based, modularized and easy to use and 
understand.

skw:
ones-series-jj



::_
:f
:ffb
:ffbs

echo. & echo * Function first bash scripts.

set cbf-gh=https://github.com/jonathans-razor/function-first-bash-scripts
set cbf-pt=%dropbox%\it\function-first-bash-scripts

exit/b

lu:
Sep-9-2023



::_
:cbfgp
:ghp

echo. & echo * CBF on GitHub Pages.

set cbf-url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

exit/b

lu:
Jan-31-2018



::_
:cbf-p

echo. & echo * CBF Pulse on GitHub.

set cbf-url=https://github.com/jonathan-r-jones/Composable-Batch-Files/pulse

exit/b

lu:
Jan-24-2018



::_
:obx

echo. & echo *  OBX.

call n repo>nul
set cbf-pt=%cbf-pt%\obx
set cbf-ex=%dropbox%\savannah\Excels\obx.xls
set cbf-fn=%cbf-pt%\index.md
set cbf-gh=https://github.com/jonathans-razor/OBX.git
set cbf-mtp=%reach out%\obx.mtp
set cbf-url=https://jonathans-razor.github.io/Outer-Banks-2021/

exit/b

lu:
Jun-27-2023
Jan-24-2018



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



:_+ Vue Tutorial Family (!fcvt) - There are 15 official Vue tutorials.



::_
:vt1

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\%1
set cbf-url=https://vuejs.org/tutorial/#step-1

exit/b

rem:
What do you notice about this code? 

Simple app.

This app was created using "Vue create" (not latest). Bare bones features.



::_
:vt2

echo. & echo * %1. Make dynamic.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-2

exit/b

rem:
What do you notice about this code? 

Made dynamic.



::_
:vt3

echo. & echo * %1. Make red.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-3

exit/b

rem:
What do you notice about this code? 
Add the title class to the h1 tag.



::_
:vt4

echo. & echo * %1. Event listener.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-4

exit/b

rem:
What do you notice about this code? 
ref(0) assigned to count variable.




::_
:vt5

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-5

exit/b

rem:
What do you notice about this code? 
Simplified form binding.



::_
:vt6

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-6

exit/b

rem:
What do you notice about this code? 
Cool toggle value.



::_
:vt7

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-7

exit/b

rem:
What do you notice about this code? 
List buildihg.



::_
:vt8

echo. & echo * %1. Computed properties.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-8

exit/b

lc:
(!copr)

rem:
What do you notice about this code? 
Computed values are complicated.

skw:
computed property


::_
:vt9

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-9

exit/b

rem:
What do you notice about this code? 

Lifecycle refs need more of my attention.



::_
:vt10

echo. & echo * %1. Watchers.

call n vute>nul
set cbf-pt=%cbf-pt%\vt1
set cbf-url=https://vuejs.org/tutorial/#step-10

exit/b

rem:
What do you notice about this code? 
Watchers are difficult to understand.



::_
:vt11

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt11
set cbf-url=https://vuejs.org/tutorial/#step-11

exit/b

rem:
What do you notice about this code? 
How to load a child component.



::_
:vt12

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt11
set cbf-url=https://vuejs.org/tutorial/#step-12

exit/b

rem:
What do you notice about this code? 
Hmm. Properties passing between child and parent.



::_
:vt13

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt11
set cbf-url=https://vuejs.org/tutorial/#step-13

exit/b

rem:
What do you notice about this code? 
Emitting from child component.



::_
:vt14

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt11
set cbf-url=https://vuejs.org/tutorial/#step-14

exit/b

rem:
What do you notice about this code? 
Fallback code is interesting.

skw:
fallback content



::_
:vt15

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\vt11
set cbf-url=https://vuejs.org/tutorial/#step-15

exit/b

rem:
What do you notice about this code? 
Confetti is fun.



:_
:mbe

echo. & echo * module-bundlers-explained.

call n it>nul
set cbf-pt=%cbf-pt%\module-bundlers-explained
set cbf-gh=https://github.com/jonathans-razor/module-bundlers-explained
set cbf-yt=https://www.youtube.com/playlist?list=PLV-KEAAMgUZB3pnXE0ShgSg1C73aDcw7P

exit/b



:_
:aip

echo. & echo * aip.

call pn it>nul
set cbf-fn=%cbf-pt%\Miscellany\aip.png

exit/b



:_
:arc
:arch

echo. & echo * Batch file code archive.

call n bel>nul
set cbf-fn=%cbf-pt%\archive.bat

exit/b



:_+ Vue Example Family (!fcve) - There are 21 official Vue examples.



::_
:ve1

echo. & echo * %1. Hello world.

call n vute>nul
set cbf-pt=%cbf-pt%\%1
set cbf-fn=%cbf-pt%\src\%1-*.vue

set cbf-url=https://vuejs.org/examples/#hello-world

exit/b

rem:
What do you notice about this code? 

Simple hello world.

This app was built using "npm create vue@latest %2" which contains fancy features.



::_
:ve2

echo. & echo * %1. Reverse message. Prevent click. Add exclamations.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#handling-input

exit/b

rem:
What do you notice about this code? 

Preventing navigation is cool.



::_
:ve3

echo. & echo * %1. Hover world.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#attribute-bindings

exit/b

rem:
What do you notice about this code? 

Toggling text color.



::_
:ve4

echo. & echo * %1. Reverse list. Pop and push list.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#conditionals-and-loops

exit/b

rem:
What do you notice about this code? 

Some cool functionality.



::_
:ve5

echo. & echo * %1. Form binding.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#form-bindings

rem:
What do you notice about this code? 

The formatting looks bad in Chrome but good in Brave.

exit/b



::_
:ve6

echo. & echo * %1. The simplest possible component which accepts a prop and renders it.

call n vute>nul
set cbf-fn=TodoItem.vue
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#simple-component

exit/b

rem:
What do you notice about this code? 

This code is a very plain list that doesn't do anything.



::_
:ve7

echo. & echo * %1. Markdown Editor.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#markdown

exit/b

rem:
What do you notice about this code? 

It's amazing how little code it takes to do a markdown editor. What is the trick or library 
that allows the markdown to display correctly?

For one thing, the "marked" import.

All output is being "computed" using the marked library.
const output = computed(() => marked(input.value))



::_
:ve8

echo. & echo * %1. Fetching GitHub data.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#markdown

exit/b

rem:
What do you notice about this code? 
watchEffect(async () => {



::_
:ve9

echo. & echo * %1. Grid with search and sort. An example of creating a reusable grid component and using it with external data.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#grid

exit/b

rem:
What do you notice about this code?

Very nice type ahead filter/search and sorting features.



::_
:ve10

echo. & echo * %1. A nested tree component that recursively renders itself. You can double click on an item to turn it into a folder.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#tree

exit/b

rem:
What do you notice about this code?

Cool Treeview. The data doesn't seemed to be saved, for example, to local storage.



::_
:ve11

echo. & echo * %1. An SVG graph.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#svg

exit/b

rem:
What do you notice about this code?

I put the word "export" in front of the word "function" in util.js and it started working.



::_
:ve12

echo. & echo * %1. Modal component with customizable slots and CSS transitions.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#modal

exit/b

rem:
What do you notice about this code?

I don't remember seeing the teleport HTML tag before.



::_
:ve13

echo. & echo * %1. FLIP list transitions with the built-in <TransitionGroup>.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#list-transition

exit/b

rem:
What do you notice about this code?

I like the use of the random insert of new list items.



::_
:ve14

echo. & echo * %1. A fully spec-compliant TodoMVC implementation: https://todomvc.com/


call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#todomvc

exit/b

rem:

What do you notice about this code?
It's cool that it uses local storage.



::_
:ve15

echo. & echo * %1.
rem qjq

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#counter

exit/b

rem:
What do you notice about this code?

ref(0) is a reactive reference, which means that the value can be used in a reactive context, 
such as in the template of a Vue component, and Vue will automatically track changes to the 
value and update the DOM when the value changes.



::_
:ve16

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#temperature-converter

exit/b

rem:
What do you notice about this code?

Cool code. It does a cool thing in very few lines of code!



::_
:ve17

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#flight-booker

exit/b

rem:
What do you notice about this code?

Cool code. I used ctrl+e a lot to explain things.



::_
:ve18

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#timer

exit/b

rem:
What do you notice about this code?

The selected code `onUnmounted` is a function from Vue.js's Composition API. This function is 
used to run some code when a Vue component is unmounted from the DOM, which is similar to the 
`destroyed` lifecycle hook in Vue 2.



::_
:ve19

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#crud

exit/b

rem:
What do you notice about this code?

I added an alert box for when the user clicks create and there is not valid first and last name.



::_
:ve20

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#crud

exit/b

rem:
What do you notice about this code?

The argument passed to shallowReactive is [[]], which is an array containing an empty array. 
This means that history is initialized as a reactive object that contains a single element, 
which is an empty array.



::_
:ve21

echo. & echo * %1.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=

exit/b

rem:
What do you notice about this code?

Spreadsheet making code.



::_
:ve22

echo. & echo * %1. Ve items from here and beyond are custom items created by me. Feb-12-2024

call n vute>nul
set cbf-pt=%cbf-pt%\ve1
set cbf-url=https://vuejs.org/examples/#form-bindings

rem:
What do you notice about this code? 

Simplest bound checkbox.

exit/b



::_
:ve23

echo. & echo * %1. Reverse list.

call n vute>nul
set cbf-pt=%cbf-pt%\ve1\src
set cbf-fn=%cbf-pt%\%2-*.vue
set cbf-url=https://vuejs.org/examples/#form-bindings

rem:
What do you notice about this code? 

Simplified reverse list.

exit/b



::_
:ve24

echo. & echo * %1. Fireship 100 seconds on Vue.

call n vute>nul
set cbf-fn=%cbf-pt%\ve1\src\ve24-fireship-reactive-data-changes.vue
set cbf-pt=%cbf-pt%\ve1
set cbf-yt=https://www.youtube.com/watch?v=nhBVL41-_Cw

exit/b

rem:
Good demo of reactive mechanics.




::_
:ve25

echo. & echo * %1. Debugger testing.

call n vute>nul
set cbf-fn=%cbf-pt%\ve1\src\ve25-debug-testing.vue
set cbf-pt=%cbf-pt%\ve1

exit/b

rem:
I need to know this.




::_
:ve26

echo. & echo * %1. GitHub data fetching testing. This shows the CBF repo!

call n vute>nul
set cbf-fn=%cbf-pt%\ve1\src\ve26-github-data-fetching-testing.vue
set cbf-pt=%cbf-pt%\ve1

exit/b

rem:
This repo began as a copy of ve8.




:_
:imap
:v3t

echo. & echo * Vuetify 3 Tutorial by Laith Academy.

call n vute>nul
set cbf-pt=%cbf-pt%\imageapp
set cbf-yt=https://www.youtube.com/watch?v=PzXaFXgsp60&t=1443s

exit/b



:_
:ph

echo. & echo * Python docs.

set cbf-docs=https://docs.python.org/3/

exit/b

lu:
Oct-25-2023



:_
:tify

echo. & echo * Vuetify.

set cbf-docs=https://vuetifyjs.com/en/introduction/why-vuetify/#what-is-vuetify3f

exit/b

lu:
Feb-13-2024



:_
:wire

echo. & echo * Vue wireframe browser test.

set cbf-url=https://vuetifyjs.com/en/wireframes/baseline/

exit/b



:_
:rout

echo. & echo * Vue router by Vue Mastery.

call n vute>nul
set cbf-pt=%cbf-pt%\rout
set cbf-yt=https://www.youtube.com/watch?v=nKg_p89Hzos^^^&t=133s

exit/b



:_
:jett

echo. & echo * Ron's music.

call an kr>nul
set cbf-url=https://soundcloud.com/ron-jett-39617536

exit/b



:_+ Vite (!fyvite, !fyvi)



::_
:vi
:vite

echo. & echo * Vite.

set cbf-docs=https://vitejs.dev

exit/b



::_
:tuvi

echo. & echo * Vite and Vite tutorial.

call n vute>nul
set cbf-pt=%cbf-pt%\learn-vite-with-evan-you
set cbf-yt=https://www.youtube.com/watch?v=DkGV5F4XnfQ

exit/b



:_
:quas
:tuqu

echo. & echo * Quasar and Quasar tutorial.

call n vute>nul
set cbf-pt=%cbf-pt%\quasar-note-app

set cbf-docs=https://quasar.dev/docs

rem Video Tutorials
set cbf-url=https://quasar.dev/video-tutorials

set cbf-gho=https://github.com/codingwithjustin/quasar-note-app

rem Layout Builder
set cbf-url2=https://quasar.dev/layout-builder

set cbf-yt=https://www.youtube.com/watch?v=qPkSwo8QyoA&list=PLV-KEAAMgUZDt5kjYWsO4WAN5ARJyIs69&index=1

exit/b



:_
:db

echo. & echo * Debugging Vue in VS Code.

call n >nul
set cbf-pt=%cbf-pt%\
set cbf-url=
set cbf-

exit/b



:_
:vdt

echo. & echo * Vue DevTools.

set cbf-url=https://devtools.vuejs.org/guide/installation.html
set cbf-yt=https://www.youtube.com/watch?v=iKck6xEnIhc

exit/b



:_+ CBF Testing



::_
:lu

echo. & echo * From %0: last updated: Feb-22-2024-12-18-PM

exit/b



::_
:k
:test

echo. & echo * Test kangaroo. Jump. Jump. Jump around. Kangaroo Koke machine.

call n aa>nul
set cbf-pt=%cbf-pt%\k\te st

set cbf-app=%cbf-pt%\j1.txt
set cbf-ex=%cbf-pt%\j1.xlsx
rem set cbf-fn=%cbf-pt%\j1.txt
set cbf-jpg=%cbf-pt%\j1.jpg
set cbf-png=%cbf-pt%\j1.png
rem set cbf-png=%cbf-pt%\hard file (77).png
set cbf-fn=%cbf-pt%\hard file (5).txt

exit/b



::_
:aat

echo. & echo * aa test.

call n aa>nul
set cbf-pt=%cbf-pt%\test

exit/b



::_
:caret
:cubed-caret
:hat-trick

echo. & echo * The triple hat/caret seems to work for URLS!

rem This works! Oct-10-2023
set cbf-url=https://www.bing.com/search?q=Bing+AI^^^&showconv=1

exit/b

skw:
triple caret
triple hat works



::_
:amp
:ambu
:ampe-bug
:wlcbf

echo. & echo * Get ampersands to work in cbf-urls. For example, get "sf wlcbf" to work. It has an ampersand in the cbf-url string.

rem This works! Oct-10-2023
set cbf-url=https://www.bing.com/search?q=Bing+AI^^^&showconv=1

echo.
echo * cbf-url: %cbf-url%%cbf-url2%%cbf-url3%

exit/b

lu:
Sep-5-2021

skw:
hat trick
cbf-testing
triple caret
test-cbf
test cbf
triple hat works

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

set cbf-pt=d:\aa

exit/b



::_
:t2

echo. & echo * Test 2.

set cbf-pt=%dropbox%\it\composable-batch-files

exit/b

lu:
Jan-26-2024



::_
:bog
:bogu
:bogus
:et

echo. & echo * Bogus CBF for error testing.

call n a
set cbf-fn=%cbf-pt%\j 5.txt

exit/b

lu:
Mar-31-2022



::_
:obf

echo. & echo * An overcomplicated(?) way to call a batch file.

call n cbf>nul

set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-app=%cbf-pt%\t.bat

exit/b

lu:
Aug-18-2021



::_
:repa

echo. & echo * Relative path.

set cbf-pt=\test\integration

exit/b

lu:
Mar-31-2022



::_
:el-test

echo. & echo * Test where error level 4 is coming from.
rem call n vdi>nul
set cbf-fn=%cbf-pt%\Miscellany\message-to-xps.txt

exit/b

lu:
Jan-31-2022



:_
:todo

echo. & echo * Todo app by Tyler Potts.

call n vute>nul
set cbf-pt=%cbf-pt%\todo-app
set cbf-gho=https://github.com/TylerPottsDev/yt-vue-todo-2022
set cbf-yt=https://www.youtube.com/watch?v=qhjxAP1hFuI

exit/b



:_
:itpi
:tech
:tepi
:tp

echo. & echo * Tech pictures.

call n it>nul
set cbf-pt=%cbf-pt%\pictures

exit/b

skw:
it pictures



:_
:vdt

echo. & echo * Vuetify data table tutorial.

call n vute>nul
set cbf-pt=%cbf-pt%\vuetify-data-table
set cbf-yt=https://www.youtube.com/watch?v=wbQmalKFDOo

exit/b

lu:
Feb-23-2024



:_
:vy

echo. & echo * Vuetify.

call n >nul
set cbf-pt=%cbf-pt%\
set cbf-url=https://vuetifyjs.com/en/
set cbf-docs=https://vuetifyjs.com/en/

exit/b



:_+ Make Apps With Danny



::_
:27
:va27

echo. & echo * vuetify-app-feb-27-2024.

call n vute>nul
set cbf-pt=%cbf-pt%\vuetify-app-feb-27-2024
set cbf-yt=https://www.youtube.com/watch?v=CjXgoYo86yY

exit/b

rem:
I think the video was too old. I couldn't get his code to work as presented. Feb-14-2024



::_
:tuvx
:vuex

echo. & echo * Vuex tutorial by Make Apps With Danny.

call n vute>nul
set cbf-pt=%cbf-pt%\vuex-tutorial
set cbf-yt=https://youtu.be/nFh7-HfODYY?si=I91hCuFHEaiBRNcH

exit/b

lu:
Feb-26-2024

rem:
working-tutorial-series-jj

yt:
how to make api call with vuex



:_+ Pictures (!fcpict)



::_
:pict

echo. & echo * Pictures.

set cbf-pt=%dropbox%\pictures

exit/b

lu:
Sep-25-2020



::_
:b
:brea
:nppi

set cbf-pd=Breakaway

echo. & echo * %cbf-pd%.

call n pict
set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



::_
:fv
:fvpi
:fvpict
:hura

set cbf-pd=Favorites

echo. & echo * %cbf-pd%. All time favorite pictures.

call n pict
set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



::_
:nex
:nx

echo. & echo * New and exciting.
call n dr
set cbf-pt=%cbf-pt%\pictures\new and exciting

exit/b



::_
:baar

echo. & echo * Bahamian art.

call n pict
set cbf-pd=bahamian art
set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



::_
:wosa

set cbf-pd=Work Safe

echo. & echo * %cbf-pd%.

call n pict
set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



::_
:educ

set cbf-pd=Educational

echo. & echo * %cbf-pd%.

call n pict
set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



::_
:fun
:funn
:humo

set cbf-pd=humor

echo. & echo * %cbf-pd%.

call n pict
set cbf-pt=%cbf-pt%\humor

exit/b



::_
:mipi

echo. & echo * Miscellaneous pictures.

call n pict
set cbf-pt=%cbf-pt%\miscellany

exit/b



:_
:wlcar

echo. & echo * Car wish list.

set cbf-gs=https://docs.google.com/spreadsheets/d/1oS-Ysco2SL5ptpUoPkW2MLHalOhtehsJrjop15Qlc4s/edit#gid=0

exit/b



:_ (!efn)

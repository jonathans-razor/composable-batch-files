:_ Nickname Dictionary (!nb, !bfn)

@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help
rem In order to promote freshness, reset the error level and clear.
ver>nul
goto %1



:_
:help
echo. & echo * Nickname/alias path dictionary that sets recyclable environment variables corresponding to a given unique nickname parameter. This can be thought of as a large ^
configuration file or data layer. The idea is that you register your folder, file, etc. here ^
and then you can easily access it via your chosen alias. This can also be thought of a global variable database of sorts.

echo. & echo * Usage: %0 [single parameter]
echo. & echo * Parameter 1: Alias to run assignment for.

echo. & echo * In the function block corresponding to the label, you can set any or all ^
of the CBF environment variables. Typically this batch file would be called by echo a ^
different batch file looking to set a particular CBF rem environment variable. However, ^
if you call it yourself from the command line, it will set the variable plus it will ^
describe itself.

echo. & echo * Example(s):
echo %0 cbf
exit/b



:_

Metadata: Track Size (!tsn)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  ----------------------------------------------

:Jul-10-2023   2,443     30,655        168

: Jul-3-2023   2,183     27,420        150  Finished cleaning up CBF.

:Jun-28-2023     839     11,341         61



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\:::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ ASCII Art Family (!fyaa)



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

set fp=* ASCII Art - %1.

rem lu: Nov-25-2019

echo.
echo %fp%

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_sailboat.txt

exit/b



::_

:ascii_art_sea_scene

:aass

set fp=* ASCII Art - %1.

rem lu: Nov-6-2019

echo.
echo %fp%

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_sea_scene.txt

exit/b



::_

:ascii_art_scuba

:aa_sc

set fp=* Ascii art - scuba.

rem lu: Nov-6-2019

echo.
echo %fp%

call n cbf

set cbf-fn=%cbf-pt%\ascii_art_scuba.txt

exit/b



::_

:parrot

set fp=* Parrot.

rem lu: Apr-1-2019

echo %fp%

set cbf-fn=%composable-batch-files%\parrot.txt

exit/b



::_

:ascii_art

set fp=* ASCII art.

rem lu: Apr-1-2019

rem echo %fp%

set cbf-fn=%composable-batch-files%\ascii_art.txt

exit/b



::_

:ascii_art_2

set fp=* ASCII art.

rem lu: Apr-1-2019

rem echo %fp%

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

set fp=* WordPad.

rem lu: Aug-9-2018

echo.
echo %fp%

set cbf-app=c:\program files\windows nt\accessories\wordpad.exe

exit/b



::_

:npp

set fp=* Notepad++.

rem lu: Mar-9-2018

echo.
echo %fp%

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

set fp=* Multi-Edit.

rem lu: Feb-7-2020

echo.
echo %fp%

set cbf-app=C:\Program Files (x86)\multi-edit 2008\mew32.exe

exit/b



::_

:subl

set fp=* Sublime.

rem lu: Oct-9-2019

echo.
echo %fp%

set cbf-app=C:\Program Files\Sublime Text 3\sublime_text.exe

exit/b



::_

:viva

set fp=* Vivaldi.

rem lu: Jul-17-2018

echo.
echo %fp%

set cbf-app=%LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe

exit/b



:_

:feed

set fp=* Feed reader sample.

rem lu: Jul-17-2018

echo.
echo %fp%

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

set fp=* CBF on GitHub Pages.

rem lu: Jan-31-2018

echo.
echo %fp%

set cbf-url=https://jonathan-r-jones.github.io/Composable-Batch-Files/

exit/b



::_

:cbf-p

set fp=* CBF Pulse on GitHub.

rem lu: Jan-24-2018

echo.
echo %fp%

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



:_
:po
echo. & echo * Poker results.
call pn exs>nul
set cbf-ex=%cbf-pt%\poker_results.xlsx
set cbf-gs=https://docs.google.com/spreadsheets/d/1e867T94-oPhp-23ryHJKt2U0v5oo44g16M79dFz4Cek/edit#gid=1224869523
exit/b
rem lu: Dec-31-2022



:_

:daap

echo. & echo * Dating apps.

call pn exs

set cbf-ex=%cbf-pt%\dating apps.xlsx

exit/b

creation date: Jan-25-2023



:_+ Pictures (!fypict)



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
:fvpict
:hura
set cbf-pd=Huracan
echo. & echo * %cbf-pd%. All time favorite pictures.
call pn pict
set cbf-pt=%cbf-pt%\%cbf-pd%
exit/b



::_
:brea
:nppi
set cbf-pd=Breakaway
echo. & echo * %cbf-pd%.
call pn pict
set cbf-pt=%cbf-pt%\%cbf-pd%
exit/b



::_

:funn
:humo
set cbf-pd=humor
echo. & echo * %cbf-pd%.
call pn pict
set cbf-pt=%cbf-pt%\humor
exit/b



:_
:ear
:earx
:em
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



;+ Code Keepers Family (!fycck)



::_
:ck
:ckan
:ckba
:ckcs
:ckjv
echo. & echo * %1 code keepers.
call pn vdi>nul
set cbf-pt=%cbf-pt%\code keepers
set cbf-fn=%cbf-pt%\%1.asc
rem This is creating a default for "e ck", since Jenkins is what I do mostly lately. May-01-2023
if "%1"=="ck" call :jf
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
:cd
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
echo. & echo * Shoe weights.
call pn exs>nul
set cbf-ex=%cbf-pt%\shoe weights.xlsx
set cbf-gs=https://docs.google.com/spreadsheets/d/1EiNU92RGqeGyt5RcAZXk3Ad8RosXlZXKeFzj1Luj6bw/edit#gid=349921952
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
:r
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
:ch
set cbf-pd=%1.asc
echo. & echo * %cbf-pd%.
call pn ro
set cbf-fn=%cbf-pt%\%cbf-pd%
exit/b
creation date: Jun-24-2023



:_
:tsh
echo. & echo * Tysons Sport and Health.
set cbf-url=https://www.mysportandhealth.com
exit/b
creation date: Jun-26-2023



:_

:a
:afd

set fp=* A folder.

rem lu: Dec-12-2017

echo.
echo %fp%

if exist c:\a set cbf-pt=c:\a
if exist w:\a set cbf-pt=w:\a
rem export cbf-pt=/c/a

exit/b



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

set fp=* Recents folder.

rem lu: Nov-19-2019

echo.
echo %fp%

set cbf-pt=%appdata%\Microsoft\Windows\Recent

exit/b



::_

:stme

set fp=* Open Windows start menu folder.

rem lu: Mar-27-2020

echo.
echo %fp%

set cbf-pt=%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu

exit/b



::_

:star

:start

set fp=* Windows Startup folder.

rem fcd: May-9-2017

echo.
echo %fp%

set cbf-pt=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup

exit/b



::_

:udocs

set fp=* Userprofile Documents folder.

rem lu: Jul-9-2018

echo.
echo %fp%

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

set fp=* Windows system 32.

rem lu: Dec-27-2018

echo.
echo %fp%

call pn cbf>nul

set cbf-fn=%cbf-pt%\32.asc

set cbf-pt=c:\windows\system32

exit/b



::_

:win

:wind

set fp=* Windows.

rem lu: Feb-5-2019

echo.
echo %fp%

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
:tcc
echo. & echo * CBF table of contents.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-tc.txt
exit/b
rem lu: May-17-2022
table-of-contents-series: skw



::_
:tcd
echo. & echo * DBF table of contents.
call pn dbf>nul
set cbf-fn=%cbf-pt%\dbf-tc.txt
exit/b
table-of-contents-series: skw



::_
:tck
echo. & echo * KCR table of contents. (composable-bash-files)
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
echo. & echo * CBF error levels/codes.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-el.txt
exit/b
rem lu: Jun-06-2022



::_
:cbf-gl
echo. & echo * CBF glossary
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-gl.txt
exit/b
rem lu: Jun-06-2022



::_
:cbf-ov
echo. & echo * CBF Overview.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-ov.txt
exit/b
rem lu: Aug-28-2023



::_
:cbf-sg
echo. & echo * CBF style guide.
call pn cbf>nul
set cbf-fn=%cbf-pt%\cbf-sg.txt
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

set fp=* Message to XPS.

rem lu: Jan-31-2022

echo.
echo %fp%

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
call pn s
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
:fire
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

set fp=* Vivaldi.

rem lu: Feb-12-2020

echo.
echo %fp%

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

:edge

set fp=* Microsoft Edge browser.

rem lu: Feb-7-2018

echo.
echo %fp%

rem set cbf-app=microsoft-edge
set cbf-app=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe

exit/b



::_

:ie

set fp=* Internet Explorer.

rem This is used as the system default browser, if none is set. Please DO NOT DELETE.

rem lu: Jan-24-2018

echo.
echo %fp%

set cbf-app=c:\program files\internet explorer\iexplore.exe

exit/b



::_

:op

set fp=* Opera.

rem lu: Feb-13-2018

echo.
echo %fp%

set cbf-app=c:\program files\opera\launcher.exe

set cbf-pt=C:\ProgramData\Microsoft\Windows\Start Menu\Programs

exit/b



:_+ Root Drive



::_

:cdr

set fp=* Root of the C Drive.

rem lu: Feb-5-2018

echo.
echo %fp%

set cbf-pt=c:\

exit/b



::_

:gdr

set fp=* G drive.

rem lu: Jul-15-2019

echo.
echo %fp%

set cbf-pt=g:\

exit/b



::_

:hdr

set fp=* H drive.

rem lu: Jul-1-2019

echo.
echo %fp%

set cbf-pt=h:\

exit/b



:_+ Podcast and ClipJam Folders



::_

:cldr

:clip

:clp

echo. & echo * Clip drive.

rem lu: Feb-9-2022

set cbf-pt=

if exist "g:\" (
  echo. & echo * G exists.
  set cbf-pt=g:\
  exit/b
)

if exist "h:\" (
  rem echo H exists.
  set cbf-pt=h:\
  exit/b
)

if "%cbf-pt%" == "" (
  echo. & echo * Error: Is the MP3 player plugged in?
  exit/b 1
)

exit/b 3



::_

:pc

:podcast_folder

set fp=* Podcaster.

rem lu: Jun-24-2020

echo.
echo %fp%

set cbf-pt=%my documents%\gpodder\downloads

set cbf-app=C:\Program Files (x86)\gPodder\bin\gpodder.exe

exit/b

     

::_

:audi

:cja

set fp=* Audiobooks.

rem lu: Oct-18-2021

echo.
echo %fp%

set cbf-pt=

if exist g:\audiobooks set cbf-pt=g:\audiobooks
if exist h:\audiobooks set cbf-pt=h:\audiobooks

if "%cbf-pt%" == "" (
  echo.
  echo * Error: cbf-pt is undefined. Is the MP3 player plugged in?
  exit/b 1
)

exit/b



::_

:cj

:cjp

:clip

:clja

:clipjam_podcasts

rem echo. & echo * set fp=* ClipJam podcasts folder.

rem lu: Jul-15-2018

set cbf-pt=

if exist g:\podcasts set cbf-pt=g:\podcasts
if exist h:\podcasts set cbf-pt=h:\podcasts

if "%cbf-pt%" == "" (
  call err "cbf-pt" is undefined. Is the MP3 player plugged in? Sep-22-2022_11_32_AM - %0.bat
  exit/b 1
)

exit/b



::_

:sa

:staging_area

echo. & echo * Staging area.

rem lu: Aug-20-2022

set cbf-pt=%my documents%\mp3 staging area

exit/b



::_

:ec

:exco

:mec

set fp=* Extra content - MP3.

rem lu: Jan-26-2022

echo.
echo %fp%

set cbf-pt=%my documents%\mp3 extra content

exit/b



:_+ Repositories



::_

:d_aa_repos

set fp=* D aa repositories.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf-pt=d:\aa\repositories

exit/b



::_

:c_aa_repos

set fp=* C aa repositories.

rem lu: Nov-2-2018

echo.
echo %fp%

set cbf-pt=c:\aa\repositories

exit/b



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

set fp=* Various file types.

rem lu: Jun-8-2018

echo.
echo %fp%

set cbf-pt=%dropbox%\it\various file types

exit/b



:_+ Microsoft Products



::_

:ex

set fp=* Excel.

rem lu: Jan-3-2019

echo.
echo %fp%

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

set fp=* PowerPoint.

rem lu: Oct-25-2020

echo.
echo %fp%

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

set fp=* Word.

rem lu: Jan-24-2019

echo.
echo %fp%

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

set fp=* Git power user bin. Loaded with utilities.

rem skw: git utilities, git user bin, super path, super git

rem lu: Oct-23-2020

echo.
echo %fp%

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

set fp=* Git.

rem lu: Dec-6-2018

echo.
echo %fp%

set cbf-pt=%localappdata%\Programs\Git

set cbf-url=https://github.com

exit/b



::_

:glab

echo. & echo * GitLab.

set cbf-url=https://gitlab.com

exit/b



::_

:gg

set fp=* Git gui.

rem lu: Aug-1-2018

echo.
echo %fp%

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

set fp=* Dropbox Savannah.

rem lu: May-26-2019

echo.
echo %fp%

set cbf-pt=%dropbox%\savannah

exit/b


Footnote
>< >< ><

certified monogamous CBF



::_

:ldsv

set fp=* Local drive Savannah.

rem lu: Jan-25-2021

echo.
echo %fp%

set cbf-pt=%savannah%

exit/b



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

set fp=* Local drive Belfy.

rem lu: Mar-1-2020

echo.
echo %fp%

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

set fp=* Multi-Edit Config file folder.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf-pt=%appdata%\Multi Edit Software\Multi-Edit\11\Config.04

exit/b



::_

:drmecfg

:mecfg_dr

set fp=* Dropbox Multi-Edit Config files.

rem lu: Dec-7-2018

echo.
echo %fp%

set cbf-pt=%dropbox%\Multi-Edit_2008_Config_Files

exit/b



::_

:bumecfg

:mecfg_bu

set fp=* Multi-Edit Config Files Backups.

rem lu: Jan-3-2018

echo.
echo %fp%

set cbf-pt=%dropbox%\Backups\Multi-Edit Config Files

exit/b



::_

:smecfg

set fp=* Multi-Edit Config file folder in Share-Zone.

rem lu: Feb-13-2019

echo.
echo %fp%

set cbf-pt=%share-zone%\Multi-Edit_2008_Config_Files

exit/b



:_+ Visual Studio Code



::_

:code

:lnk-vsc

:vsc

set fp=* Visual Studio Code.

rem lu: Feb-23-2022

echo.
echo %fp%

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

set fp=* Visual Studio Code workspace..

rem lu: Jul-1-2020

echo.
echo %fp%

call tdp ma>nul

set cbf-pt=%cd%

set cbf-fn=%cbf-pt%\cart_vscode.code-workspace

exit/b



:_+ Backups Family



::_

:mibu

:miss

set fp=* Mission backups.

rem lu: Jan-8-2020

echo.
echo %fp%

set cbf-pt=%dropbox%\backups\mission

exit/b



::_

:svbu

set fp=* Savannah backups.

rem lu: Jan-8-2020

echo.
echo %fp%

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
:fn
:disc
:res
:s
:v
:pete
:psc
:d
:dbf
:vesp
:sth
:tax21
:tax22
:tx21
:tx22
:taxe
:taxes
:tx

rem Priv pass-through.

if exist "%share-zone%\pv.bat" call %share-zone%\pv.bat %1

exit/b



:_+ Windows Application Family (!fywin)



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

set fp=* Snipping tool.

rem lu: Feb-4-2019

rem clip, screen shot: skw

echo.
echo %fp%

set cbf-app=%windir%\system32\SnippingTool.exe

exit/b



::_

:copa

set fp=* Control panel.

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf-app=%systemroot%\system32\control.exe

set cbf-fn=%cbf-app%

exit/b



::_

:sk

:skyp

:skype

set fp=* Skype for business.

rem lu: Jan-18-2019

echo.
echo %fp%

set cbf-app=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Skype for Business.lnk

set cbf-fn=%cbf-app%

exit/b



::_

:zoomit

set fp=* ZoomIt

rem lu: Dec-14-2018

echo.
echo %fp%

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
rem set cbf-fn2=%cbf-pt%\Environment Variables from GFE on Aug-5-2021.txt
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

set fp=* Show desktop.

rem lu: Jun-13-2018

echo.
echo %fp%

set cbf-pt=%userprofile%\desktop

set cbf-fn=%appdata%\microsoft\internet explorer\quick launch\shows desktop.lnk

exit/b



::_

:sow

set fp=* Show open windows.

rem lu: Jun-13-2018

echo.
echo %fp%

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

set fp=* Java Home.

rem fcd: Dec-14-2018

echo.
echo %fp%

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

Java Home on GFE on Dec-18-2020. I removed the first 1.

:C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\Program Files\Java\jdk1.8.0_241\bin\java.exe

Java Home on XPS Nov-24-2020. I removed the first 2.

:C:\Program Files (x86)\Common Files\Oracle\Java\javapath\java.exe
C:\ProgramData\Oracle\Java\javapath\java.exe
C:\Program Files\Java\jdk1.8.0_241\bin\java.exe

:+ Java Home on GFE

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

Prior to Nov-9-2020 Java Home on GFE was: c:\aa\Java_Jdk_1.8.0.241

setx -m JAVA_HOME "c:\aa\jdk-11.0.9"

setx -m JAVA_HOME "C:\Program Files\Java\jdk-11.0.7"

https://www.codejava.net/java-se/download-and-install-java-11-openjdk-and-oracle-jdk



::_

:jre

:jreh

:jrh

:jvre

set fp=* Java runtime path. According to Craig M., this should be %java_home%\jre.

rem lu: Apr-7-2021

echo.
echo %fp%

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

set fp=* Node home.

rem fcd: Feb-11-2019

echo.
echo %fp%

set cbf-pt=%node_home%

exit/b



::_

:m2r

set fp=M2 or Maven2 repository.

rem fcd: Jul-7-2017

echo.
echo %fp%

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

set fp=* AWS configuration.

rem lu: Nov-6-2018

echo.
echo %fp%

set cbf-fn=%userprofile%\.aws\credentials

set cbf-pt=%userprofile%\.aws

set cbf-pt2=%share-zone%\aws cli

exit/b



::_

:je_hm

:je_home

set fp=* Jenkins home

rem lu: Dec-15-2018

echo.
echo %fp%

call %0 home

set cbf-pt=%cbf-pt%\.jenkins

exit/b



::_

:h

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

set fp=* Windows Apps.

rem lu: Dec-19-2018

echo.
echo %fp%

set cbf-pt=%localappdata%\Microsoft\WindowsApps

exit/b



:_
:scsh
echo. & echo * Screenshots folder.
call pn up>nul
set cbf-pt=%cbf-pt%\pictures\screenshots
exit/b
creation date: Jul-12-2023



:_

:foo

set fp=* Foo takes you to the bar folder. Of course it does.

rem lu: Aug-10-2018

echo.
echo %fp%

set cbf-pt=C:\Program Files\MSBuild\Microsoft\Windows Workflow Foundation\bar

exit/b



:_

:gett

set fp=* Gettysburg Address.

rem lu: Aug-13-2018

echo.
echo %fp%

set cbf-fn=%composable-batch-files%\Gettysburg_Address.txt

exit/b



:_

:fox

set fp=* Fox.

rem lu: Jun-4-2020

echo.
echo %fp%

set cbf-url=https://www.foxnews.com

exit/b



:_+ IT



::_

:it-old

set fp=* IT.

rem lu: May-10-2022

echo.
echo %fp%

set cbf-fn=%share-zone%\it.asc

set cbf-pt=%dropbox%\it\

exit/b



::_

:i2
:it2

set fp=* IT.

rem lu: May-10-2022

echo.
echo %fp%

call pn pm>nul
set cbf-fn=%cbf-pt%\it2.asc

set cbf-pt=%dropbox%\it\

exit/b



::_
:it
:it3
echo. & echo * IT.
set cbf-pt=%dropbox%\it
set cbf-fn=%cbf-pt%\miscellany\it3.asc
exit/b
rem lu: Jun-20-2023



:_
:rt
echo. & echo * Root.
set cbf-gd=https://docs.google.com/document/u/5/
set cbf-gs=https://docs.google.com/spreadsheets/u/0/
exit/b
creation date: Jul-14-2023



:_
:inco
:iw
echo. & echo * Interview code.
call pn r
set cbf-pt=%cbf-pt%\interview-code
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

set fp=* Add or Remove Programs.

rem lu: Apr-17-2019

echo.
echo %fp%

set cbf-app=appwiz.cpl

exit/b



:_+ CBF Testing (skw test-cbf, test cbf, cbf-testing, Batch File Meta Rubric)



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
:ccm
echo. & echo * Compile CMAC macros.
call pn belf
set cbf-pt=%cbf-pt%\%cbf-pd%
set cbf-app=%cbf-pt%\compile_cmac_files_1.bat
exit/b
rem lu: Aug-18-2021



::_
:repa
echo. & echo * Relative path.
set cbf-pt=\test\integration
exit/b
rem lu: Mar-31-2022



::_
:ambu
:ampe-bug
:wlcbf
echo. & echo * Get ampersands to work in cbf-urls. For example, get "sf wlcbf" to work. It has an ampersand in the cbf-url string.
echo.
echo * cbf-url: %cbf-url%
exit/b


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
:el-test
echo. & echo * Test where error level 4 is coming from.
rem call n vdi>nul
set cbf-fn=%cbf-pt%\Miscellany\message-to-xps.txt
exit/b
rem lu: Jan-31-2022



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

set fp=* Big shortcuts.

rem lu: Jul-2-2021

echo.
echo %fp%

call pn s>nul

set cbf-pd=big shortcuts

set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



:_ + Appdata



::_

:apda

:appd

:appdata

set fp=* App data.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf-pt=%appdata%

exit/b



::_

:lad

set fp=* Local app data.

rem lu: Dec-4-2018

echo.
echo %fp%

set cbf-pt=%localappdata%

exit/b



::_

:dtbg

set fp=* Desktop background.

rem lu: Feb-24-2020

echo.
echo %fp%

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

set fp=* Earl.

rem lu: Jun-30-2019

echo.
echo %fp%

set cbf-fn=%dropbox%\savannah\reach out\earl.asc

exit/b



::_

:sp7

set fp=* SP7.

rem lu: Feb-25-2020

echo.
echo %fp%

set cbf-fn=%dropbox%\savannah\reach out\sp7.asc

exit/b



::_

:ipad

set fp=* iPad.

rem lu: Oct-12-2020

echo.
echo %fp%

set cbf-fn=%dropbox%\savannah\reach out\ipad.txt

exit/b



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
echo. & echo * Golf history.
set cbf-url=https://docs.google.com/spreadsheets/d/1obCaXWSyvMNdC4X8BFAXx3sI3aZhKR80MO7N0B9KD1w/edit#gid=0
exit/b
creation date: Aug-29-2023



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



:_ (!efn)

:_ (!g)

@echo off

title CBF: %0

call m cel

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto %1



:_
:help

echo. & echo * Git functions.

echo. & echo * Usage: g [parameter(s)]
echo   Parameter 1: Function to execute.
echo   Parameter 2 (Optional): Path to walk prior to running Parameter 1.

echo. & echo * Batch file style: Multipurpose

echo.
echo     Cmd  Description
echo  ------  ------------------------------------------------------------------
echo  g acpm  Add, commit and push all files with custom message.
echo  g roll  Rollback to previous commit.
echo    g rv  Revert all changes in a folder.
echo    g sd  Status while disconnected.
echo   g psf  Push single file with timestamp message.
echo  g psfm  Push single file with custom message.
echo   g rsf  Revert single file.
echo       p  Push predetermined repositories and more.
echo      pa  Push of all preselected repositories.
echo      pl  Git pull, with TD parameter. Sibling of ps.
echo      pp  Pull then push, with TD parameter.
echo      ps  Time stamp push, same as "g acp", with also a TD parameter.
echo       s  Status while connected.
echo      sp  Super push, i.e. push all prewritten repositories.
echo     spl  Super pull, i.e. pull all prewritten repositories.
echo      ss  Super status, that is status for all selected repositories.

exit/b

lu:
Sep-27-2022



:_
   .--.      .--.      .--.      .--.      .--.               
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:pushb
:pushd

echo. & echo * 3a. Push changes into development branch.

echo.
cd | find /i "Development">nul
if not %errorlevel% == 0 echo * Error: This is the master, not the development, folder so exiting.
if not %errorlevel% == 0 echo exit/b

echo.
git push -u origin HEAD:development

exit/b



:_
:aro3

echo. & echo * 5a. Add remote origin for testing. This is a one-time action. (!arot)

echo.
echo.
git remote add origin https://github.com/jonathan-r-jones/for_git_testing_and_learning.git

exit/b



:_
:arot

echo. & echo * 5a. Add remote origin for testing. This is a one-time action. (!arot)

echo.
echo.
git remote add origin https://github.com/jonathan-r-jones/for_git_testing_and_learning.git

exit/b



:_
:arot2

echo. & echo * 5b. Add remote origin for testing. This is a one-time action.

echo.
echo.
git remote add origin https://github.com/jonathan-r-jones/test-eclipse-project.git

exit/b



:_
:aroq

echo. & echo * 5d. Add remote origin for Quickla. This is a one-time action.

echo.
echo.
git remote add origin https://github.com/jonathan-r-jones/quickla.git

exit/b



:_
:arob

echo. & echo * 5e. Add remote origin for Batch Files. This is a one-time action.

echo.
echo.
git remote add origin https://github.com/jonathan-r-jones/batch-files.git

exit/b



:_
:git_help

echo. & echo * 8. Read help.

echo.
git --help>"%temp%\git_help.txt"

"%cbf-default-text-editor%" "%temp%\git_help.txt"

exit/b



:_
:pushnv1_refer

echo. & echo * 3a. Push changes into Nov-1 development branch.

echo.
echo.
git push -u origin HEAD:development-Nov-1-2016

exit/b



:_
:push_nv
:pushnv
:pushnv_refer

echo. & echo * pushnv

echo.
echo.
git push -u origin HEAD:dev-Dec-5-2016

exit/b



:_
:pull62

echo. & echo * Pull Clean 62.

echo.
  
echo.
git pull clean6.2

exit/b



:_
:fetch
:fetch_branch

echo. & echo * Fetch branch.

echo.
rem Didn't work on Dec-20-2016.
rem git fetch && git checkout Dec-20-2016
rem git fetch && git checkout clean6.2

@echo on
git fetch
@echo off

exit/b

lu:
Jan-23-2017



:_
:pullo

echo. & echo * 9b. Pull original branch.

echo.
@echo on
git pull origin original
@echo off

exit/b



:_
:rpf

echo. & echo * Remove an individual file.

echo.
git rm -f %2

exit/b

lu:
Feb-16-2017



:_+ Push



::_
:p
:psh
:pus
:push
:rf_push

echo. & echo * Push changes to the cloud.

echo.
git push

exit/b



::_
:pushm
:rf_pushm

echo. & echo * Push changes into master.

echo.

git push -u origin master

exit/b



:_
:commit_poms

echo. & echo * Add and commit a Pom file.

echo.
call %0 csf pom.xml "Update version number."
call %0 csf Mercury-ear/pom.xml "Update version number."
call %0 csf Mercury-ejb/pom.xml "Update version number."
call %0 csf Mercury-web/pom.xml "Update version number."

exit/b

lu:
Apr-11-2017



:_
:acpmob

echo. & echo * Add, commit and push for batch file changes for mobility.

echo.
cd c:\mercury\mobility

call %0 acp

exit/b

lu:
Oct-24-2017



:_

Metadata: Track Size (!tsg)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Nov-6-2018   2,357     30,181      129

: Feb-9-2018   2,060     25,483      112

: May-9-2017   1,617     19,595       81



:_
:add_poms

echo. & echo * Add POM files for version labelling.

echo.
call %0 asf Mercury-ear/pom.xml

call %0 asf Mercury-ejb/pom.xml

call %0 asf Mercury-web/pom.xml

call %0 asf pom.xml

exit/b

lu:
May-3-2017



:_
:acpdoc
:acp_for_documentation_changes

echo. & echo * Add, commit and push for regression test document changes.

echo.
cd c:\mercury\documentation

call %0 acp

exit/b

lu:
May-30-2017



:_
:myst
:del_myst

echo. & echo * Delete mysteriously added png image files.

echo.
cd c:\projects\netbeans\mercury6

del Mercury-web\src\main\webapp\classic\resources\images\font-awesome_4-7-0_rss-square_16_16_000000_none.png
del Mercury-web\src\main\webapp\classic\resources\images\font-awesome_4-7-0_rss_16_16_000000_none.png
del Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins\4-Null-Reciever.png
del Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins\4-Null-Transmitter.png

exit/b

lu:
Apr-28-2017



:_
:delete_pngs

echo. & echo * Delete pngs copied over by David. I don't understand this.

echo.
call t m6
 
cd .\Mercury-web\src\main\webapp\classic\resources\images

echo Current folder: %cd%

del font-awesome*.png

exit/b

lu:
Jun-20-2017

skw: 
specific folder



:_
:delete_pngs_2

echo. & echo * Delete pngs 2.

echo.
call t m6
 
cd .\Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins

echo Current folder: %cd%

del Ant_Active_R.png
del Ant_Active_T.png
del Ant_Active_TR.png
del Ant_Expired_R.png
del Ant_Expired_T.png
del Ant_Expired_TR.png
del Ant_Generic_R.png
del Ant_Generic_T.png
del Ant_Generic_TR.png
del Dish_Active_R.png
del Dish_Active_T.png
del Dish_Active_TR.png
del Dish_Expired_R.png
del Dish_Expired_T.png
del Dish_Expired_TR.png
del Dish_Generic_R.png
del Dish_Generic_T.png
del Dish_Generic_TR.png

exit/b

lu:
Aug-3-2017



:_
:sr

echo. & echo * Check remote status.

echo.

git remote update

exit/b



:_
:pull_ba

echo. & echo * Pull batch files.

echo.
call t ba

call g pull

exit/b

lu:
Nov-17-2017



:_
:sss

echo. & echo * Check 4 statuses.

echo.
call cls

call %0 ss

call t mob

call %0 s

exit/b

lu:
Dec-5-2017



:_+ New Repo



::_
:add_bowling

echo. & echo * Add bowling folder to git.

echo.
echo "# bowling" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jonathan-r-jones/bowling.git
git push -u origin master

exit/b

lu:
Jan-12-2018



::_
:new_repo

echo. & echo * Create a new repository on the command line.

echo "# New Repo" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jonathan-r-jones/[put new repo name here].git
git push -u origin master

echo.

exit/b



::_
:new_repo_2

echo. & echo * Create a new repository on the command line.

git init
git commit -m "First commit."
git remote add origin https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git

git push -u origin master

echo.

exit/b



:_
:acpba_from_multiedit
:acp_for_batch_file_changes

echo. & echo * Add, commit and push for batch file changes.

echo.
call t cbf

call %0 acp

exit/b

lu:
Apr-13-2017



:_+ New Repository Steps



::_
:0

echo. & echo * Create a new repo from the command line.

call %0 1
call %0 2
call %0 3
call %0 4
call %0 5
call %0 6

exit/b
lu:
Nov-8-2023

git-steps-seriess-jj



::_
:1
:i
:init

echo. & echo * Step 1. Initialize Git in the current folder. This is a one-time generic action.

echo.
git init

exit/b

git-steps-seriess-jj



::_
:aro
:2

echo. & echo * Add remote origin for CBF URL.

call m distill-file-folder %cd%
git remote add origin https://github.com/jonathans-razor/%cbf-distilled-file-folder%.git

exit/b

git-steps-seriess-jj



::_
:3

echo. & echo * Add Readme.md.

echo # %cbf-distilled-file-folder%>Readme.md

exit/b

git-steps-seriess-jj



:_
:sfgit

echo. & echo * Surf to this repository in Git.

echo.
start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://github.com/jonathan-r-jones/composable-batch-files

exit/b

lu:
Jan-5-2018



:_
:delete_git_folder
:delg
:dgit

echo. & echo * Delete the hidden git folder and start over.

echo.
rd /q /s .git

exit/b

lu:
Jan-23-2017



:_
:idb

echo. & echo * 9b. Identify branch.

echo.

rem These didn't work. Jan-30-2017
rem git branch master
rem git branch Branch2

git branch clean6.2

exit/b

skw:
identify-branch



:_+ Tagging



::_
:set_tag

echo. & echo * Set the tag version number.

echo.
git tag %2

exit/b

lu:
Apr-25-2018



::_
:get_tag

echo. & echo * Get the tag version numbers.

echo.
echo.
git tag

exit/b

lu:
Apr-25-2018



::_
:puta

echo. & echo * Push tags.

echo.
echo.
git push --tags

exit/b

lu:
Apr-25-2018



:_+ Get Version Number



::_
:bv
:label
:num

echo. & echo * Get build version number.

echo.
git describe --all --long

exit/b

lu:
Jan-30-2017



::_
:vers

echo. & echo * Get the git version number.

echo.
git version

exit/b

lu:
Jun-7-2018



::_
:upda

echo. & echo * Update Git version.

echo.
git update-git-for-windows

exit/b

lu:
Sep-12-2022

Sep-12-2022: Current Version on XPS After picture: git version 2.37.3.windows.1
Sep-12-2022: Current Version on XPS Before picture: git version 2.34.1.windows.1



::_
:upda2

echo. & echo * Update Git via Git.

echo.
git clone https://github.com/git/git

exit/b

lu:
Sep-12-2022



:_
:track_info

echo. & echo * Set tracking information for this branch.

rem This didn't work properly.

echo.
git branch --set-upstream-to=master

exit/b

lu:
Jan-31-2017



:_+ Gitignore



::_
:a_ig

echo. & echo * Add particular file.

git add .gitignore

exit/b

lu:
Feb-16-2017



::_
:c_ig

echo. & echo * Create a gitinore file to the current directory.

if exist .gitignore echo.
if exist .gitignore echo * Error: File already there.
if exist .gitignore exit/b

dir /b>.gitignore

call npp .gitignore

exit/b

lu:
Jan-19-2018



::_
:ig
:vs_ig

echo. & echo * Make sure your master Gitignore is up-to-date, then copy it to the current location.

echo.
echo.

set current_location=%cd%

if exist .gitignore del .gitignore

call t rf_ig

call g pull

cd %current_location%

echo.
xcopy %cbf-fn%

ren VisualStudio.gitignore .gitignore

exit/b

lu:
Sep-11-2018



:_+ Common GitHub Commands



::_
:pn
:pulln

echo. & echo * Pull with a nickname location provider.

call t %2

call %0 pull  

exit/b



:_+ ACP Commands



::_
:acp

rem Add, commit and push.

call fn .git || exit/b

call %0 add-all-files || exit/b

call %0 commit-all-with-python-timestamp-message

rem  || exit/b

git push

exit/b

lu:
Oct-11-2023



::_
:acpm

echo. & echo * Add, commit and push with custom message.

if "%~2" == "" (
  call err A custom commit description is required. Jul-11-2023_3_51_PM  - %0.bat
  exit/b 1
)

call %0 add-all-files

call :cacm %1 %2

if errorlevel 1 exit/b

git push

exit/b

lu:
Sep-27-2022



::_
:acpb
:acpg

echo. & echo * Add, commit and push for big laptop.

call %0 add_files_generic_action

call %0 cbig

call %0 push

call %0 rf_status

exit/b

lu:
Dec-4-2018



::_
:mac

echo. & echo * ACP commands for the mac.

git add -A

git commit -m ""

git push

exit/b



:_
:ss_old
:super_status_old

echo. & echo * Do super status, that is status, including remote information, for all repositories.

rem This function is because it uses recursive calls into its own file but DOESN'T use
rem a single goto statement, which is an anti-pattern.

call s cbf

call s s

exit/b

lu:
Nov-30-2018



:_+ Custom Clones



::_
:cn

echo. & echo * Clone a custom repository using a different code style.

echo.
  
rem 1. Repository URL.
set origin_url=https://github.com/jonathan-r-jones/java_bouillabaisse.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git
set origin_url=https://github.com/bruderstein/NppTidy2.git
set origin_url=https://github.com/jamesmontemagno/MeetupManager.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git
set origin_url=https://github.com/jamesmontemagno/Hanselman.Forms.git
set origin_url=https://github.com/NASAWorldWind/WebWorldWind.git
set origin_url=https://github.com/Homebrew/brew.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git
set origin_url=https://github.com/edsnider/marvel-xfdemo.git
set origin_url=https://github.com/jonathan-r-jones/fresnel.git
set origin_url=https://github.com/jonathan-r-jones/ForGitTesting.git
call n fgt
set origin_url=%cbf-url%

rem 2. New folder path.
set new_folder_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh
set new_folder_path=c:\aa
set new_folder_path=c:\mercury
set new_folder_path=c:\projects\netbeans
set new_folder_path=%aa%
set new_folder_path=%aa%\repositories

rem 3. Branch name.
set branch_name=clean6.2
set branch_name=Branch2
set branch_name=jj_devops
set branch_name=develop
set branch_name=master

rem 4. Folder name.
set folder_name=tirem
set folder_name=bouillabaisse
set folder_name=ForGitTesting3
set folder_name=Batch_Files
set folder_name=MeetupManager
set folder_name=Documentation
set folder_name=HanselmanForms
set folder_name=WebWorldWind_June_2_2017
set folder_name=Homebrew_Jun_7_2017
set folder_name=s6_secondary_repo
set folder_name=Mobility
set folder_name=sencha
set folder_name=mercury6
set folder_name=Xamarin_Marvel_Demo
set folder_name=ForGitTesting
set folder_name=BusterFromFresnel
set folder_name=ForGitTesting2
set folder_name=ForGitTesting_%branch_name%_branch
set folder_name=fgt2

rem 5. Execute.

cd /d %new_folder_path%

echo.
git clone %origin_url% --branch %branch_name% .\%folder_name%

exit/b



::_
:cn_xu

echo. & echo * Clone all Xamarin University repos.

call t xu_r

git clone https://github.com/XamarinUniversity/AllCourseExercises.git

cd AllCourseExercises

git submodule init

git submodule update

exit/b

lu:
Jun-5-2018



:_+ Metadata



::_
:rf_status
:s
:status

echo. & echo * Show git status including remote update for folder: "%cd%"

echo.
git remote update

if errorlevel 1 exit/b

git status

exit/b

call col>nul



::_
:ls
:sd
:hl

echo. & echo * Show git local status (while disconnected) for folder: "%cd%"

echo.
git status

exit/b

What local status means is merely that you haven't changed any files on your local drive. It doesn't mean that you have the latest files.



::_
:l
:log

echo. & echo * Read the log. Among other things, you can use this to see when a GitHub repo was last updated.

git log>%temp%\git-log.txt

set cbf-parameter=%temp%\git-log.txt

call an no

call r

exit/b

Why does this command work in git bash? Because of the set command, I would think that it would not. Sep-27-2022



::_
:logp

echo. & echo * Prettify and read the log.

set cbf-parameter=%temp%\git-log.txt

git log --graph --oneline --decorate>%cbf-parameter%

call an no

call r

exit/b

lu:
Jun-21-2022



::_
:logo

echo. & echo * One line version.

set cbf-parameter=%temp%\git-log.txt

git log --all --oneline --decorate>%cbf-parameter%

call an no

call r

exit/b

lu:
Sep-27-2022



::_
:src
:info
:sour
:source

echo. & echo * Identify source repository information of your current folder.

echo.
git remote -v

exit/b

lu:
May-9-2018



:_+ Checkout via command line May-9-2019



::_
:fo

echo. & echo * Fetch origin. I think this may be roughly the same as "git remote update".

git fetch origin

exit/b

lu:
May-9-2019



::_
:cosma

echo. & echo * Check out sma branch.

echo.
git checkout -b sm_another_jenkins origin/sm_another_jenkins

exit/b

lu:
May-9-2019



:_
:pod

echo. & echo * Push origin develop.

echo.
git push origin develop

exit/b

lu:
May-9-2019



:_
:dlt

echo. & echo * Delete a local tag.

echo.
git tag -d

exit/b

lu:
Oct-7-2019

skw: 
how to delete a local tag



:_+ Git Help



::_
:hs

echo. & echo * Git help for a specific git command.

if "%~2" == "" (
  call err Percent 2, the name of the specific git command you want help on, is a required field. - %0.bat
  exit/b
)

set cbf-url=https://git-scm.com/docs/%2

call sf

exit/b

lu:
Dec-10-2019



::_
:hb

echo. & echo * Help displayed in the browser pointing to a local help file.

git help git

exit/b

lu:
Apr-24-2018



::_
:hc
:hlp

echo. & echo * Help overview displayed on the command line.

echo.

git help

exit/b



:_+ List Branches



::_
:lb
:lba

echo. & echo * List all branches.

call s
call g lbl
call g lbr

exit/b

lu:
Dec-13-2019



::_
:b
:shcu

echo. & echo * Show current branch.

echo.
git branch --show-current

exit/b

lu:
Dec-12-2019



::_
:lbg

echo. & echo * List grepped branches.

if "%~2" == "" (
  echo. & echo * Percent 2, grep search string, is required.
  exit/b
)

call pn sugi>nul

@echo on

echo.
git branch -a | %cbf-pt%\grep %2
@echo off

exit/b

lu:
Oct-23-2020



::_
:lbl

echo. & echo * List branches, local.

echo.
@echo on
git branch
@echo off

exit/b

lu:
Oct-7-2019



::_
:lbr

echo. & echo * List branches, remote.

git pull --prune

echo.
@echo on
git branch -r
@echo off

exit/b

lu:
Dec-22-2022
Dec-13-2019



::_
:lbjj

echo. & echo * List jj branches.

call n %1

call sf

exit/b

lu:
Dec-12-2019



:_+ Branch from Tag



::_
:cbft

echo. & echo * Create branch from tag.

if "%2" == "" (
  echo.
  echo * Error: Enter the version number.
  exit/b
)

set cbf-git_version=%2

call t ma

call s

echo.
@echo on
git checkout -b release-1-%cbf-git_version% tags/v1.%cbf-git_version%.0

git push --set-upstream origin release-1-%cbf-git_version%
@echo off

exit/b

lu:
Oct-14-2020

skw:
create a branch from a tag
create branch from release
create branch from tag
create branch from a tag
create release from tag
create tag from branch



::_
:cbft_final

echo. & echo * Create branch from tag, final.

call t e2dro

call s

echo.
@echo on
git checkout -b jrj-test tags/7.73.0.Final

git push --set-upstream origin jrj-test
@echo off

exit/b

lu:
Dec-19-2022



::_
:cbft_181

echo. & echo * Create branch from tag, version 1.18.1.

call t ma

call s

echo.
@echo on
git checkout -b release-1-18-1 tags/v1.18.1

git push --set-upstream origin release-1-18-1
@echo off

exit/b

lu:
Feb-12-2021



::_
:cbft_old

echo. & echo * Create branch from tag.

set cbf-git_version=17

call t ma

call s

echo.
@echo on
git checkout -b release-1-%cbf-git_version%-0 tags/v1.%cbf-git_version%.0

git push --set-upstream origin release-1-%cbf-git_version%-0
@echo off

exit/b

lu:
Oct-14-2020



::_
:cbft-s

echo. & echo * Create a branch based on a tag, special edition.

set cbf-git_version=14

call t ma

call s

echo.
@echo on
git checkout -b release_v_1_%cbf-git_version%_0_c tags/v1.%cbf-git_version%.0

git push --set-upstream origin release_v_1_%cbf-git_version%_0_c
@echo off

exit/b

lu:
Aug-20-2020



::_
:cbbt_1_11

echo. & echo * Create a branch based on a tag.

echo.
git checkout -b release_v_1_11_0 tags/v1.11.0

git push --set-upstream origin release_v_1_11_0

exit/b

lu:
May-14-2020



:_+ Tag Operations (!fctag)



::_
:add_tag
:taga

echo. & echo * Add tag.

rem git tag -a v1.4 -m "my version 1.4"
git tag -a version_api_0.0.1-20190618.233310-466__ui_0.0.1-20190618.233316-112 -m "version message"

exit/b

lu:
Jun-11-2019



::_
:lt
:lita
:ltag
:tags

echo. & echo * List tags.

echo.
git tag

exit/b

lu:
Jun-11-2019



::_
:ft

echo. & echo * Fetch tags.

echo.
git fetch --tags

exit/b



::_
:puor
:push_tag
:tagp

echo. & echo * Push origin.

echo.
git push origin

exit/b

lu:
Jun-11-2019



::_
:detalo

echo. & echo * Delete tag, local.

if "%~2" == "" (
  echo.
  echo * Error: Parameter 2 needs to be the tag you wish to delete.
  exit/b
)

echo.
git tag -d %2

rem This also works I think: git tag --delete v1.3.0

exit/b

lu:
Oct-15-2019

skw:
delete a tag



::_
:deta

echo. & echo * Delete tag, local and remote.

if "%~2" == "" (
  echo.
  echo * Error: Parameter 2 needs to be the tag you wish to delete.
  exit/b
)

call %0 detalo %2

git push origin :refs/tags/%2

exit/b

lu:
Feb-6-2020



:_+ Delete branch.



::_
:debrro

echo. & echo * Delete branch, remote.

if "%~2" == "" (
  err * Percent 2, branch name, is a required field.
)

echo.
git push origin --delete %2

exit/b

lc:
(!delb)

rem:
This worked! - Mar-8-2019
The below is is the oldest date I can find in my batch files.
This worked! - Oct-13-2016

skw:
delete_branch



::_
:debrlo

echo. & echo * Delete branch, local.

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

echo.
git branch -D %2

exit/b

Footnote
>< >< >< 

git branch -D branch name (You are sure you want to delete the repo)

git branch -d branch name



::_
:db
:debr

echo. & echo * Delete branch, local and remote.

if "%~2" == "?" goto help
if "%~2" == "" goto help
set cbf-branch-to-delete=%2
call g sb develop

if errorlevel 1 (
  call err Can't find master branch. Mar-21-2023-14-57 - %0.bat
  exit/b
)

if "%cbf-branch-to-delete%" == "master" (
  echo.
  call err You probably shouldn't delete the master branch. - %0.bat
  exit/b
)

if "%cbf-branch-to-delete%" == "main" (
  echo.
  call err You probably shouldn't delete the main branch. Jul-11-2023_3_52_PM - %0.bat
  exit/b
)

set cbf-branch=
call %0 debrlo %cbf-branch-to-delete%
call %0 debrro %cbf-branch-to-delete%
call git remote update

exit/b

:help

echo. & echo * Parameter 2, the name of the branch to delete is required.

exit/b



:_+ Merge Tool and Merging



::_
:merg
:merge

echo. & echo * Straight merge of other branch into current branch favoring the other branch content.

if "%~2" == "" (
  call err You must specify which branch you want to merge from. Jul-11-2023_3_52_PM - %0.bat
  exit/b
)

echo.
git merge %2

exit/b

lu:
Mar-3-2020

>< >< >< Footnote:

If you get a message something like the following:

merge: Branch3 - not something we can merge

Did you mean this?

For me it meant that I need to run git checkout Branch3 on my local repository before trying 
to merge it. It must have a local version of Branch3. Mar-3-2020



::_
:merg2

echo. & echo * Original merging sample code from GitHub.

echo.

Step 1: From your project repository, bring in the changes and test.

git fetch origin
git checkout -b release/v140 origin/release/v140
git merge master

Step 2: Merge the changes and update on GitHub.

git checkout master
git merge --no-ff release/v140
git push origin master

exit/b

lu:
Dec-10-2019



::_
:merg_sq

echo. & echo * Merge from the feature branch and squash all of the commits of the feature branch into ^
a single commit.

if "%~2" == "" (
  echo.
  echo * Error: You must specify which branch you want to merge from.
  exit/b
)

echo.
git merge --squash %2

exit/b

lu:
Jul-27-2020

>< >< >< Footnote:

Learned about this from a YouTube video.



::_
:mede

echo. & echo * Merge develop. Merge the develop branch into your current branch, thereby updating your branch with the latest changes from develop.

echo.
git merge develop

exit/b

lu:
May-9-2019



::_
:mth

echo. & echo * Merge tool help.

echo.

git mergetool --tool-help

exit/b

lu:
Jan-22-2018



::_
:mts

echo. & echo * Set default merge tool to use.

echo.

git mergetool --tool=codecompare
rem git mergetool --tool=vimdiff3

exit/b

lu:
Jan-22-2018



::_

echo. & echo * Sean's aliases.

echo.

alias g='git' 
alias ga='git add' 
alias gaa='git add .' 
alias gaaa='git add --all' 
alias gau='git add --update' 
alias gb='git branch' 
alias gbd='git branch --delete ' 
alias gc='git commit' 
alias gcm='git commit --message' 
alias gcf='git commit --fixup' 
alias gco='git checkout' 
alias gcob='git checkout -b' 
alias gcom='git checkout master' 
alias gcos='git checkout staging' 
alias gcod='git checkout develop' 
alias gd='git diff' 
alias gda='git diff HEAD' 
alias gi='git init' 
alias glg='git log --graph --oneline --decorate --all' 
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all' 
alias gm='git merge --no-ff' 
alias gma='git merge --abort' 
alias gmc='git merge --continue' 
alias gr='git rebase' 
alias gs='git status' 
alias gss='git status --short' 
alias gst='git stash' 
alias gsta='git stash apply' 
alias gstd='git stash drop' 
alias gstl='git stash list' 
alias gstp='git stash pop' 
alias gsts='git stash save' 
alias gl="git pull" 
alias gp="git push"

exit/b

lu:
Apr-16-2019



::_
:mema

echo. & echo * Merge master.

echo.

git merge master

exit/b

lu:
Dec-10-2019



::_
:master_merge

echo. & echo * Merging strategy.

echo.

rem Step 1: From your project repository, bring in the changes and test.

git fetch origin
git checkout -b release/v140 origin/release/v140
git merge -s ours master

rem Step 2: Merge the changes and update on GitHub.

git checkout master
git merge --no-ff release/v140
git push origin master

exit/b

lu:
Dec-11-2019



::_
:mmou
:merge_using_ours

echo. & echo * Merge master into the release branch using the "ours" stategy.

echo.

call sb release/v140

call meours

exit/b

lu:
Dec-10-2019



::_
:merge_using_ours
:muo

echo. & echo * Merge the specified branch into the current branch using the "ours" strategy, that is the current branch wins.

if "%~2" == "" (
  echo.
  echo * Error: You must specify which branch you want to merge.
  exit/b
)

echo.

git merge -s ours %2

exit/b

lu:
Mar-3-2020



::_
:meab

echo. & echo * Merge abort can only be run after the merge has resulted in conflicts.

echo.

git merge --abort

exit/b

lu:
Dec-10-2019



::_
:meth

echo. & echo * Theirs strategy with Matt.

echo.
git merge --strategy-option theirs release/v171

exit/b

lu:
Mar-4-2020



::_
:meth

:metheirs

echo. & echo * Merge using the "theirs" strategy.

exit/b

lu:
Dec-10-2019



:_+ Diff (!fcdiff)



::_
:df
:dif
:diff

echo. & echo * Difference between 2 branches.

if "%~3" == "" (
  echo.
  echo * Percent 3, second branch to compare, is a required field.
  exit/b
)

git diff %2..%3

exit/b

lu:
Nov-5-2020



::_

:10

echo. & echo * 10. Diff head.

echo.
git diff HEAD

exit/b



::_
:diff2

echo. & echo * Diff.

git diff

exit/b

lu:
Aug-24-2022



:_+ Rebase



::_
:re
:reba
:rebase
:rede

echo. & echo * Rebase from develop branch.

rem I had some pain with this code so I am not too happy with it.

echo.
git fetch
git rebase origin/develop

exit/b

lu:
Jan-24-2019



::_
:rebase_m
:rema

echo. & echo * Rebase from master branch. How you get a git branch to update from its source master branch.

echo.
git fetch
git rebase origin/master

exit/b

Footnote
>< >< >< 

lu:
Jan-24-2019

Use "git rebase master" ONLY if master is local only! - Niroop, Nov-5-2020



::_

echo. & echo * Rebase test that Ben B. and Thuy were doing. - Untested: for reference only

git pull origin dashboard --rebase
[9:32 AM] Bergeron, Benjamin D (CTR)
    git branch -u upstream/foo
?[9:33 AM] Bergeron, Benjamin D (CTR)
    git push origin master
?[9:34 AM] Bergeron, Benjamin D (CTR)
    git pull origin master --rebase
?[9:42 AM] Bergeron, Benjamin D (CTR)
    git rebase --continue

exit/b

lu:
Jun-30-2021



:_+ Switch Branch Operations



::_
:prbr

echo. & echo * Switch to previous branch.

echo.
git checkout -

exit/b

lu:
Nov-5-2021



::_
:rebr

echo. & echo * Rename current branch.

if "%~2" == "" echo. & echo * Error: Parameter 2 is required. _,.-'~'-.,_(`~ & exit/b

echo.
git branch -M %2

exit/b

lu:
Nov-5-2021



::_
:sb

echo. & echo * Switch to an existing branch.

if "%~2" == "?" goto help

set cbf-branch=%2

if "%~2" == "j" (
  set cbf-branch=jrj-test
  goto checkout
)

if "%~2" == "m" (
  set cbf-branch=main
  goto checkout
)

if "%~2" == "mn" (
  set cbf-branch=main
  goto checkout
)

if "%~2" == "" (
  set cbf-branch=master
  goto checkout
)

if "%~2" == "mast" (
  set cbf-branch=master
  goto checkout
)

if "%~2" == "ms" (
  set cbf-branch=master
  goto checkout
)

if "%~2" == "np" (
  call n %2
  goto checkout
)

if "%~2" == "np2" (
  call n %2
  goto checkout
)

if "%~2" == "r" (
  set cbf-branch=releaseNew
  goto checkout
)

if "%~2" == "rn" (
  set cbf-branch=releaseNew
  goto checkout
)

if "%~2" == "rene" (
  set cbf-branch=releaseNew
  goto checkout
)

:checkout

echo.
git checkout %cbf-branch%

if errorlevel 1 exit/b
call pl
call s

exit/b

:help

echo. & echo * Parameter 2, branch to swtich to, descriptions

echo   blank, m, ms or mast: master
echo   mn: main
echo   np: Now playing
echo   np2: Now playing 2
echo   r or rn: releaseNew
echo   t: jrj-test

exit/b

lu:
Oct-27-2022



::_
:sbd

echo. & echo * Set branch to develop.

call %0 sb develop

exit/b



::_
:cbj

echo. & echo * Create branch jrj-test.

rem qq
call %0 cbc jrj-test

exit/b



::_
:sbj

echo. & echo * Set branch to jrj-test.

call %0 sb jrj-test

exit/b



::_
:sbm

echo. & echo * Set branch to master.

call %0 sb master

exit/b



::_
:sbr

echo. & echo * Set branch to release.

call %0 sb r

exit/b



::_
:sbp

echo. & echo * Switch to previous branch. A little trick I learned from Fireship.io.

echo.
git checkout -

call pl

call s

exit/b

lu:
Jun-21-2022



::_
:sdb

echo. & echo * Switch to default branch.

if "%~2" == "" goto help

set cbf-branch=

call n %2

if "%cbf-branch%" == "" (
  echo. & echo * Error: cbf-branch is not defined for alias "%2".
  exit/b
)

echo.
git checkout %cbf-branch%

call pl

call s

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Alias.

exit/b

lu:
Jun-15-2022



:_
:dolo
:download

echo. & echo * Download Git for windows.

call sf download_git>nul

exit/b

lu:
Nov-1-2021



:_+ Unstage(?)



::_
:unst

echo. & echo * Unstage a single file according to Git inline help.

if /i "%~2" == "" (
  echo.
  echo * Parameter 2 is required.
  exit/b
)

git restore --staged %2

exit/b

lu:
Nov-1-2021



::_
:unst2

echo. & echo * Unstage a single file, version 2 from Traversy Media.

if /i "%~2" == "" (
  echo.
  echo * Parameter 2 is required.
  exit/b
)

git rm --cached %2

exit/b

lu:
Nov-1-2021



::_
:unst1

echo. & echo * Unstage for commit. If Percent 2 is blank, all files will be unstaged.

git reset HEAD %2

exit/b

Footnote
>< >< >< 

lu:
Nov-27-2017

This worked for Niroop's presentation on Nov-5-2020.




:_
:god

echo. & echo * Graph, online and decorate.

git log --graph --decorate

exit/b

lu:
Feb-4-2022



:_
:aec
:ce
:ec
:empt
:empty
:teb

echo. & echo * Trigger an empty build on the develop branch.

call t ma

call :sb develop

call a

echo.
git commit --allow-empty -m "Empty commit that triggers a Jenkins build."

call p

exit/b

lu:
Jun-4-2020

skw:
Allow empty commit.



:_+ Reversion Family (!fccrv)



::_
:rv

echo. & echo * Revert local changes by David F.

git reset --hard -q HEAD

exit/b

lu:
Mar-01-2023



::_
:rv1
:rv-lo
:rv_local

echo. & echo * Revert local changes.

echo.
git reset --hard HEAD
git clean -f
git pull

exit/b

lu:
Aug-7-2018

rem:
If you don't care about any local changes and just want a copy from the repository.
This didn't seem to work on Jan-31-2017.

skw: 
Blow away local changes.
Revert all changes from this folder.
Revert all local changes.
revert-series
specific folder



::_
:rvfdco

echo. & echo * Revert folder by checking out all.

echo.

git checkout *.*

exit/b

lu:
Jul-19-2021
May-30-2018

rem
Last successful run date: May-30-2018
Did not work on Sep-30-2022.



::_
:rv-old

echo. & echo * Googled "What's the easiest way to blow away all local changes in git?"

echo.
git reset --hard
git clean -fxd

exit/b

lu:
Jan-16-2023



::_
:rv-under-construction
:rvfd
:rvf
:rv2

echo. & echo * Under construction. Try using checkout. Revert local according to Fireship.io video. Local changes will be lost.

echo.

git fetch origin
git reset --hard origin/master
git clean -df

exit/b

lu:
Sep-27-2022

This worked on Feb-13-2023.
This worked on Dec-13-2022.



::_
:roll
:roll_back
:rollback
:unco
:uncommit

echo. & echo * Rollback to previous commit used by Matt A. and me on Mar-26-2021 and earlier.
git revert -m 1 HEAD

exit/b

lu:
Sep-27-2022

Worked on Mar-06-2023.
Didn't work on Dec-21-2022.



::_
:roll_back_repo
:roll_back_server

echo. & echo * Roll back the server repository to your what's on your local version. Use with CAUTION.

rem How do you roll back in git?

rem This worked on David's machine on Aug-3-2017.

echo.
git push -f

exit/b

lu:
Jul-19-2018



::_
:roll_back_repo_1_commit

echo. & echo * Move the whole repo back a single check-in version.

call :reset_head_1

call :roll_back_repo

exit/b

lu:
Sep-3-2020

Outcome:

In my test on FGT on Jun-12-2020, this worked as expected. It rolled back a single commit.

This didn't work on Cart on Jun-10-2020! I'm not so sure this didn't work. My theory is that 
it rolled back the morning commit. I thought it would roll back a merge. So how do you roll 
back a merge then? That is what I don't know. Jun-12-2020

I created a pull request to merge the release_v_1_11_0 into the Develop branch. While trying 
to fix merge conflicts in the GitHub GUI in 3 files, I accidentally merged the Develop branch 
into the release_v_1_11_0 branch, instead of the other way around. When I did a rollback for 
what I thought was going to being my single bad commit, Git rolled back the release branch to 
May 14th. Does anyone have a recent copy of the release_1_11_0 branch on their local drive? I 
have a copy but there may be an issue with it.

This worked on FGT and Fresnel on Jul-19-2018.

This worked on CBF on Mar-22-2019.

You feel like your last check-in broke the build. USE WITH CAUTION.

One reason I like this command is that it moves back slowly so will help you be careful not to 
rollback to far.



::_
:rvsv
:sv

echo. & echo * Roll back to a specific version. Detached head means you are no longer on a branch, you have checked out a single commit in the history.

git checkout 6df905288039e634118b63719b77bff4a5566e1b

exit/b

lc:
(!rb)

lu:
Jun-10-2020
Aug-15-2017

rem:
Aug-31-2022
git checkout 9eb11def09c363b1524ad97e8d9c7dea58633f15

Running this will detach your head. To reattach head, run reattach_head.

rem I validated that this works on ForGitTesting on Aug-17-2017.

git checkout a18e821
git checkout 2691f3b
git checkout a703855
git checkout a18e821

S6 @ Jul-10-2017
git checkout 959308e 

S6 @ Aug-28-2017 (Fresnel from c. Jun-26-2018)
git checkout b3444ed

BusterFromFresnel @ Jul-27-2018
git checkout c1ceb68e87e438a79f2455b7b6f7860b94e01683

Jun-10-2020 - Cart
git checkout 5ca5b80a69f23fbaf0bbaea57a501b614206e75f
git checkout 5ca5b80a69f23fbaf0bbaea57a501b614206e75f

git checkout b65b32d883e6b5d3caf410c1bbd7791013f2edda
git checkout 271bf2ee276ba309252f462fb24a15167b6ac827
git checkout 18822b0b58d8abc8b9ab9340998d1018568ee3cb
git checkout 045821e9f8028af5a0619f90ad79b0f245f06321

skw:
label
roll back to a particular version
tag



::_
:dhsc

echo. & echo * After detaching head, you can create a new branch at the detached head state.

rem created: Sep-30-2022

if "%~2" == "" (
  call err Percent 2, new branch name, is a required field. Jul-11-2023_3_52_PM - %0.bat
  exit/b
)

git switch -c %2

exit/b



::_
:reat
:reattach
:reattach_head

echo. & echo * Reattach a detached head.

git checkout master

exit/b

lu:
May-2-2017

rem:
git checkout clean6.2

skw:
how to reattach head



::_
:rvallp

echo. & echo * Revert all PERSISTENT changes from m6 and s6.

echo.
  
call %0 delete_pngs

call %0 delete_pngs_2

call %0 rvp

exit/b

lu:
Aug-30-2017



::_
:base

echo. & echo * Return to baseline configuration after a build. Exercise caution as this will destroy some local changes.

call %0 rvall

call %0 acp

cls

call %0 ss

exit/b

lu:
Aug-31-2017



::_
:clean_report

echo. & echo * Report on untracked files.

git clean -n

exit/b

lu:
Sep-14-2017



::_
:rv_pe

echo. & echo * Revert persistent files. Revert files in need of constant reversion.

echo.

cd \projects\netbeans\sencha\html5application\public_html

git checkout bootstrap.css
git checkout bootstrap.js
git checkout classic.json
git checkout classic.jsonp
git checkout modern.json
git checkout modern.jsonp
git checkout sass/example/bootstrap.js
git checkout sass/example/bootstrap.json
git checkout sass/example/bootstrap.jsonp
git checkout sass/example/example.css

cd c:\projects\netbeans\sencha

git checkout HTML5Application/nbproject/private/private.xml
git checkout HTML5Application/public_html/classic/src/view/dashboard/ContactsWidget.js

git checkout HTML5Application/public_html/modern/src/utils/NetConfig.js
git checkout HTML5Application/public_html/classic/src/utils/NetConfig.js

exit/b

lu:
Aug-31-2017



::_
:reset_head_2

echo. & echo * Reset head by 2 id number versions. This enabled not to have to merge.

rem Step back 2 versions.

echo.
git reset --hard "HEAD~2"

exit/b

lu:
Aug-7-2018

skw:
reverse 2



::_
:ruf
:clean

echo. & echo * Remove untracked folders and files. Use with caution.

echo.
git clean -d -f

exit/b

lu:
Aug-17-2018



::_
:back
:reset_head_1

echo. & echo * The git equivalent of the back button. Reset head by 1 id number version.

rem Step back 1 version.

rem Test on FGT.

echo.
git reset --hard "HEAD~1"

exit/b

lu:
Aug-7-2018

* * * Outcome: This worked on Aug-6-2020.



::_
:rvrrm

echo. & echo * Revert back to what's in the remote repo, master branch.

rem I was getting this message: Your branch is ahead of 'origin/master' by 5 commits.

echo.
git reset --hard origin/master

exit/b

lu:
Oct-15-2019



::_
:fix
:fx

echo. & echo * Fix last updated file by reverting and pulling it from repository.

call t s

call %0 rvsf last_updated_log.txt

call g pl

exit/b

lu:
Mar-4-2019



::_
:lere

echo. & echo * Leah's revert command. A benefit of using revert versus reset is that revert keeps the history.

echo.
git revert -m 1 e5314f8c7bfdb6076fe0e980c0721cee16f2bd53

exit/b

lu:
Feb-13-2023
Mar-6-2020
Nov-6-2019

Does this command do only local changes?

Revert a merge. This worked on Mar-6-2020.
rem Where the hash is the hash of the commit you want to revert.
git revert -m 1 66482d22af00ff9ed368e2dea821133fff5f7f35
git revert -m 1 c8e8a0252de705c09800700e7c6b17192bf72e02 



:_
:st

echo. & echo * Git status. Local examination only.

git status

exit/b

lu:
Aug-23-2022



:_
:br

echo. & echo * Git branch.

echo.
git branch

exit/b

lu:
Aug-23-2022



:_+ Vetted Pull and Push - Sep-07-2022



::_
:pl
:pul
:pull

echo. & echo * Pull. Get the latest code from the current branch.

echo.
 
git pull

exit/b



:_+ Single File Operations Family



::_
:csf

echo. & echo * Commit single file with timestamp description.

if "%~2" == "" (
  call err A filename is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b 6
)

call ujt

set /p commit_description=<%tmp%\java_timestamp.txt

echo.
call git commit -m %commit_description%

exit/b



::_
:psf

echo. & echo * Fully automatic push single file with timestamped message.

call :asf %1 %2
if errorlevel 1 exit/b
call :csf %1 %2
if errorlevel 1 exit/b

git push

exit/b



::_
:ac

echo. & echo * Add and commit all files with message.

if "%~2" == "" (
  call err A commit message is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b
)

call %0 add

call %0 commit %2

rem You could also do: git commit -am "easy"

exit/b

lu:
Sep-21-2022



::_
:asf
:add_file

echo. & echo * Add single file.

rem add single file, add specific file

if "%~2" == "" (
  call err A filename is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b 6
)

git add %2

exit/b



::_
:csfm

echo. & echo * Commit single file with message.

if "%~2" == "" (
  call err A filename is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b 6
) 

if "%~3" == "" (
  c all err A commit description is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b 1
) 

set commit_description=%3

git commit %2 -m %commit_description%

exit/b



::_
:psfm

echo. & echo * Push single file with custom message.
echo.

call :asf %1 %2
if errorlevel 1 exit/b
call :csfm %1 %2 %3
if errorlevel 1 exit/b

git push

exit/b



::_
:rsf
:rv_sf
:rvsf

echo. & echo * Revert or check out single file.

rem This worked on CBF files. Mar-22-2019

if "%~2" == "?" goto help
if "%~2" == "" goto help

git reset head %2
git checkout %2

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: File to revert.

exit/b

lu:
Feb-18-2022



:_+ Add Family



::_
:4
:a
:add
:add-all-files

rem echo. & echo * Add all files.

git add --all

exit/b

git-steps-seriess-jj



::_
:add_dot
:af

echo. & echo * Add files in this folder and its children folders.

git add .

exit/b



:_
:po
:push_origin

echo. & echo * Push origin.

echo.

rem If %2 is empty, this still works.
git push --set-upstream origin %2

exit/b

lu:
Oct-18-2019



:_
:co_sf

echo. & echo * Check out single file based on file's alias.

echo.
  
call n %2

git checkout %cbf-fn%

exit/b

lu:
Mar-7-2019



:_+ Stash and Pop



::_
:stas
:stash

echo. & echo * Stashing changes allows you to do a get-latest (or bring in someone's else's code) without losing your local changes.

echo.

git stash

exit/b

lu:
Jan-22-2018



::_
:stas-l

echo. & echo * List your stashes.

echo.

git stash list

exit/b

lu:
Nov-5-2021



::_
:stas-a

echo. & echo * Apply leaves the stash in place whereas pop "pops" it off the stack.

echo.

git stash apply

exit/b

lu:
Sep-28-2022



::_
:stas-u

echo. & echo * Use a stash based on index number passed in.

echo.
git stash apply 0

exit/b

lu:
Nov-5-2021



::_
:pop
:unstash

echo. & echo * Pop takes stashed changes and reapplies them.

echo.

git stash pop

exit/b

lu:
Feb-11-2020



::_
:stas-c

echo. & echo * Clear the stash list.

echo.
git stash clear

exit/b

lu:
Sep-28-2022



::_
:sap

echo. & echo * Stash and pop.

echo.

call :stash

call :pull

call :pop

rem The next step would be to fix the merge conflict and then run "g acp".

exit/b

lu:
Jan-22-2018



:_
:ch
:chec

echo. & echo * Git checkout.

rem created: Sep-30-2022

if "%~2" == "" (
  call err The name of the branch you wish to check out is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b
)

git checkout %2

exit/b



:_+ Configuration and Author Settings (!fcc, !fcconfig)

Verb Prefixes
e = Edit
g = Get
h = Show
s = Set
u = Unset

Noun Prefixes
a = All
l = Local
g = Global
s = System

cat ~/.gitconfig



::_
:sg-lofi

echo. & echo * Fix long filenames issue for global configuration.

git config --global core.longpaths true

exit/b

lu:
Nov-22-2022

skw:
filename too long github



::_
:sl-lofi

echo. & echo * Fix long filenames issue for local configuration.

git config core.longpaths true

exit/b

lu:
Dec-9-2016

skw:
filename too long github



::_
:h-a

echo. & echo * Show all configuration settings.

rem show configuration, git-config
cls
call :g-s
call :g-g
call :g-l

exit/b

skw:
git settings



::_
:sg-sslf

echo. & echo * Set global ssl verify to false.

echo.
git config --global http.sslVerify false

exit/b

lu:
Jan-26-2022



::_
:s-cpat

echo. & echo * Cache the personal access token credential.

git config --global credential.helper cache

exit/b

lu:
Apr-7-2022



::_
:s-asr

echo. & echo * Set push.autoSetupRemote to true.

git config --global push.autoSetupRemote true

exit/b



::_
:s-sslt

echo. & echo * Set local http.sslverify to true.

git config http.sslverify true

exit/b



::_
:s-crlf

echo. & echo * When it comes to line endings, emulate what RestSharper has adopted.

rem See: https://github.com/restsharp/RestSharp/blob/develop/CONTRIBUTING.md

git config --global core.autocrlf true

exit/b

lu:
May-31-2018

Footnote
>< >< ><

The folllowing command is used for Mac and Linux I think. Jan-27-2022
git config --global core.autocrlf input

git config --global core.autocrlf true



::_
:coau

echo. & echo * Configure author.

git config user.name "[put--name-of-user-of-interest-here]"

exit/b



::_
:s-aust

echo. & echo * Run author and store.

call %0 au

call %0 stor

exit/b

lu:
Dec-5-2018



::_
:s-g

echo. & echo * Add global setting.

git config --global %1 %2

exit/b



::_
:au
:auth
:author
:s-auth

echo. & echo * Set GitHub author and email. Note: Please don't confuse this with the Bitbucket author signature.

git config --global user.name "jonathan-r-jones"
git config --global user.email "jonathan.r.jones.3@gmail.com"

exit/b



::_
:au-bit
:author_bit
:s-aubit

echo. & echo * Configure BitBucket author and email. Note: Please don't confuse this with the GitHub author signature.

@echo on
git config --global user.name "Jonathan17"
git config --global user.email "jonathan.r.jones@nesassociates.com"
@echo off

exit/b



::_
:author_devops
:s-author-devops

echo. & echo * Configure BitBucket author and email.

@echo on
git config --global user.name "mercury_devops"
git config --global user.email "nes.mercury@nesassociates.com"
@echo off

exit/b




::_
:heop

echo. & echo * Credential helper options.

git config credential.helper "$helper $options"

exit/b



::_
:s-uncach
:uncach
:unstor

echo. & echo * Uncache/unstore global credential.

git config --global --unset credential.helper

exit/b

lu:
Dec-21-2022 Seemed to work.
Jan-20-2022



::_
:unstor-g2

echo. & echo * Uncache/unstore global credential.

git config --global --unset credential.https

exit/b



::_
:unstor-s

echo. & echo * Uncache/unstore system credential.

git config --system --unset credential.helper

exit/b

lu:
Dec-21-2022 Seemed to work.



::_
:g-sg

echo. & echo * Show system and global configuration settings. Note local settings are not shown.

call :g-s

call :g-g

exit/b

git config --list

Footnote
>< >< ><

:Local configuration settings will overwrite global and global will overwrite system.

list - 20 lines
s http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
s http.sslbackend=openssl
s diff.astextplain.textconv=astextplain
s filter.lfs.clean=git-lfs clean -- %f
s filter.lfs.smudge=git-lfs smudge -- %f
s filter.lfs.process=git-lfs filter-process
s filter.lfs.required=true
s credential.helper=manager-core
s g core.autocrlf=true
s core.fscache=true
s core.symlinks=true
s pull.rebase=false
s credential.https://dev.azure.com.usehttppath=true
s init.defaultbranch=main
g user.name=Jonathan R. Jones
g user.email=jonathan.r.jones.3@gmail.com
g gui.recentrepo=C:/projects/netbeans/sencha
g gui.recentrepo=C:/projects/netbeans/mercury6
g ui.recentrepo=D:/aa/repositories/fgt
g s core.autocrlf=true

system - 14 lines
http.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
http.sslbackend=openssl
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
credential.helper=manager-core
core.autocrlf=true
core.fscache=true
core.symlinks=true
pull.rebase=false
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=main

global - 6 lines
user.name=Jonathan R. Jones
user.email=jonathan.r.jones.3@gmail.com
gui.recentrepo=C:/projects/netbeans/sencha
gui.recentrepo=C:/projects/netbeans/mercury6
gui.recentrepo=D:/aa/repositories/fgt
core.autocrlf=true

local - 9 lines
core.repositoryformatversion=0
core.filemode=false
core.bare=false
core.logallrefupdates=true
core.ignorecase=true
remote.origin.url=git@github.com:jonathan-r-jones/Composable-Batch-Files.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.master.remote=origin
branch.master.merge=refs/heads/master



::_
:g-s

echo. & echo * Show system configuration settings.

echo.
git config --system --list

exit/b



::_
:g-g

echo. & echo * Show global configuration settings.

echo.
git config --global --list

exit/b



::_
:g-l

echo. & echo * Show local configuration settings

echo.
git config --local --list

exit/b



::_
:authwk
:g-auwk

echo. & echo * Author for work email.

call k authwk

exit/b



::_
:eg

echo. & echo * Edit the current global configuration.

echo.
git config --global --edit

exit/b



::_
:ug-ue

echo. & echo * Unset global user name.

echo.
git config --global --unset user.name
git config --global --unset user.email

exit/b

lu:
Dec-21-2022
Jan-27-2022

skw:
How to unset a variable.



::_
:sl-c
:stor
:s-stor

echo. & echo * Store credentials locally so that Git stops asking for credentials after each push.

git config credential.helper store

exit/b

Footnote
>< >< ><

I used this on my VDI on Jan-20-2022 to store my Personal Access Token so I wouldn't have to retype every time.



:_
:co

echo. & echo * Git checkout.

if "%~2" == "" goto help

if not exist "%~2" (
  call err %2 doesn't exit. Feb-17-2023-13-37 - %0.bat
  exit/b
)

git checkout %2

exit/b

lu:
Feb-17-2023

:help

echo. & echo * Parameter Description(s):
echo. & echo * Parameter 2: Name of the file you wish to check out.

exit/b



:_+ Git Status Evaluation Family



::_
:commit-changes-if-dirty
:dirt

rem echo. & echo * Commit changes if dirty.

call fn .git || exit/b

call s | find /i "working tree clean">nul

if errorlevel 1 (
  goto :acp
) else (
  echo. & echo * No changes.
)

exit/b

lu: 
Oct-11-2023


::_
:is_working_tree_clean

echo. & echo * Is working tree clean?

call t %1>nul

call s | find /i "working tree clean">nul

set current_folder=%cd%

if %errorlevel% == 1 (
  echo.
  echo * Warning: Dirty tree at %current_folder%.
  exit/b 1
)

exit/b

lu: Mar-28-2019


::_
:evaluate_folders_git_status

echo. & echo * Evaluate folder's git status.

rem echo.

call t %2>nul

set current_folder=%cd%

call m clear_errorlevel_silently

call s>%tmp%\git_status_message.txt

:
type %tmp%\git_status_message.txt | find /i "diverged">nul

if %errorlevel% == 0 (
  echo.
  echo * Diverged code found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)

:
type %tmp%\git_status_message.txt | find /i "behind">nul

if %errorlevel% == 0 (
  echo.
  echo * Behind origin found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)

:
type %tmp%\git_status_message.txt | find /i "modified:">nul

if %errorlevel% == 0 (
  echo.
  echo * Modified file found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)

:
type %tmp%\git_status_message.txt | find /i "Untracked files:">nul

if %errorlevel% == 0 (
  echo.
  echo * Untracked file found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)

:
type %tmp%\git_status_message.txt | find /i "ahead">nul

if %errorlevel% == 0 (
  echo.
  echo * Ahead of origin found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)

exit/b 0

lu:
Apr-1-2019



:_+ Commit Family



::_
:5
:captm
:commit-all-with-python-timestamp-message
:commt

echo. & echo * Commit all files with Python timestamp message.

call ph dtt>%tmp%\python-timestamp.txt

set /p commit-description=<%tmp%\python-timestamp.txt

echo.
call git commit -a -m %commit-description%

exit/b

git-steps-seriess-jj



::_
:catm
:commit-all-with-timestamp-message

echo. & echo * Commit all files with timestamp message.

rem cd | find /i "C:\projects\netbeans\sencha">nul
rem if %errorlevel% == 0 echo A commit message is required in this folder.
rem if %errorlevel% == 0 exit/b

rem cd | find /i "C:\projects\netbeans\mercury6">nul
rem if %errorlevel% == 0 echo A commit message is required in this folder.
rem if %errorlevel% == 0 exit/b

call ujt>nul

set /p commit_description=<%tmp%\java_timestamp.txt

echo.
call git commit -a -m %commit_description%

exit/b



::_
:cacm
:commit-all

echo. & echo * Commit all files with custom message.

echo.

if "%~2" == "" (
  call err A custom commit description is required. Jul-11-2023_3_52_PM - %0.bat
  exit/b 1
)

git commit -a -m %2

exit/b



::_
:c
:comm
:commit

echo. & echo * Commit ONLY those files that were staged for commit.

if "%~2" == "" echo * Error: A commit description is required.
if "%~2" == "" exit/b

echo.
git commit -m %2

exit/b



::_
:cbig

echo. & echo * Commit with big description.

echo.
call git commit -a -m "From big latpop."

exit/b



:_+ Upstream Origin



::_
:pullm

echo. & echo * Pull master

git pull origin master

exit/b

lu:
Jan-17-2018


::_
:6

echo. & echo * Push changes into main.

echo.
git push --set-upstream origin main

exit/b

git-steps-seriess-jj



::_
:fixbranch

echo. & echo * 14. Fix branch.

echo.
git branch --unset -upstream

exit/b



::_
:reor

echo. & echo * Revove origin.

echo.
git remote remove origin

rem git branch --set-upstream-to=origin/master

rem git remote add origin https://github.com/jonathan-r-jones/ansible-for-devops-workshop.git

rem git push -u origin master

exit/b

lu:
Dec-17-2019



:_
:is-git-folder

rem echo. & echo * Is current folder a Git folder?

dir /ah | find /i ".git">nul && exit/b 0

exit/b 1



:_+ Create Branch Family (!fcccb)



::_
:cbc

echo. & echo * Create a local branch based on your current branch.

if "%~2" == "" (
  echo.
  echo * Error: You must enter the name of the branch you wish to create.
  exit/b
)

echo.
git checkout -b %2

git push --set-upstream origin %2

exit/b

lu:
Mar-10-2020



::_
:cbr

echo. & echo * Create a new branch based on the releaseNew branch.

if "%~2" == "" (
  echo.
  echo * Percent 2, destination branch, is a required field.
  exit/b
)
set cbf-branch=%2
if "%~2" == "/np" (
  call n np
)

:checkout
@echo on
echo.
git checkout releaseNew
git pull
git checkout -b %cbf-branch%
git push --set-upstream origin %cbf-branch%
echo.
@echo off

exit/b



::_
:cbm

echo. & echo * Create a new branch based on the master branch.

if "%~2" == "" (
  echo.
  echo * Percent 2, destination branch, is a required field.
  exit/b
)
set cbf-branch=%2

if "%~2" == "np" (
  call n np
)

if "%~2" == "t" (
  set cbf-branch=jrj-test
)

:checkout
@echo on
echo.
git checkout master
git pull
git checkout -b %cbf-branch%
git push --set-upstream origin %cbf-branch%
echo.

exit/b

:help

echo. & echo * Parameter 2, branch to swtich to, descriptions

echo   np: now playing
echo   t: jrj-test

exit/b

lu:
Feb-21-2023
May-4-2021



::_
:cb

echo. & echo * Create a new branch based on specified source branch.

if "%~2" == "?" goto help
if "%~2" == "" goto help
if "%~3" == "" goto help

echo. & git checkout -b %3 %2

if errorlevel 1 exit/b
git push --set-upstream origin %3
exit/b

:help

echo. & echo * Parameter Description(s):
echo. & echo * Parameter 2: Source branch.
echo. & echo * Parameter 3: Destination branch. If equals "/np", that branch is specified.

exit/b

lu:
Mar-31-2022

Footnote
>< >< ><

I don't think you can create a branch based on source branch unless you have first switched to that source branch locally at least once.

I changed the label from cb to crbr because cb is too easily confused with "change branch" instead of "create branch".



:_ (!efg)

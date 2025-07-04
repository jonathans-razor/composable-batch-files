:_ (!vf)

@echo off

title CBF: %0

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

cls

echo. & echo * This file is used for vetted functions.

echo. & echo   Usage: %0 (optional parameter 1)

echo. & echo * Parameter 1: The batch file label of the function you wish to execute.

echo. & echo   Batch file style: Multipurpose

exit/b

Note: The place of honor in this file is the very bottom. This where the latest functions are 
placed. Jun-29-2023



:_
;Metadata: Track Size (!tsv)

     Date      Lines      Bytes   Functs  Notes
 -----------  ------  ---------  -------  -------------------------------------------------

:Mar-28-2025   2,726     40,448      129

: Dec-9-2024   2,724     40,404      129

: Jan-4-2024   2,611     39,599      125

: Jan-3-2024   2,609     39,555      125

: Nov-3-2023   2,621     39,255      118



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_+ Line Continuation Characters, Escape Characters and more. (!esch)



::_
:care
:caret
:echo
:lcc

echo. & echo * Line continuation with caret character.

echo.
echo The Gettysburg Address is a speech that U.S. President Abraham Lincoln delivered during ^
the American Civil War at the dedication of the Soldiers' National Cemetery in Gettysburg, ^
Pennsylvania, on the afternoon of Thursday, November 19, 1863, four and a half months after ^
the Union armies defeated those of the ...

exit/b

Note: The caret only works with the "echo" statement and not the "rem" statement.

lu:
Nov-14-2023
Nov-2-2018

skw:
How do you continue a batch file line onto a second line?



::_
:percent_20

echo. & echo * How do you escape a percent sign in a batch file?

rem Answer: 2 '%' signs equals one.

set cbf-url='https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Mobile'

echo.
echo cbf-url: %cbf-url%

exit/b

lu:
Aug-2-2017

skw:
double percent sign
percent 20 issue in environment variables
percent percent



::_
:ampe

echo. & echo * The ampersand character allows you to multiple commands on single line.

rem The ampersand is the line continuation character for batch files.

echo. & echo hey 1 & echo hey 2

exit/b



::_
:

echo. & echo * Test line continuation character in environment variables.

echo.
set test=asdflasdff asdfasjklasdf asdflkasdfl  asdfasdfjklasdf asdfl asdf asdflasdfjklasdfl^
abcdefzzz

echo.
echo %test%

exit/b

lu:
Jun-17-2019



::_
:debug

echo. & echo * Debugging statement.

echo. & echo Aug-18-2020_3_39_PM q

exit/b



::_
:pare

echo. & echo * Escape character for a parenthesis.

echo.
echo * Error: No "*.%2" file exist(s^) in the current folder.

rem echo The rain in Spain(s) is great.

exit/b

lu:
Nov-20-2018

skw:
escaping specific characters: ^esch
what's the escape character for a batch file?



::_
:at_sign

echo. & echo * Use of the at sign "@" before rem. Even with echo on, the statement "Hello 2" will ^
not be disploayed.

echo.

@echo on

rem Hello 1.

@rem Hello 2.

@echo off

exit/b

lu:
Jan-31-2019



:_
:

echo. & echo * Sample function that has help module. (!help)

if "%~2" == "?" goto help
if "%~2" == "" goto help

:help

echo. & echo * Parameter Description(s):
echo. & echo * Parameter 1: 
echo. & echo * Parameter 2: 

exit/b



:_
:hlp

echo. & echo *  help piped to a file.

call curl --help all>%tmp%\-help.txt

call an kr

set cbf-parameter=%tmp%\-help.txt

call r

exit/b



:_

echo. & echo * Proper not exist.

if not exist "%~2" (
  echo. & echo * Error: File "%~2" doesn't exist.
  exit/b 5
)

exit/b



:_
:repl
:stre

echo. & echo * String replacement is cool.

rem echo(%text:%search%=%replace%%)

echo. & 

cls

:

echo. & echo * Example 24: Replace "/e:" with nothing.

set cbf-test=/e:no

echo. & echo cbf-test (before replacement): %cbf-test%

set cbf-test=%cbf-test:/e:=%

echo. & echo  cbf-test (after replacement): %cbf-test%

exit/b

:
echo.
echo Example 19: Replace 8445 with 443
set str=https://www.fox.com:8445
echo.%str%
echo %str:8445=%443

:
echo.

echo Example 18: Remove the https, part 3.
set str=https://www.fox.com

echo.%str%
echo %str:https://=%

:
echo.

echo Example 17: Remove the https, part 2.

set str=https://www.fox.com
echo.%str%
set str=https://www.fox.com 
echo %str:https://=%

:
echo.
echo Example 16:
set /p str=<c:\a\j1.txt
echo %str%
set str=%ridiculous*:syncing%
echo.%str%

echo.

echo Example 15: 

set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%bearer*:syncing%
echo.%str%

echo.
echo Example 14: 'Authorization': 'Bearer eyJhb
set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%str:'Bearer*.=new string%
echo.%str%

echo.
echo Example 13: 'Authorization': 'Bearer eyJhb
set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%str:'Bearer.*=new string%
echo.%str%

echo.

echo Example 12: 'Authorization': 'Bearer eyJhb

set str='Authorization': 'Bearer eyJhb
echo %str%
set str=%str:'Bearer=new string%
echo.%str%

rem exit/b

echo.
echo Example 11: Replace dog.
set str=This is a dog.
echo %str%
set str=%str:dog=cat%
echo.%str%

echo. & echo * Example 10: Replace bearer and more text with syncing using a wildcard.
set /p str=<c:\a\j1.txt
echo %str%
set str=%ridiculous*:syncing%
echo.%str%

echo.
echo Example 9: Replace bearer and more text with syncing using a wildcard.
set str=bearer blah a lot of text
echo %str%
set str=%bea*:syncing%
echo.%str%

echo.
echo Example 8: Replace authorization with syncing.
set str=authorization
echo %str%
set str=%authorization:syncing%
echo.%str%

echo.
echo Example 7: Remove the https.
set str=https://www.cnn.com
echo.%str%
set str=%str:https://=%
echo.%str%

exit/b

echo.
echo Example 6: Replace cnn with google.
set str=https://www.cnn.com
echo.%str%
set str=%str:cnn=google%
echo.%str%

echo.
echo Example 5: Fix the hat.
set str=teh cat in teh hat
echo.%str%
set str=%str:teh=the%
echo.%str%

echo.
echo Example 4: Change slash to backslash.
set str=HTML5Application/public_html/sass/example/bootstrap.jsonp
echo.%str%
set str=%str:/=\%
echo.%str%

echo.
echo Example 3: Remove the first part of the string.
set str=https://www.cnn.com
echo.%str%
set str=%str:https://www.=%
set str=%str:http://www.=%
echo.%str%

echo.
echo Example 2: Same as Ex. 3.
set cbf-url=https://www.github.com
echo.%cbf-url%
set cbf-url=%cbf-url:http://=%
set cbf-url=%cbf-url:https://=%
set cbf-url=%cbf-url:www.=%
echo.%cbf-url%

echo.
echo Example 1: Replace unserscores with dashes.
rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes. Nov-26-2018
set database_name=postgres_test_database_Nov_26_2018_2
echo %database_name%
set database_name=%database_name:_=-%
echo %database_name%

exit/b

skw:
dos search and replace



:_
:else

echo. & echo * The else statement.

rem (!else)

if "%~1" == "" (
  echo Percent 1 nothing.
) else (
  echo Percent 1 is something.
)

if "%~2" == "c" (
  set cbf-pt=%aa%\xamarin\Mastering-Xamarin.Forms-book\Complete
) else if not "%~2" == "" (
  set cbf-pt=%aa%\xamarin\Mastering-Xamarin.Forms-book\Chapter%2
)

exit/b



:_+ Percent 2



::_
:percent_2

echo. & echo * Percent 2 is a required field.

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

exit/b



::_
:percent

echo. & echo * Testing percent 2 and not equals.

set test_var=Rain in Spain.

echo.
echo 2.
echo %~1
echo %~2
echo %~3
echo %test_var%

echo.
echo 2.
if "%~2" == "" echo No second command line parameter was passed.

echo.
echo 3.
if not "%~2" == "" echo The parameter "%~2" was passed in position 2.

echo.
echo Percent 1: %1
echo Percent 2: %2
echo Percent 3: %3
echo Percent test_var: %test_var%

echo.
echo 4.
if "%~1" == "" echo No command line parameter was passed.

echo.
echo 5.
if not "%~1" == "" echo %1 parameter was passed.

echo.
echo 6.
if "%~1" == "" (
  echo Percent 1 nothing.
) else (
  echo Percent 1 is something.
)

echo. & echo 7. (!p3, !p1, !para, !perc)
if "%2" == "?" goto help
if "%2" == "" goto help

echo. & echo Good input.

exit/b

lu:
Jun-8-2018

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: alias.

exit/b

echo. & echo 8.
if "%~2" == "" echo. & echo * Error: Parameter 2, ,is required. & exit/b

if "%~2" == "" echo. & echo * Error: Parameter 2, ,is required. _,.-'~'-.,_(`~ & exit/b

if "%~2" == "" (
  echo.
  echo * Error: Parameter 2 is required.     _,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,_(`~
  exit/b
)

echo.
echo 8.
if "%~3" == "" (
  echo.
  echo * Parameter 3 is required.
  exit/b
)

exit/b



:_
:var_com

echo. & echo * Variable comparisons.

set variable_1=
set variable_2=
set variable_3=
set variable_4=

set variable_1=Test Text.
set variable_2=Test Teqxt.
set variable_3 =Test Text.
set variable_4=%variable_2%

echo.
echo Variable 1: %variable_1%

echo.
echo Variable 2: %variable_2%

echo.
echo Notice that putting a space BEFORE the equals sign causes the variable to not be set!
echo Variable 3: %variable_3%

echo.
echo Variable 4: %variable_4%

echo.
if "%variable_1%" == "%variable_2%" (
  echo They are equal.
) else (
  echo They are not.
)

rem Set statements inside an if block don't work!
rem https://stackoverflow.com/questions/9102422/windows-batch-set-inside-if-not-working

exit/b

lu:
Jun-8-2018



:_
:ml
:multiline

echo. & echo * Ho to do multiline echo statements.

set cbf-filep=* Chicken Blah blah blahblah Blah blah blahblahBlah blah blahblahBlah blah
set cbf-filep=%cbf-filep% 2 222 22 22 22 22 2 2 2 22  22 blah 222 22 2 to boldly go where
set cbf-filep=%cbf-filep% 3 3333 asdfasdfasdfasdf2 to boldly go where
set cbf-filep=%cbf-filep% no bald man has gone before

echo.
echo %cbf-filep%

exit/b

lu:
Jun-7-2018

(!multiline)



:_
:not

echo. & echo * Testing inequality using the not statement.

rem Imprimatur (!not, !notba)

set message=hello

if not "%message%" == "Hello" (
  rem Notice that the comparion is CASE SENSITIVE.
  echo.
  echo It's NOT equal.
)

exit/b



:_
:math

echo. & echo * Set math!

set /a addition=15+12

echo.
echo %addition%

set /a subtraction=1008-10

echo.
echo %subtraction%

set /a multiplication=52*3

echo.
echo %multiplication%

set /a division=39/3

echo.
echo %division%

exit/b

lu:
Jul-6-2018

skw
addition (!vmath)



:_+ Guard Clause



::_
:guard_clause_caller

echo. & echo * Guard clause caller.

call %0 guard_clause

if %errorlevel% == 1 (
  echo.
  echo * Guard clause failed.
  exit/b
)

call m el_g

echo.
echo * Guard claused passed.

exit/b

lu:
Nov-1-2018



::_
:guard_clause

echo. & echo * Guard clause.

if not exist "%~2" (
  echo. & echo * Error: File "%~2" doesn't exist.
  exit/b 5
)

exit/b 0

lu:
Nov-1-2018



:_
:

echo. & echo * Set statements aren't allowed inside if blocks so here is the workaround.

echo.
if "%~2" == "" (
  call m set_cbf-app_to_dte
)

exit/b

lu:
Feb-4-2019

skw:
set statements inside if blocks



:_
:

echo. & echo * How to sort a file.

echo.
sort j3.txt>j4.txt

exit/b

lu:
Feb-5-2019



:_
:where

echo. & echo * How to tell from where a command is being run.

goto Feb-5-2019

In windows how can you tell where a particular command is being run?

Windows Server 2003 and later (i.e. anything after Windows XP 32 bit) provide the where.exe 
program which does some of what which does, though it matches all types of files, not just 
executable commands. (It does not match built-in shell commands like cd.) It will even accept 
wildcards, so where nt* finds all files in your %PATH% and current directory whose names start 
with nt.

Try where /? for help.

:Feb-5-2019

echo.
where j.bat

exit/b

lu:
Feb-5-2019



:_
:locl

echo. & echo * Load clipboard. How to put something onto the clipboard!

echo "This text is on the clipboard. Cool." | clip
rem echo "%cbf-pt%" | clip

exit/b

lu:
Feb-7-2019



:_+ Some Loops



::_
:do_while

echo. & echo * A loop that iterates x amount of times.

set current_iteration_number=1
set x=4

:iterate

echo.
echo * Iteration # %current_iteration_number%.

set /a current_iteration_number=%current_iteration_number%+1

if "%current_iteration_number%" gtr "%x%" exit/b

goto :iterate

:loop

echo. & echo * An endless loop that pauses for 3 seconds.

timeout /t 3

goto loop



:_+ Passing Parameters and Passing Spaces in Parameters



::_
:cowsay

if "%~1" == "" cowsay Wait. What?

exit/b

lu:
Sep-9-2023



::_
     
echo. & echo * Call t versus call %0 versus call label, parameter passing.

rem Result: Stangely, when calling with a colon, parameter doesn't seem to work. Mar-31-2019

call %0 hw2 "Percent Zero!"

call t hw2 "Called with t."

call :hw2 "Called with colon."

exit/b

lu:
Mar-21-2019



::_
:passing_spaces

echo. & echo * Passing spaces in parameters.

echo.
echo Percent 2: %2

echo.
echo Percent Squiggle 2: %~2

exit/b

lu:
Sep-9-2018



::_
:pass_spaces

echo. & echo * The lesson learned is that you should put double quotes around parameters that may contain spaces.

call n sa

call %0 passing_spaces "%cbf-pt%"

exit/b

lu:
Sep-9-2018



::_
:

echo. & echo * Checking the command line parameters.

echo.
rem This equals the entire parameter list!
echo %*

echo.
echo %2

exit/b

lu:
Nov-27-2019



:_+ Reflextion via Dynamic Variable Naming



::_
:ref3

echo. & echo * Reflection version 3. Dynamic variable naming.

if "%~2" == "" (
  echo.
  echo * Percent 1. Extension and 2. Alias are required.
  exit/b
)

call m reset

call n %2

call m compose_variable %1

echo.
echo * Expanded variable: %cbf-expanded-variable%

exit/b

lu:
Mar-30-2020



::_
:ref4

echo. & echo * Reflection version 4. Dynamic variable naming.

if "%~3" == "" (
  echo.
  echo * Percent 2. Extension and 3. Alias are required.
  exit/b
)

call m reset

call n %3

call m compose_variable %2

echo.
echo * Expanded variable: %cbf-expanded-variable%

exit/b

lu:
Mar-30-2020



:_
:

echo. & echo * Test if folder exists. Test folder existence.

cd /d %dropbox%\Backups\Savannah

dir | find /i "backups\savannah">nul

if %errorlevel% == 0 echo. & echo * Folder EXISTS.

if %errorlevel% == 1 (
  echo.
  echo * Error: The Backups\Savannah folder does NOT exist on this computer.
  exit/b
)

exit/b

lu:
Apr-21-2020



:_
:

echo. & echo * If not defined.

echo.
set cbf-test=

rem (!defi)
if not defined cbf-test echo * cbf-test is not defined.

exit/b

lu:
Nov-1-2019



:_
:old-help

cls

echo.
echo %cbf-filep%

echo.
echo Batch file style: Single purpose

(!enta)

echo.
echo Entangled variable: cbf-%0

echo.
echo Pit of Success Strategy: For example, if cbf-cf is not found, the algorithm will look for cbf-url.

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter-1=Parameter 1 (Optional): 

set parameter-2=Parameter 2 (Optional): 

echo.
echo %parameter-1%

echo.
echo %parameter-2%

echo.
echo Example(s):

echo.
echo %0 k

exit/b



:_

echo. & echo * Inheritance and global variables.

call pn tickl>nul

set cbf-pd=1488

set cbb-pt=%cbf-pt%\%cbf-pd%

set cbf-jpg=%cbf-pt%\The difference between the CHIS and ETD folders before I make ticket lbm-1488 changes.png

set cbf-jpg2=%cbf-pt%\%cbf-pd%\The difference between the riverstone and ETD folders before I make ticket lbm-1488 changes.png

exit/b

lu:
Sep-1-2021



:_+ CBF Template Library (!lbr)



::_
:

set cbf-pd=

echo.
echo * %cbf-pd%.

call pn r

set cbf-branch=main

set cbf-cn=git@github.com:jonathan-r-jones/%cbf-pd%.git

set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



:_
:hlp-old

echo. & echo * Command line help.

set help_filename=%temp%\help_contents.txt

curl --help>%help_filename%

if errorlevel 1 err Mar-21-2024-2-42-PM

set cbf-parameter=%help_filename%

call an ie

call r

exit/b



:_
:equa

echo. & echo * Equality checking.

rem (!bfequa, !equa)

if "%cbf-pt%" == "" (
  echo. & echo * Error: Cbf-pt is not set.
  exit/b
)

if "%1" == "" goto help

if "%1" == "?" goto help

exit/b

lu:
Feb-9-2022



:_+ Testing Error Level. (!tel)



::_
:el3

echo. & echo =* Test error level inside an if block.

::sets errorlevel to 0
(call )
if "1" == "1" (
  rem Set errorlevel to 5.
  cmd /c exit 9
  call el
  if errorlevel 4 echo equals 4 - this will be printed
  if errorlevel 5 echo equals 5 - this will be printed
  rem :::: you can use this ::::::::::::::
  if errorlevel 5 if not errorlevel 6 echo this will be printed ONLY when the errorlevel is 5
  if errorlevel 6 echo equals 6 - this will not be printed
  if errorlevel 1 echo equals 1
)

if errorlevel 1 echo equals 1
if errorlevel 7 echo equals 7 - this will be printed
if errorlevel 8 echo equals 8 - this will be printed
if errorlevel 5 if not errorlevel 6 echo this will be printed ONLY when the errorlevel is 5
if errorlevel 9 echo equals 9 - this will not be printed

exit/b

lu:
Mar-1-2022

skw: 
test errorlevel
test error level

Footnote:

https://stackoverflow.com/questions/4367930/errorlevel-inside-if



::_
:el2

echo. & echo * Test error level when looking for folders.

rem This works.

cd /d c:\ax

if errorlevel 1 (
  echo.
  echo * Error: Folder not found.
  call m clear_errorlevel_silently
) else (
  echo. & echo * Error level equals: %errorlevel%.
)

exit/b

lu:
Nov-1-2019



::_
:style_old

echo. & echo * The errorlevel statement.

echo.
echo * Errorlevel: %errorlevel%

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if %errorlevel% == 1 (
  exit/b
)

if %errorlevel% == 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b



::_
:style_2

echo. & echo * Test error level when looking for folders. %1

rem This works.

cd /d c:\aq

if %errorlevel% equ 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b

lu:
Nov-1-2019



::_
:style_10

echo. & echo * Test error level when looking for folders. %1

rem This works.

cd /d c:\a

if %errorlevel% == 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

cd /d c:\ax

if %errorlevel% == 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b

lu:
Nov-1-2019



:_
:help-template (!hete)

if "%2" == "?" goto help
if "%2" == "" goto help
if "%3" == "" goto help

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: Source folder.
echo. & echo Parameter 3: Destination folder.

exit/b



:_+ Testing Computername.



::_
:

echo. & echo * Testing computer name.

if %computername%==xps echo 1
if %computername%==XPS echo 2
if /i %computername%==xps echo 3

exit/b

lu:
Apr-7-2022



::_
:teco

echo. & echo * Testing computer name 2.

echo %computername% | find /i "xps">nul

if errorlevel 1 echo one
if not errorlevel 1 echo not one This is good.
if errorlevel 0 echo zero - Don't use this.

exit/b

lu:
Apr-11-2022



:_
:or-operator-do-not-use

echo. & echo * Or operator. THIS DOESN'T WORK. Apr-18-2023

set cbf-test=2

if ("%cbf-test%" == "1") or ("%cbf-test%" == "2") (
  echo 1
)

echo. & echo cbf-test: "%cbf-test%"

exit/b



:_+ All Command Line Parameters



::_
:epl2

echo. & echo * Evaluate the parameter list, less capable version.

set d_switch=0
set e_switch=0
set v_switch=0

:top_of_parameter_line_evaluation

if "%~1" == "" goto exit_loop

if "%~1" == "-d" set d_switch=1
if "%~1" == "-e" set e_switch=1
if "%~1" == "-v" set v_switch=1

shift

goto top_of_parameter_line_evaluation

:exit_loop

echo %d_switch%
echo %e_switch%
echo %v_switch%

exit/b

lu:
Nov-27-2019



::_
:
echo. & echo * Parameter processing 1.

echo.
echo p0: %0
echo p1: %1
echo p2: %2

shift
echo.
echo p0: %0
echo p1: %1
echo p2: %2

exit/b
lu: Oct-19-2023



::_
:ap
:whli

cls

echo. & echo * Show whole line of parameters.

echo.
echo %*

exit/b
lu: Oct-19-2023



::_
:cla

echo. & echo * How to save command line arguments. This works.

rem Test percent star command.

rem set cmd_line_args=%*

rem echo.
rem echo Commanmd line Arguments: %Cmd_line_args%

echo.
echo Commanmd line Arguments: %*

exit/b

lu:
Jan-31-2019



::_
:aclp
:allp
:alpa

echo. & echo * %1.

if "%5" == "?" goto help

call :aclp-test %*

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: parameter 2 is required.
echo. & echo Parameter 3: parameter 3 is required.
echo. & echo Parameter 4: parameter 4 is required.
echo. & echo Parameter 5: parameter 5 is required.

exit/b

skw:
all arguments
all command line parameters
all parameters
all command line arguments
all_command_line
all_command_line_parameters
all_parameters
command line parameters
whole command line



::_
:aclp-test

echo. & echo * 0: %0.
echo. & echo * 1: %1.
echo. & echo * 2: %2.
echo. & echo * 3: %3.
echo. & echo * 4: %4.
echo. & echo * 5: %5.



::_
:telp2

echo. & echo * Testing errorlevel part 2.

echo. & echo EL Begin: %errorlevel%

if "%1" == "" (
  echo. & echo Parameter 1 is missing.
  exit/b
)

echo %1| find /i ".">nul

if %errorlevel% == 0 (
  echo. & echo Parameter 1 contains a ".".
  exit/b
)

echo. & echo Parameter 1 does NOT contain a ".".

echo. & echo EL End: %errorlevel%

exit/b

lu:
Jan-28-2022



::_
:tfc

echo. & echo * Test find command.

set test_find=hello

echo %test_find% | find /i "hello">nul

if %errorlevel% == 0 (
  echo.
  echo * It contains hello.
  exit/b
)

echo. 
echo * Does NOT contain hello.
echo.

exit/b



::_
:which_environment_is_currently_set

echo. & echo * Which environment is the kiosk pointing to?

type %config_1_destination% | find /i "fqt">nul

if %errorlevel% == 0 (
  echo.
  echo * The kiosk is pointing to FQT.
  echo.
  pause
  exit/b
)

echo. 
echo * The kiosk is pointing to DEV.
echo.

pause

exit/b

skw:
finding text in file



:_
:pfem

echo. & echo * Proper formatting of error messages.

echo.

call err blah blah. Jul-11-2023_3_50_PM - %0.bat

exit/b

lu:
Jul-3-2023



:_
:

echo. & echo * If filename.

echo %1| find /i ".">nul
if errorlevel 1 err Period not present.

exit/b



::_
:

echo. & echo * Test presence of a file type.

echo dir *.cs| find /i ".cs">nul

if errorlevel 0 echo el0
if errorlevel 1 echo el1
if errorlevel 2 echo el2

exit/b

lu:
Sep-25-2023



:_
:shift

rem This makes "no" for Notepad = %0, where it was %1.

rem (!shift)

shift/1

echo. & echo * p0: %0
echo. & echo * p1: %1
echo. & echo * p2: %2

exit/b



:_
:mclp

echo. & echo * Testing maximum number of command line parameters.

echo.
echo %1
echo %2
echo %3
echo %4
echo %5
echo %6
echo %7
echo %8
echo %9
echo %10
echo %11
echo %12
echo %13
echo %14
echo %15
echo %16
echo %17
echo %18
echo %19
echo %20
exit/b
lu: Oct-13-2023



:_+ Language Functions Template Code Family (!lfs, !fclg) (skw supported-languages-series-jj)



::_
:ep

echo. & echo * Echo parameters from %0.bat.

call t dsa>nul

call %0 echo-parameters.[filename extension] cat hat 1 2 3

exit/b

Level 2 Program: Simplest possible program that does something.



::_
:fz

echo. & echo * Fizzbuzz from %0.bat.

call t d>nul

call t d>nul
call %0 fizz.[file extension]

exit/b



::_
:hw

rem echo. & echo * Hello world from %0.bat.

call t dsa>nul

[] hello-world.[filename extension]

exit/b

Level 2 Program: Simplest possible program that does something.



::_
:rs

echo. & echo * Reverse string from %0.

call t d>nul

echo.
[] reverse-string.[] %2

exit/b



::_
:vers

echo. & echo * [Application Name] version from %0.bat.

echo.
[Application Name] --version

exit/b

 Date          Version  Machine
 -----------  --------  -------

                            XPS

lu:
Dec-29-2023



::_
:a2n

cls

echo. & echo * Add 2 numbers.

@echo on
call %0 add-2-numbers.py 55 102

exit/b



::_
:c4f
cls

echo. & echo * Call 4 functions.

call %0 function-1
call %0 function-2
call %0 function-3
call hw5 function-1

exit/b



::_
:docs

call sf [docs URL alias]

exit/b



::_
:function-1

echo. & echo * %1 in %0.bat.

exit/b



::_
:function-2

echo. & echo * %1 in %0.bat.

exit/b



::_
:function-3

echo. & echo * %1 in %0.bat.

exit/b



::_
:dtt

rem echo. & echo * Return a date plus time string from %0.bat.
call t d>nul
[] date-time.[filename extension]

exit/b

Level 2 Program: Simplest possible program that does something.
Limited adoption.



::_
:verso

echo. & echo * Online versions information.

set cbf-parameter=

call an br

call r

exit/b



:_
:star

rem echo. & echo * Start the server from %0.bat.
call t nwe>nul
start "[Server Title]" cmd /k [executable name start syntax] .

exit/b

Level 1 Program: Is the program even installed?



:_
:run

rem echo. & echo * Run a [language name] program from %0.bat.

call fn "%~1" || exit/b 5
call paco "%~1" .py || exit/b

echo.
[language executable name] %*

exit/b



:_
:Nov-5-2023
rem File exists checking.
rem Cool code. (!feex)
call fn "%~1" || exit/b 5
exit/b



:_
:squi

echo. & echo * Squiggle help.

exit/b

lu:
Dec-30-2018

rem call :code-execution-area
rem echo %0     :code-execution-area
rem echo %~f0   d:\Dropbox\IT\Composable-Batch-Files\k.bat
rem echo %~nx0  k.bat


%~1         - expands %1 removing any surrounding quotes (")
%~f1        - expands %1 to a fully qualified path name
%~d1        - expands %1 to a drive letter only
%~p1        - expands %1 to a path only
%~n1        - expands %1 to a file name only
%~x1        - expands %1 to a file extension only
%~s1        - expanded path contains short names only
%~a1        - expands %1 to file attributes
%~t1        - expands %1 to date/time of file
%~z1        - expands %1 to size of file
%~$PATH:1   - searches the directories listed in the PATH
               environment variable and expands %1 to the fully
               qualified name of the first one found. If the
               environment variable name is not defined or the
               file is not found by the search, then this
               modifier expands to the empty string

%~dp1       - expands %1 to a drive letter and path only
%~nx1       - expands %1 to a file name and extension only
%~nx2       - Expands to filename or current folder without path.
%~dp$PATH:1 - searches the directories listed in the PATH
               environment variable for %1 and expands to the
               drive letter and path of the first one found.
%~ftza1     - expands %1 to a DIR like output line

exit/b



:_
:

echo. & echo * Hot new way to call n.bat.

call n this-label-does-not-exist || exit/b

exit/b

Lu:
Dec-1-2023



:_+ Populating an environment variable from a file and Choice.



::_
:pev

echo. & echo * How to populate an environment variable from a file. (!setp)

echo.
set /p test=<c:\a\j1.txt

echo. & echo %test%

exit/b

lu:
Oct-24-2019

skw: 
how do you set an environment variable from file
setting an environment variable from a file
setting environment variables
populating an environment variable from a file
The problem with this command is that it only does the first line of the file.



::_
:

echo. & echo * Can you put a call message into an environment variable?

rem set environment variable from file
call s>%tmp%\git_status_message.txt
set /p git_status_message=<%tmp%\git_status_message.txt

exit/b

lu:
Apr-1-2019



::_
:user_choice

echo. & echo * Ask the user a question and proceed accordingly.

rem option, choose, choice

echo.
set /P user_option=Would you like to run "npm install"? (y/n): 

if not "%user_option%"=="y" call nm inst

exit/b



::_
:where

echo. & echo * Go to the where location.

echo.
where>c:\a\j1.txt
set /p test=<where

echo 'test:' %test%

exit/b

lu:
Jun-20-2019



:_
:isre
:p2
:p2r

echo. & echo * Parameter 2 is required.

if "%~2" == "" err Parameter 2, project name, is required.
if "%~2" == "" err Parameter 2 is required.

exit/b



:_
:paja
:pajs
:pj

echo. & echo * Package.json is required.

call fn package.json || exit/b

exit/b



:_+ If Exist (!ifex, !exis)



::_
:fe
:ffex
:fiex
:question

echo. & echo * Test for the exisitence of a file or folder.

call fn package.json || exit/b

rem Expected type of file.
echo %2| find /i ".ts">nul
if errorlevel 1 err Expected a TypeScipt file.

call fn "%~1" || exit/b 5

exit/b

lu:
Aug-29-2023

skw:
file extension
filename existence
Test if file exists.



::_
:old-fiex

echo. & echo * File existence.

rem See also specific_file_presence in m.bat.

echo.

if not exist "package.json" (
  echo. & echo * Error: The file "package.json" must exist in order for you to run this command.
  exit/b
)

rem The "/i" doesn't seem to be necessary for filenames.

if exist "mx.bat" (
  echo File exists.
) else (
  echo File does not exist.
)

exit/b

lu:
Dec-27-2018



::_
:th_specific_folder_presence

echo. & echo * Test harness for specific_folder_presence.

call %0 specific_folder_presence .chef

if %errorlevel% == 1 (
  exit/b 1
)

echo.
echo * Run commands. Nov-11-2019 6:21 PM

exit/b

lu:
Nov-11-2019



::_
:hie

echo. & echo * To get help on the "if exist" command, use this code block.

echo.
if exist/?

exit/b

lu:
Dec-27-2018



::_
:finex

echo. & echo * Test if a File does not exist.

if not exist "amx.bat" (
  echo.
  echo * File does not exist.
)

exit/b

lu:
Dec-27-2018



::_
:folder_exists_2

echo. & echo * Testing whether a folder exists 2.

if exist "%1" (
  echo.
  echo Folder exists.
)

if not exist "%1" echo It does NOT exist.

exit/b

lu:
May-23-2018



::_
:section_1

echo.
echo Section_1: Ifs and Sets: Every line in section 1 prints and every line in section 2 
doesn't. echo 

if /i exist "c:\!affinity" echo I used to think that "if exist" works only on filenames, not 
folders.

set horse=Notice no space after the equals sign and no quotes around this string.
echo %horse%

set horse= Notice the space at the beginning of this string.
echo %horse%

if /i "%computer_alias%"=="Laptop" echo Double quotes work and are preferred to single quotes.

if /i '%computer_alias%' == 'laptop' echo This is how you employ case-insensitivity.

if /i not exist '%dropbox%\savannah\worthwhile.some' echo Here's how you use "NOT EXIST".

if /i exist "%dropbox%\savannah\worthwhile.now" echo Case doesn't matter.

if /i NOT '%computer_alias%' == 'Laptopxxxx' echo This is how you use The NOT EQAUL TO 
operator.

if /i '%computer_alias%' == 'Laptop' echo Spaces around the '==' DON'T matter.

Notice also that set statement employ single "=" sign, whereas comparison employ 2 "=" signs.

if /i '%computer_alias%'=='Laptop' echo Single quotes work, but NOT with ALL constructs so 
should be avoided.

if /i '%computer_alias%'=='Laptop' echo This is case sensitive.

exit/b



::_
:section_2

echo.
echo Section 2: Items below here DON'T PRINT. If you don't believe me, try running 
echo this to see for yourself. What follows the echo statement is the reason the 
echo syntax is incorrect.
echo ------------------------------------------------------------------------------

if /i not exist "c:\!affinity" echo I used to think that "if exist" works only on filenames, 
not folders.

if /i exist '%dropbox%\savannah\Worthwhile.now' echo The file "worthwhile.asc" actually exists but you 
surrounded it with single, instead of double quotes.

::Notice that putting a space BEFORE the equals sign causes the variable to not be set.
set horse2 = shit

echo %horse2%

if "%computer_alias%"=="LapTop" echo Improperly cased variable.
if %computer_alias%=="Laptop" echo No quotes around the environment variable.
set computer_alias_2="Laptop"
if '%computer_alias%_2' == 'Laptop' echo Percent signs within the environment variable.

goto _xit

del "file identifier report.txt"

exit/b



:_

echo. & echo * Experiment with set local.

echo cbf-test: %cbf-test%

setlocal

set cbf-test=hello
echo cbf-test: %cbf-test%
endlocal
echo cbf-test: %cbf-test%

exit/b

Feb-29-2024



:_
:tdp

if "%~1" == "?" goto help
rem Placement note: The following line should be placed at the bottom of the initiating calls so that those other calls will continue to work.
if not "%~1" == "" call t %1 || exit/b

goto main

rem:
This is how you do td parameter.

lu:
Mar-15-2024



:_+ Suppressing Error Messages



::_
:htse

echo. & echo * How to suppress error messages in batch files. (!nul, !supp)

rem For example, this would suppress the standard cannot find label error message.
goto %1 2>nul

exit/b

lu:
Nov-24-2020

Footnote
>< >< >< 

All programs have three streams:

Standard Input (the input from the console)

Standard Output (general logging/UI output to the console)

Standard Error (logging/UI output to the console meant for error messages or other exceptional 
behavior)

command >nul

^ This says to pipe the standard-output stream to null.

command 2>nul

^ This says to pipe the standard-error stream to null.

command 2>&1

^ This says to pipe the standard-error stream to the same place as the standard-output stream.



::_
:2nul

cls

echo. & echo * Suppressing error messages. This " 2>nul" suppresses the default error message!

call zzzz 2>nul || exit/b

call el

exit/b

lu:
Feb-7-2024

skw:
(!2nul)



::_
:tgw

echo. & echo * Test goto with no label found.

rem Is there a way to test if a label exists in a batch file before calling the goto statemnt?

rem goto nonexistinglabel

rem set "label=sub"
REM next line to reset errorlevel to zero:
call
rem call :test7x7 2>nul

rem This strange syntax in the following line of code "eats" the error message, although 
rem I don't know why you'd want to do so.
goto nonexistinglabel 2>nul

echo hey

echo * Errorlevel: %errorlevel%

exit/b

lu:
Jul-9-2018



::_
:

echo. & echo * Interesting Java code snippet that I'm not sure what it does.

rem From gradlew.bat

echo.
rem set JAVA_EXE=java.exe
rem %JAVA_EXE% -version >NUL 2>&1

java -version 2>&1

if "%ERRORLEVEL%" == "0" echo Is zero.

exit/b

lu:
Jan-31-2019



:_+ Validation Family (!fcva) error-level-educational-series



::_
:elt1

echo. & echo * Error level test 1. If this returns 1, it means error level is working!

rem canary in a coal mine, error level testing

echo %1 | find "not-present">nul

call el

exit/b

lu:
Feb-17-2022



::_
:validate_filename

call fn %1

if errorlevel 1 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf-fn%" == "" (
  echo.
  echo * The cbf-fn is not defined for "%1".
  exit/b
)

rem (!noex)

if not exist "%cbf-fn%" (
  echo.
  echo * Error: The cbf-fn "%cbf-fn%" could not be found.
  exit/b
)



::_
:validate_url

call un %1

if errorlevel 1 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf-url%" == "" (
  echo.
  echo * The cbf-url is not defined for "%1".
  exit/b
)



::_
:validate_application

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf-app%" == "" (
  echo.
  echo * The cbf-app is not definied for "%1".
  exit/b
)

if not exist "%cbf-app%" (
  echo.
  echo * Error: The cbf-app "%cbf-app%" could not be found.
  exit/b
)



::_
:reset-error-level

echo. & echo * Test return codes for "n" calls. How do you reset errorlevel?

call n bullshit

echo.
echo * Errorlevel: %errorlevel%

ver>nul

call n cnn

echo.
echo * Errorlevel: %errorlevel%

exit/b

lu:
Jul-18-2018



::_
:

echo %1| find /i ".">nul
if errorlevel 0 goto
if errorlevel 1 goto

exit/b

skw:
contains period
contains a period



::_
:epl
:epl1
:evaluate-the-parameter-list
:find

echo. & echo * Find example.

call m cel

echo. & echo EL: %errorlevel%

call g is-git-folder && echo true

echo %1| find /i ".">nul
echo %*| find /i "/s">nul

if %errorlevel% == 0 (
  echo. & echo Parameter list contains "/s".
  set cbf-search-subfolders=1
) else (
  echo. & echo Parameter list does NOT contain a "/s".
)

echo %*| find /i "/p">nul

if %errorlevel% == 0 (
  echo. & echo Entire parameter list contains "/p".
  set cbf-pipe-to-file=1
) else (
  echo. & echo Parameter list does NOT contain a "/p".
)

exit/b

lc:
(!find, !cont, !contains, !pipe, !echo) 

lu:
Oct-11-2023
Jul-5-2023

skw:
all command line variables
all parameters
command line arguments
command line options
contains
Does the parameter list contain "/test"?
entire command line
find period in filename
how to detect command line options
how to detect command line parameters
how to process parameters
parameter passing
parameter processing
passing parameters
process parameters

This is akin to turning a message into an error code.

call s | find /i "working tree clean">nul



::_
:old-style

if errorlevel 1 err Mar-21-2024-2-43-PM

Inside an if loop: if %errorlevel% == 5 Jun-28-2023

if %errorlevel-old% gtr 0 exit/b

if %errorlevel-old% gtr 0 exit/b %errorlevel%

if %errorlevel-old% gtr 0 (
  echo.
  echo * Error: Label not found.
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf-pt%" == "" (
  echo.
  echo * The cbf-pt is not defined for "%1".
  exit/b
)

if not exist "%cbf-pt%" (
  echo.
  echo * Error: The cbf-pt "%cbf-pt%" could not be found.
  exit/b
)



::_
:new-style
:paco

echo. & echo * New style error handling

call fn package.json || exit/b
err %~nx0: 
%~nx0: 
call err %~nx0: 
call paco "%~1" .>nul && err Aliases cannot cannot contain a period.
call paco "%~1" .>nul && echo hey
call paco "%~1" .>nul && goto 
call paco "%~2" /n && goto 
dir /ah | find /i ".git">nul && exit/b 0
call paco "%~1" .>nul && goto open-current-folder-file

exit/b

lc:
(!ns, !peri, !ampe, !el1, !ec, !gtr, !err, !erro, !el, !erle)

lu:
Oct-12-2023

skw:
new command style, new error handling


command1 && command2 will run command1 and then command2, only if command1 succeeded (error 
level 0).

command1 || command2 will run command1 and then command2, only if command1 failed (error 
level not 0



::_
:or

echo. & echo * The proper way to call an or statement.

rem (!or)
call n sai || err Apr-2-2024-12-33-PM

exit/b



:_ (!efv)

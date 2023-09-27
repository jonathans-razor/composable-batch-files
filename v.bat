:_ Vetted Code (!bfv)

@echo off

if "%~1" == "" goto help
if "%~1" == "?" goto help

goto %1



:_
:help

echo. & echo * This file is used for vetted functions.

echo. & echo * Usage: %0 (optional parameter 1)

echo. & echo * Parameter 1: The batch file label of the function you wish to execute.

echo. & echo * Batch file style: Multipurpose
exit/b


Note: The place of honor in this file is the very bottom. This where the latest functions are 
placed. Jun-29-2023



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



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
:sr
set fp=* String replacement is cool.

rem skw dos search and replace
rem echo(%text:%search%=%replace%%)

echo. & echo %fp%

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

echo.
echo Example 10: Replace bearer and more text with syncing using a wildcard.
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



:_

:else

set fp=* The else statement.

echo %fp%
echo.

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

set fp=* Percent 2 is a required field.

echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

exit/b



::_

:percent

set fp=* Testing percent 2 and not equals.

rem Function Creation Date: Jun-8-2018

echo.
echo %fp%

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

echo. & echo 7. (!p3, !p1, !para, !perc2, !p2, !perc)
if "%2" == "?" goto help
if "%2" == "" goto help

echo. & echo Good input.

exit/b


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

set fp=* Variable comparisons.

rem lu: Jun-8-2018

echo %fp%


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



:_

:ml

:multiline

set fp=* Ho to do multiline echo statements.

rem lu: Jun-7-2018 (!multiline)

echo %fp%

set cbf-filep=* Chicken Blah blah blahblah Blah blah blahblahBlah blah blahblahBlah blah
set cbf-filep=%cbf-filep% 2 222 22 22 22 22 2 2 2 22  22 blah 222 22 2 to boldly go where
set cbf-filep=%cbf-filep% 3 3333 asdfasdfasdfasdf2 to boldly go where
set cbf-filep=%cbf-filep% no bald man has gone before

echo.
echo %cbf-filep%

exit/b



:_

:not

set fp=* Testing inequality using the not statement.

rem Imprimatur (!not, !notba)

echo %fp%

set message=hello

if not "%message%" == "Hello" (
  rem Notice that the comparion is CASE SENSITIVE.
  echo.
  echo It's NOT equal.
)

exit/b



:_

:math

rem skw addition (!vmath)

set fp=* Set math!

rem lu: Jul-6-2018

rem skw addition

echo %fp%

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



:_+ Guard Clause



::_

:guard_clause_caller

set fp=* Guard clause caller.

rem lu: Nov-1-2018

echo %fp%

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



::_

:guard_clause

set fp=* Guard clause.

rem lu: Nov-1-2018

echo %fp%

if not exist "%~2" (
  echo. & echo * Error: File "%~2" doesn't exist.
  exit/b 5
)

exit/b 0



:_+ Line Continuation Characters, Escape Characters and more.



::_

:ampe

set fp=* The ampersand character allows you to multiple commands on single line.

rem The ampersand is the line continuation character for batch files.

echo.
echo %fp%

echo. & echo hey 1 & echo hey 2

exit/b



::_

:ga

:care

:caret

:echo

set fp=* Line continuation with caret character.

rem How do you continue a batch file line onto a second line?

rem The caret only works with the "echo" statement and not the "rem" statement.

rem expository echo statement

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
echo The Gettysburg Address is a speech that U.S. President Abraham Lincoln delivered during ^
the American Civil War at the dedication of the Soldiers' National Cemetery in Gettysburg, ^
Pennsylvania, on the afternoon of Thursday, November 19, 1863, four and a half months after ^
the Union armies defeated those of the ...

exit/b



::_

:

set fp=* Test line continuation character in environment variables.

rem lu: Jun-17-2019

echo.
echo %fp%

echo.
set test=asdflasdff asdfasjklasdf asdflkasdfl  asdfasdfjklasdf asdfl asdf asdflasdfjklasdfl^
abcdefzzz

echo.
echo %test%

exit/b



::_

:debug

set fp=* Debugging statement.

echo. & echo Aug-18-2020_3_39_PM q

exit/b



::_

:percent_20

set fp=* How do you escape a percent sign in a batch file?

rem Answer: 2 '%' signs equals one.

rem percent percent, double percent sign: skw

rem percent 20 issue in environment variables. skw

rem fcd: Aug-2-2017

echo %fp%

set cbf-url='https://cyber-balance.visualstudio.com/SPDR%%20LOB/_git/Mobile'

echo.
echo cbf-url: %cbf-url%

exit/b



::_

:pare

set fp=* Escape character for a parenthesis.

rem skw what's the escape character for a batch file?

rem Escaping Specific Characters: ^esch

rem lu: Nov-20-2018

echo.
echo %fp%

echo.
echo * Error: No "*.%2" file exist(s^) in the current folder.

rem echo The rain in Spain(s) is great.

exit/b



::_

:at_sign

set fp=* Use of the at sign "@" before rem. Even with echo on, the statement "Hello 2" will ^
not be disploayed.

rem lu: Jan-31-2019

echo.
echo %fp%

echo.

@echo on

rem Hello 1.

@rem Hello 2.

@echo off

exit/b



:_

:

set fp=* Set statements aren't allowed inside if blocks so here is the workaround.

rem lu: Feb-4-2019

rem set statements inside if blocks: skw

echo.
echo %fp%

echo.
if "%~2" == "" (
  call m set_cbf-app_to_dte
)

exit/b



:_

:

set fp=* How to sort a file.

rem lu: Feb-5-2019

echo.
echo %fp%

echo.
sort j3.txt>j4.txt

exit/b



:_

:where

set fp=* How to tell from where a command is being run.

rem lu: Feb-5-2019

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
echo %fp%

echo.
where j.bat

exit/b



:_

:locl

set fp=* Load clipboard. How to put something onto the clipboard!

rem lu: Feb-7-2019

echo.
echo %fp%

echo "This text is on the clipboard. Cool." | clip
rem echo "%cbf-pt%" | clip

exit/b



:_+ Some Loops



::_

:do_while

set fp=* A loop that iterates x amount of times.

rem lu: Mar-30-2020

echo.
echo %fp%

set current_iteration_number=1
set x=4

:iterate

echo.
echo * Iteration # %current_iteration_number%.

set /a current_iteration_number=%current_iteration_number%+1

if "%current_iteration_number%" gtr "%x%" exit/b

goto :iterate



::_

:loop

set fp=* An endless loop that pauses for 3 seconds.

rem lu: Mar-30-2020

echo.
echo %fp%

timeout /t 3

goto loop



:_+ Passing Parameters and Passing Spaces in Parameters



::_

:cowsay

if "%~1" == "" cowsay Wait. What?

exit/b
rem lu: Sep-9-2023



::_
     
set fp=* Call t versus call %0 versus call label, parameter passing.

rem Result: Stangely, when calling with a colon, parameter doesn't seem to work. Mar-31-2019

rem lu: Mar-21-2019

echo.
echo %fp%

call %0 hw2 "Percent Zero!"

call t hw2 "Called with t."

call :hw2 "Called with colon."

exit/b



::_

:passing_spaces

set fp=* Passing spaces in parameters.

rem lu: Sep-9-2018

echo %fp%

echo.
echo Percent 2: %2

echo.
echo Percent Squiggle 2: %~2

exit/b



::_

:pass_spaces

set fp=* The lesson learned is that you should put double quotes around parameters that may contain spaces.

rem lu: Sep-9-2018

echo %fp%

call n sa

call %0 passing_spaces "%cbf-pt%"

exit/b



::_

:

set fp=* Checking the command line parameters.

rem lu: Nov-27-2019

echo.
echo %fp%

echo.
rem This equals the entire parameter list!
echo %*

echo.
echo %2

exit/b



:_+ Reflextion via Dynamic Variable Naming



::_

:ref3

set fp=* Reflection version 3. Dynamic variable naming.

rem lu: Mar-30-2020

echo.
echo %fp%

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



::_

:ref4

set fp=* Reflection version 4. Dynamic variable naming.

rem lu: Mar-30-2020

echo.
echo %fp%

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



:_

:

set fp=* Test if folder exists. Test folder existence.

rem lu: Apr-21-2020

echo.
echo %fp%

cd /d %dropbox%\Backups\Savannah

dir | find /i "backups\savannah">nul

if %errorlevel% == 0 echo. & echo * Folder EXISTS.

if %errorlevel% == 1 (
  echo.
  echo * Error: The Backups\Savannah folder does NOT exist on this computer.
  exit/b
)

exit/b



:_+ Suppressing Error Messages



::_

:htse

set fp=* How to suppress error messages in batch files.

rem lu: Nov-24-2020

echo.
echo %fp%

rem For example, this would suppress the standard cannot find label error message.
goto %1 2>nul

exit/b


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

:

set fp=* Interesting Java code snippet that I'm not sure what it does.

rem lu: Jan-31-2019

echo.
echo %fp%

rem From gradlew.bat

echo.
rem set JAVA_EXE=java.exe
rem %JAVA_EXE% -version >NUL 2>&1

java -version 2>&1

if "%ERRORLEVEL%" == "0" echo Is zero.

exit/b



::_

:tgw

set fp=* Test goto with no label found.

rem Is there a way to test if a label exists in a batch file before calling the goto statemnt?

rem lu: Jul-9-2018

echo %fp%

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



:_

:

set fp=* If not defined.


rem lu: Nov-1-2019

echo.
echo %fp%

echo.
set cbf-test=

rem (!defi)
if not defined cbf-test echo * cbf-test is not defined.

exit/b



:_

:old-help

cls

echo.
echo %cbf-filep%

rem skw:

rem lu: 

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

set fp=* Inheritance and global variables.

rem lu: Sep-1-2021

echo.
echo %fp%

call pn tickl>nul

set cbf-pd=1488

set cbb-pt=%cbf-pt%\%cbf-pd%

set cbf-jpg=%cbf-pt%\The difference between the CHIS and ETD folders before I make ticket lbm-1488 changes.png

set cbf-jpg2=%cbf-pt%\%cbf-pd%\The difference between the CART and ETD folders before I make ticket lbm-1488 changes.png

exit/b



:_+ CBF Template Library (!lbr)


rem skw succinct (!succ)



::_

:

set cbf-pd=

rem lu: 

echo.
echo * %cbf-pd%.

call pn r

set cbf-branch=main

set cbf-cn=git@github.com:jonathan-r-jones/%cbf-pd%.git

set cbf-pt=%cbf-pt%\%cbf-pd%

exit/b



:_

:hlp-old

set fp=* Command line help.

echo.
echo %fp%

set help_filename=%temp%\help_contents.txt

curl --help>%help_filename%

if errorlevel 1 exit/b

set cbf-parameter=%help_filename%

call an ie

call r

exit/b



:_

:equa

echo. & echo * Equality checking.

rem lu: Feb-9-2022

rem (!bfequa, !equa)

if "%cbf-pt%" == "" (
  echo. & echo * Error: Cbf-pt is not set.
  exit/b
)

if "%1" == "" goto help

if "%1" == "?" goto help


exit/b



:_+ Validation Family (!fyva) error-level-educational-series



::_

:validate_path

if errorlevel 1 exit/b (!el1, !ec, !gtr, !err, !erro, !el, !erle)

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

:elt1

echo. & echo * Error level test 1. If this returns 1, it means error level is working!

rem lu: Feb-17-2022

rem canary in a coal mine, error level testing

echo %1 | find "not-present">nul

call el

exit/b



::_

:validate_filename

call fnv %1

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
  echo * Error: Label not found. - skw
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

set fp=* Test return codes for "n" calls. How do you reset errorlevel?

rem lu: Jul-18-2018

echo %fp%

call n bullshit

echo.
echo * Errorlevel: %errorlevel%

ver>nul

call n cnn

echo.
echo * Errorlevel: %errorlevel%

exit/b



:_+ Testing Error Level. (!tel) (skw test error level, test errorlevel)



::_

:el3

echo. & echo =* Test error level inside an if block.

rem lu: Mar-1-2022

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

Footnote:

:https://stackoverflow.com/questions/4367930/errorlevel-inside-if



::_

:el2

echo. & echo * Test error level when looking for folders.

rem lu: Nov-1-2019

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



::_

:style_old

set fp=* The errorlevel statement.

echo %fp%

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

set fp=* Test error level when looking for folders. %1

rem lu: Nov-1-2019

rem This works.

echo.
echo %fp%

cd /d c:\aq

if %errorlevel% equ 0 (
  echo.
  echo * Error level equals 0.
) else (
  echo.
  echo * Error level equals 1.
)

exit/b



::_

:style_10

set fp=* Test error level when looking for folders. %1

rem lu: Nov-1-2019

rem This works.

echo.
echo %fp%

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

rem lu: Apr-7-2022

if %computername%==xps echo 1
if %computername%==XPS echo 2
if /i %computername%==xps echo 3

exit/b



::_

:teco

echo. & echo * Testing computer name 2.

rem lu: Apr-11-2022

echo %computername% | find /i "xps">nul

if errorlevel 1 echo one
if not errorlevel 1 echo not one This is good.
if errorlevel 0 echo zero - Don't use this.

exit/b



:_

:or-operator-do-not-use

echo. & echo * Or operator. THIS DOESN'T WORK. Apr-18-2023

set cbf-test=2

if ("%cbf-test%" == "1") or ("%cbf-test%" == "2") (
  echo 1
)

echo. & echo cbf-test: "%cbf-test%"

exit/b



:_

:

(skw contains period, contains a period)
echo %1| find /i ".">nul
if errorlevel 0 goto
if errorlevel 1 goto
exit/b



:_
:Apr-28-2023
rem Same line error checking.
call fe %2 & if errorlevel 1 exit/b
exit/b


rem Cool code.



:_
rem This makes "no" for Notepad = %0, where it was %1.
rem (!shift)
if not "%0" == "e.bat" goto next
shift/0
call an %0
echo. & echo * p0: %0
echo. & echo * p1: %1
:next
exit/b



:_+ All Command Line Parameters



::_

:ap

:whli

echo. & echo * Show whole line of parameters.

echo.
echo %*

exit/b



::_

:cla

set fp=* How to save command line arguments. This works.

rem Test percent star command.

rem lu: Jan-31-2019

echo.
echo %fp%

rem set cmd_line_args=%*

rem echo.
rem echo Commanmd line Arguments: %Cmd_line_args%

echo.
echo Commanmd line Arguments: %*

exit/b



::_

:aclp

echo. & echo * %1.

if -%5-==-?-goto help

rem skw: all parameters, command line parameters, all command line parameters, whole command line
rem all_parameters, all_command_line_parameters, all_command_line

call :aclp-test %*

exit/b

:help

echo. & echo Parameter Descriptions
echo. & echo Parameter 2: parameter 2 is required.
echo. & echo Parameter 3: parameter 3 is required.
echo. & echo Parameter 4: parameter 4 is required.
echo. & echo Parameter 5: parameter 5 is required.

exit/b



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

set fp=* Testing errorlevel part 2.

rem lu: Jan-28-2022

echo.
echo %fp%

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



::_

:tfc

set fp=* Test find command.

echo.
echo %fp%

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

set fp=* Which environment is the kiosk pointing to? (skw finding text in file)

echo.
echo %fp%

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



::_

:epl

set fp=* Evaluate the parameter list, less capable version.

rem lu: Nov-27-2019

echo.
echo %fp%

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



::_
:evaluate-the-parameter-list
:find

echo. & echo * Find example.

call m cel
echo. & echo EL: %errorlevel%
echo %1| find /i ".">nul
echo %*| find /i "/s">nul

if %errorlevel% == 0 (
  echo. & echo Parameter list contains "/s".
  set cbf-search-subfolders=1
) else (
  echo. & echo Parameter list does NOT contain a "/s".
)

rem (!find, !cont, !contains, !pipe, !echo) 
rem skw: contains, find period in filename, all command line variables, all parameters, entire 
rem command line, command line arguments, parameter passing, passing parameters
rem Does the parameter list contain "/test"?, command line options, how to detect command line 
rem options, how to detect command line parameters

echo %*| find /i "/p">nul

if %errorlevel% == 0 (
  echo. & echo Parameter list contains "/p".
  set cbf-pipe-to-file=1
) else (
  echo. & echo Parameter list does NOT contain a "/p".
)

exit/b
rem lu: Jul-5-2023



:_+ Populating an environment variable from a file and Choice.

:skw: setting an environment variable from a file




::_
:
echo. & echo * Can you put a call message into an environment variable?
rem set environment variable from file
call s>%tmp%\git_status_message.txt
set /p git_status_message=<%tmp%\git_status_message.txt
exit/b
rem lu: Apr-1-2019



::_

:pev

set fp=* How to populate an environment variable from a file.

rem lu: Oct-24-2019

rem populating an environment variable from a file: skw

rem The problem with this command is that it only does the first line of the file.

echo.
echo %fp%

echo.
set /p test=<c:\a\j1.txt

echo.
echo %test%

exit/b

how do you set an environment variable from file: skw



::_

:user_choice

set fp=* Ask the user a question and proceed accordingly.

echo.
echo %fp%

rem option, choose, choice

echo.
set /P user_option=Would you like to run "npm install"? (y/n): 

if not "%user_option%"=="y" call nm inst

exit/b



::_

:where

set fp=* Go to the where location.

rem lu: Jun-20-2019

echo.
echo %fp%

echo.
where>c:\a\j1.txt
set /p test=<where
echo 'test:' %test%

exit/b



:_
:pfem
echo. & echo * Proper formatting of error messages.
echo.
call err blah blah. Jul-11-2023_3_50_PM - %0.bat
exit/b


creation date: Jul-3-2023



:_

:squi

set fp=* Squiggle help.

rem lu: Dec-30-2018

echo.
echo %fp%

exit/b

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
%~dp$PATH:1 - searches the directories listed in the PATH
               environment variable for %1 and expands to the
               drive letter and path of the first one found.
%~ftza1     - expands %1 to a DIR like output line

exit/b



:_+ If Exist (!ifex, !exis)



::_
:ffex
:fiex
echo. & echo * Test for the exisitence of a file or folder.
rem skw filename existence, Test if file exists. (!fe)
call fe package.json & if errorlevel 1 exit/b

rem Expected type of file. (skw file extension)
echo %2| find /i ".ts">nul
if errorlevel 1 (
  call err Expected a TypeScipt file.
  exit/b
)

exit/b
rem lu: Aug-29-2023



::_

:old-fiex

set fp=* File existence.

rem See also specific_file_presence in m.bat.

rem lu: Dec-27-2018

echo.
echo %fp%

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



::_

:th_specific_folder_presence

set fp=* Test harness for specific_folder_presence.

rem lu: Nov-11-2019

echo.
echo %fp%

call %0 specific_folder_presence .chef

if %errorlevel% == 1 (
  exit/b 1
)

echo.
echo * Run commands. Nov-11-2019 6:21 PM

exit/b



::_

:hie

set fp=* To get help on the "if exist" command, use this code block.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.
if exist/?

exit/b



::_

:finex

set fp=* Test if a File does not exist.

rem lu: Dec-27-2018

echo.
echo %fp%

if not exist "amx.bat" (
  echo.
  echo * File does not exist.
)

exit/b



::_

:folder_exists_2

set fp=* Testing whether a folder exists 2.

rem lu: May-23-2018

echo %fp%

if exist "%1" (
  echo.
  echo Folder exists.
)

if not exist "%1" echo It does NOT exist.

exit/b



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

:Notice also that set statement employ single "=" sign, whereas comparison employ 2 "=" signs.

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

:del "file identifier report.txt"

exit/b



:_
:

set fp=* If filename.

echo %1| find /i ".">nul
if errorlevel 1 (
  call err Period not present.
  exit/b
)

exit/b



::_
:
echo. & echo * Test presence of a file type.
echo dir *.cs| find /i ".cs">nul
if errorlevel 0 echo el0
if errorlevel 1 echo el1
if errorlevel 2 echo el2

exit/b
creation date: Sep-25-2023



:_ (!efv)

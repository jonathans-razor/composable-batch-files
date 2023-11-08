:_

@echo off


if "%~1" == "" goto l
if "%~1" == "?" goto help

goto %1



:_

:help

echo. & echo * A batch file wrapper around the tasklist and tasklist commands that helps you reuse and remember your commonly used commands.

echo.
echo Usage: %0 [Optional Parameter 1]

echo.
echo If parameter 1 is left blank, an unsorted list is displayed.

echo.
echo     Parameter  Description
echo -------------  --------------------------------------------------
echo          sort  Pipe running images to a sortable text file.

exit/b



:_

   .--.      .--.      .--.      .--.      .--.
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::
        `--'      `--'      `--'      `--'      `--' 



:_

:lex

echo. & echo * List running ex images.


echo.

tasklist /v /fi "imagename eq ex*"

exit/b



:_

:l

echo. & echo * List running images.



tasklist /fo table

exit/b



:_

:ll

echo. & echo * List running images.



tasklist /fo list

exit/b



:_

:x

echo. & echo * Tasklist examples.

TASKLIST
rem TASKLIST /M
rem TASKLIST /V /FO CSV
rem TASKLIST /SVC /FO LIST
rem TASKLIST /APPS /FI "STATUS eq RUNNING"
rem TASKLIST /M wbem*
rem TASKLIST /S system /FO LIST
rem TASKLIST /S system /U domain\username /FO CSV /NH
rem TASKLIST /S system /U username /P password /FO TABLE /NH
rem TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"

exit/b



:_

:sort

echo. & echo * Pipe running images to a sortable text file.



tasklist /fo table>%temp%\search_results.txt

call me sr

exit/b



:_

:test

echo. & echo * Test. This works.

rem lu: Jan-4-2019

echo.


TASKLIST /FI "USERNAME ne NT AUTHORITY\SYSTEM" /FI "STATUS eq running"

exit/b



:_

:test2

echo. & echo * Undercase. This works.

rem lu: Jan-4-2019

echo.


tasklist /fi "username ne nt authority\system" /fi "status eq running"

exit/b



:_

:ex

:we

echo. & echo * Windows Explorer.

rem lu: Jan-4-2019

echo.


tasklist /fi "username ne nt authority\system" /fi "status eq running" /fi "imagename eq explorer.exe" /fi "windowtitle ne untitle*"

rem These don't work.
rem /fi "im eq explorer.exe"
rem /fi "image eq explorer.exe"
rem /fi "image name eq explorer.exe"

exit/b



:_

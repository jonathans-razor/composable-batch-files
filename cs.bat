:_

@echo off

if "%~1" == "?" goto help
if "%~1" == "" goto help

goto validate_user_input



:_
:help
cls

echo. & echo * Ad hoc file contents search for current folder and subfolders.

echo. & echo * Usage: %0 [space separated parameter(s)]

echo. & echo * Parameter 1: Search criterion. If spaces are used, double quotes are necessary.

echo. & echo * Parameter 2 (Optional): File type to search. For example, "txt" (without quotes) would search only txt type files.  If left blank, then the default, which is batch files (*.bat), will be searched. You can add up to 8 file types to search. 
echo  If -g is used, the group of files associated with that alias will be used.
echo  If -f is used, the the given filename is used as the targetted file type to search.

echo. & echo Parameter 3: Alias to use for the group of file types to search.

echo. & echo * Examples:
echo This searches for the phrase hello world inside txt files.
echo Quotes are required around the phrase because it contains a space.
echo %0 "hello world" txt   

echo. & echo This searches for the phrase hello-world inside html files.
echo Quotes are not required around the phrase because it does not contain a space.
echo %0 hello-world html

echo. & echo td csc
echo %0 "clean install" Jenkinsfile

echo. & echo td ma
echo %0 "kiosk session length" -g ma

echo. & echo td caco
echo %0 "no_cookie.html" -g caco

echo. & echo td api
echo %0 "><" java

echo. & echo %0 jibx -f pom.xml

echo. & echo %0 jks -g rx

exit/b



:_

   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_

:validate_user_input

if "%~2" == "" (
  set cbf-file-type=*.bat
) else if "%~2" == "-g" (
  call n %3
) else if "%~2" == "-f" (
  set cbf-file-type=%3
) else (
  set cbf-file-type=*.%2
)

goto main



:_
set fp=* Turn on debugging information.
rem lu: May-1-2020

echo. & echo Percent 1: %1

echo. & echo Percent 2: %2

echo. & echo File type: %cbf-file-type%



:_

:main

echo.>%tmp%\cs-search-results.txt

echo. & echo * Contents Search.
echo. & echo * Contents Search>>%tmp%\cs-search-results.txt

echo * Search Criterion: %~1
echo * Search Criterion: %~1>>%tmp%\cs-search-results.txt

echo   * Current folder: %cd%>>%tmp%\cs-search-results.txt

echo.
echo     * File Type(s): %cbf-file-type%
echo     * File Type(s): %cbf-file-type%>>%tmp%\cs-search-results.txt

echo ---------------------------------------------------------------------------------------------- >>%temp%\cs-search-results.txt
echo.>>%tmp%\cs-search-results.txt

rem "findstr" seems to be more powerful the "find".

findstr /i /n /o /off /s /c:%1 %cbf-file-type%>>%tmp%\cs-search-results.txt

if errorlevel 1 (
  echo. &  echo * No results found. 
  exit/b
)

call an npp>nul

start "Test Title" "%cbf-app%" "%tmp%\cs-search-results.txt"

exit/b



:_

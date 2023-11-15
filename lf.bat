:_

@echo off

title %0
if "%~1" == "?" goto help
call paco "%~2" /c>nul && goto load-contents "%~1"
call paco "%~1" .>nul && goto load-current-folder-filename-onto-clipboard
call paco "%~2" /n>nul && goto loads-the-filename-with-no-path-onto-the-clipboard
goto load-alias-filename-onto-the-clipboard

exit/b



:_
:help

cls

echo. & echo  * Load file name or contents onto clipboard.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo      If contains period, operates on the current folder filename.
echo      If alias, operates on alias' filename.

echo. & echo  * Parameter 2 (Optional):
echo      If /n, loads the filename with no path onto the clipboard.
echo      If /c, loads the filename's contents onto the clipboard.

echo. & echo    Batch file style: Multipurpose

echo. & echo  * Samples:
echo      %~n0 ga
echo      %~n0 ga /n
echo      %~n0 ga /c
echo      %~n0 j1.txt
echo      %~n0 j1.txt /c

exit/b

lu: 
Nov-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:load-current-folder-filename-onto-clipboard

echo. & echo * Load current folder filename "%~1" to the clipboard.

echo %~1 | clip

exit/b



:_

:load-alias-filename-onto-the-clipboard

call fnv %1>nul || exit/b

echo. & echo * Load filename "%cbf-fn%" to the clipboard.

echo %cbf-fn%|clip

exit/b



:_

:loads-the-filename-with-no-path-onto-the-clipboard

call fnv %1>nul || exit/b

call m distill-file-folder %cbf-fn%

echo %cbf-distilled-file-folder%| clip

echo. & echo * Load filename "%cbf-distilled-file-folder%" (path was removed) onto the clipboard.

exit/b



:_

:load-contents

call paco "%~1" .>nul && goto current-folder-filename "%~1"

call fnv %1 || exit/b

echo. & echo * Load contents of file "%cbf-fn%" to the clipboard.

clip < "%cbf-fn%"

exit/b



:_

:current-folder-filename

echo. & echo * Load contents of filename "%~1" to the clipboard.

clip < %~1

exit/b



:_

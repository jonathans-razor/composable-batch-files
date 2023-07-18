:_

@echo off



:_

if "%~1" == "?" goto help
if "%~1"=="" goto open_folder_in_win_explorer_cd

goto open_folder_in_windows_explorer



:_

:help

echo. & echo * Open folder.
echo. & echo * Usage: of [Parameter 1]
echo. & echo * Parameter 1 (Optional): Path to walk before opening Windows Explorer. If left blank, the current folder is used.
echo. & echo * Notes: This is a wrapper around td.bat and n.bat.

exit/b



:_

:open_folder_in_windows_explorer

set fp=* Open folder in Windows Explorer.

rem fcd: May-9-2017

set cbf-pt=

call t %1 %2

rem echo * Errorlevel from OF: %errorlevel%

if "%errorlevel%"=="0" (
  goto open_folder_in_win_explorer_cd
) else (
  call m clear_errorlevel_silently
)

exit/b



:_

:open_folder_in_win_explorer_cd

rem echo. & echo * At the current directory.

explorer %cd%

exit/b



:_ (!sp) (mov-9)

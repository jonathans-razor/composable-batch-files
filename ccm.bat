:_

@echo off
if "%~1" == "?" goto help
goto main



:_
:help

cls

echo. & echo  * Compile CMAC macros.

echo. & echo    Usage: %~n0

echo. & echo  * Batch file style: Single purpose

exit/b

lu: 
Nov-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:main

echo.

set macro_folder=%dropbox%\Multi-Edit_2008_Config_Files\Mac

echo Compile Aliases.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Aliases.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Shared.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Shared.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Regexes.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Regexes.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Finder.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Finder.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Format.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Format.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile ListMgr.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\ListMgr.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Clif.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Clif.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Searcher.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Searcher.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Jonathan's_Macro.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Jonathan's_Macros.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

echo Compile Build CMAC Macros.
set filename=%dropbox%\savannah\cmac\Quickla-for-Multi-Edit\Build_CMAC_Macros.s
"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%" -WE -I"c:\program files (x86)\Multi-Edit 2008\Src"

:This works.
rem :"c:\program files (x86)\multi-edit 2008\cmacwin.exe" "%filename%" -p"%macro_folder%"
rem :cmacwin.exe "%filename%" -p"%macro_folder%"
rem :"c:\program files (x86)\multi-edit 2008\cmacwin.exe"
rem :cmacwin.exe

exit/b



:_

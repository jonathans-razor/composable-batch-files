:_

@echo off
if "%~1" == "" goto c
if "%~1" == "?" goto help
goto %1



:_
:help

cls

echo. & echo  * CMAC operations.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Alias of the operation you wish to run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 o

exit/b

lu: 
Nov-3-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:o
:ocf
echo. & echo * Open CMAC files.
call t ql>nul
echo.
call me Aliases.s
call me Clif.s
call me Finder.s
call me Format.s
call me "Jonathan's_Macros.s"
call me ListMgr.s
call me Regexes.s
call me Searcher.s
call me Shared.s

exit/b
lu: Nov-3-2023



:_
:c
:ccm

echo. & echo * Compile CMAC macros.
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

lu:
Nov-3-2023
Feb-19-2019



:_

:_

@echo off
if "%~1" == "" goto help
if "%~1" == "?" goto help
goto %1



:_
:help

cls

echo. & echo  * Leet code tester.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Atomic leet code function test you wish to run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 Oct-11-2023-2

exit/b

lu: 
Sep-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:Oct-11-2023-1

cls

call t dsa>nul

@echo on
call pyt reverse-string.py hello

exit/b



:_
:Oct-11-2023-3

cls

call t dsa>nul

@echo on
call pyt run 217-contains-duplicate.py 1 2 3

exit/b



:_
:Oct-11-2023-4

cls

call t dsa>nul

@echo on
call pyt run 217-contains-duplicate.py 1 2 3 3

exit/b



:_
:Oct-11-2023-5

cls

call t dsa>nul

@echo on
call pyt 217-contains-duplicate.py 1 2 3 
@echo on
call pyt 217-contains-duplicate.py 1 2 3 3
@echo on
call pyt 217-contains-duplicate.py 5 1 2 3 3
@echo on
call pyt 217-contains-duplicate.py 62 7 88 62

exit/b



:_
:Oct-11-2023-7

cls

call t dsa>nul

@echo on
call nd 49-groups-of-anagrams.js "listen" "silent" "enlist" "hello" "world" "dog" "god"

exit/b



:_
:Oct-11-2023-8

cls

call t dsa>nul

@echo on
call nd 49-groups-of-anagrams.js "beast" "stab" "bats" "feel" "left" "felt"

exit/b



:_
:Oct-11-2023-9

cls

call t dsa>nul

@echo on
call nd 49-groups-of-anagrams-2.js "beast" "stab" "bats" "feel" "left" "felt"

exit/b



:_
:Oct-11-2023-10

cls

call t dsa>nul

@echo on
call nd run 49-groups-of-anagrams-2.js "listen" "silent" "enlist" "hello" "world" "dog" "god" "ogd"

exit/b



:_
:Oct-13-2023-1

cls

call t dsa>nul

@echo on
call nd run 49-groups-of-anagrams-3.js "listen" "silent" "enlist" "hello" "dog" "god" "orldw"

exit/b



:_
:Oct-13-2023-2

cls
call t dsa>nul

@echo on
call pyt run 1-two-sum.py 2 7 11 15 9

exit/b



:_
:Oct-13-2023-3

cls

call t dsa>nul

@echo on
call pyt run 1-two-sum.py 2 7 11 15 9

@echo on
call pyt run 1-two-sum.py 3 2 4 6

exit/b



:_
:Oct-13-2023-4

cls

call t dsa>nul

@echo on
call pyt run 242-valid-anagram.py cat act

call pyt run 242-valid-anagram.py bullshit noshit

exit/b



:_
:Oct-13-2023-5

cls

call t dsa>nul

@echo on
call pyt run 49-groups-of-anagrams.py "eat" "tea" "tan" "ate" "nat" "bat"

exit/b



:_
:Oct-13-2023-6

rem Try again without using double quotes.
rem Result: Double quotes are not necessary, at least in this case.

cls

call t dsa>nul

@echo on
call pyt run 49-groups-of-anagrams.py eat tea tan ate nat bat

exit/b



:_
:Oct-13-2023-7

cls

call t dsa>nul

@echo on
call pyt run 347-top-k-frequent-elements.py 4,5,6,71,2,3,,8,9,10 3

exit/b



:_
:Oct-13-2023-8

cls

call t dsa>nul

@echo on
call pyt run 347-top-k-frequent-elements.py 1 1 2 2 2 3 3

exit/b



:_
:Oct-13-2023-9

cls

call t dsa>nul

@echo on
call pyt run 347-top-k-frequent-elements.py 3 1 2 2 2 3 3

exit/b



:_     qq

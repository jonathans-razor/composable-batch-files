:_

@echo off

if "%~1" == "?" goto help

rem call t dsa>nul
call :is-leetcode-number %1 && exit/b

if "%~1" == "" (
  goto code-execution-area
) else (
  goto %1
)



:_
:help

cls

echo. & echo  * Leet code tester.

echo. & echo    Usage: %~n0 [space separated parameter(s)]

echo. & echo  * Parameter 1:
echo    Atomic leet code function test you wish to run.
echo    OR a LeetCode number you wish to look up on the web.
echo    If left blank, the bottom function after the code execution area is run.

echo. & echo  * Batch file style: Multipurpose

echo. & echo  * Samples:
echo    %~n0 Oct-11-2023-2
echo    %~n0 7

exit/b

lu: 
Sep-26-2023



:_
   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:_
:is-leetcode-number
cls
echo. & echo * Is LeetCode number.
python is-natural-number-less-than-5000.py %1 > %tmp%\cbf-is-leetcode-number.txt
set /p cbf-is-leetcode-number=<%tmp%\cbf-is-leetcode-number.txt
rem Zero equals true, in this case.
if "%cbf-is-leetcode-number%" == "0" goto look-up-leetcode-number
exit/b 1



:_
:look-up-leetcode-number
echo. & echo * Look up LeetCode number %1.
call an br>nul
set cbf-parameter=https://www.google.com/search?q=LeetCode+problem+number+%*
call r
exit/b 0



:_look-up-leetcode-number
:Oct-11-2023-1

cls

call t dsa>nul

@echo on
call ph reverse-string.py hello

exit/b



:_
:Oct-11-2023-3

cls

call t dsa>nul

@echo on
call ph 217-contains-duplicate.py 1 2 3

exit/b



:_
:Oct-11-2023-4

cls

call t dsa>nul

@echo on
call ph 217-contains-duplicate.py 1 2 3 3

exit/b



:_
:Oct-11-2023-5

cls

call t dsa>nul

@echo on
call ph 217-contains-duplicate.py 1 2 3 
@echo on
call ph 217-contains-duplicate.py 1 2 3 3
@echo on
call ph 217-contains-duplicate.py 5 1 2 3 3
@echo on
call ph 217-contains-duplicate.py 62 7 88 62

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
call nd 49-groups-of-anagrams-2.js "listen" "silent" "enlist" "hello" "world" "dog" "god" "ogd"

exit/b



:_
:Oct-13-2023-1

cls

call t dsa>nul

@echo on
call nd 49-groups-of-anagrams-3.js "listen" "silent" "enlist" "hello" "dog" "god" "orldw"

exit/b



:_
:Oct-13-2023-2

cls
call t dsa>nul

@echo on
call ph 1-two-sum.py 2 7 11 15 9

exit/b



:_
:Oct-13-2023-3

cls

call t dsa>nul

@echo on
call ph 1-two-sum.py 2 7 11 15 9

@echo on
call ph 1-two-sum.py 3 2 4 6

exit/b



:_
:Oct-13-2023-5

cls

call t dsa>nul

@echo on
call ph 49-groups-of-anagrams.py "eat" "tea" "tan" "ate" "nat" "bat"

exit/b



:_
:Oct-13-2023-6

rem Try again without using double quotes.
rem Result: Double quotes are not necessary, at least in this case.

cls

call t dsa>nul

@echo on
call ph 49-groups-of-anagrams.py eat tea tan ate nat bat

exit/b



:_
:Oct-13-2023-7

cls

call t dsa>nul

@echo on
call ph 347-top-k-frequent-elements.py 4,5,6,71,2,3,,8,9,10 3

exit/b



:_
:Oct-13-2023-8

cls

call t dsa>nul

@echo on
call ph 347-top-k-frequent-elements.py 1 1 2 2 2 3 3

exit/b



:_
:Oct-13-2023-9

cls

call t dsa>nul

@echo on
call ph 347-top-k-frequent-elements.py 3 1 2 2 2 3 3

exit/b



:_
:Oct-16-2023-1

cls

call t dsa>nul

@echo on
call ph 238-product-of-array-except-self.py 1 2 3 4

exit/b



:_
:Oct-18-2023-2

cls

call t dsa>nul

@echo on
call ph 36-valid-sudoku.py

exit/b



:_
:Oct-19-2023-1

cls

call t dsa>nul

@echo on
call ph 242-valid-anagram.py cat act
@echo off

call ph 242-valid-anagram.py bullshit noshit

exit/b



:_
:Oct-19-2023-2

cls

call t dsa>nul

@echo on
call ph echo-parameters.py cat hat
@echo off

exit/b



:_
:Oct-19-2023-3

cls

call t dsa>nul

call ph echo-parameters.py

exit/b



:_
:Oct-19-2023-4

cls

call t dsa>nul

call ph echo-parameters.py cat hat 1 2 3

exit/b



:_
:Oct-19-2023-5

cls

call t dsa>nul

@echo on
call nd echo-parameters.js cat hat 1 2 3
@echo off

exit/b



:_
:Oct-20-2023-1

cls

call t dsa>nul

call ph echo-parameters.py

exit/b



:_
:Oct-20-2023-2

cls

call t dsa>nul

call ph 128-longest-consecutive-sequence.py

exit/b



:_
:Oct-20-2023-3

cls

call t dsa>nul

call ph 128-longest-consecutive-sequence.py 100 4 200 1 3 2

exit/b



:_
:Oct-20-2023-4

cls

call t dsa>nul

call ph fizz.py

exit/b



:_
:Oct-20-2023

cls

call t dsa>nul

call ph fizz-parameterized.py 1 2 3 4

exit/b



:_
:Oct-23-2023

cls

call t dsa>nul

call ph reverse-string.py "tacocat is my favorite palindrome"

exit/b



:_
:Oct-24-2023-2

cls

call t d>nul

rem These rolls should equal a score of: 40
call ph calculate-bowling-score.py 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

exit/b



:_
:Oct-24-2023

cls

call t d>nul

rem These rolls should equal a score of: 
call ph calculate-bowling-score.py "X 9/ 5/ 72 X X X 9/ 8/ 9/ 9"

exit/b



:_
:Oct-24-2023-3-0

cls

call t d>nul

rem These rolls should equal a score of: 0
call ph calculate-bowling-score.py 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

exit/b



:_
:Oct-24-2023-20

cls

call t d>nul

rem These rolls should equal a score of: 20
call ph calculate-bowling-score.py 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 9 10

exit/b



:_
:Oct-24-2023-179

cls

call t d>nul

rem These rolls should equal a score of: 179
call ph calculate-bowling-score.py 5 3 7 2 10 10 8 1 10 9 0 10 10 10 8 2

exit/b



:_
:Oct-24-2023-300

cls

call t d>nul

rem These rolls should equal a score of: 300
call ph calculate-bowling-score.py 10 10 10 10 10 10 10 10 10 10 10 10

exit/b



:_
:Oct-24-2023-179

cls

call t d>nul

rem These rolls should equal a score of: 150
call ph calculate-bowling-score.py 5 5 8 0 10 6 3 9 1 6 3 10 10 6 3 10 7 1

exit/b



:_
:Oct-11-2023-7

cls

call t d>nul

@echo on
call nd 49-groups-of-anagrams.js "listen" "silent" "enlist" "hello" "world" "dog" "god"

exit/b



:_
:Oct-25-2023-1

cls

call t d>nul

@echo on
call ph 14-longest-common-prefix.py flower flow flight

exit/b



:_
:Oct-25-2023

cls

call t d>nul

@echo on
call ph 14-longest-common-prefix.py lower flow flight

exit/b



:_
:Oct-26-2023

cls

call t d>nul

@echo on
call ph 20-valid-parentheses.py ()

call ph 20-valid-parentheses.py x

call ph 20-valid-parentheses.py (x)

call ph 20-valid-parentheses.py []

exit/b



:_
:Oct-27-2023

cls

call t d>nul

@echo on
call ph 3-longest-substring-without-repeating-characters.py abcabcbb


exit/b



:_
:Oct-31-2023

cls

call t d>nul

@echo on
call ph 21-merge-two-sorted-lists.py "1 3 5" "2 4 6 7"

echo.

exit/b



:_
:Oct-31-2023

cls

call t d>nul

@echo on
call ph 26-remove-duplicates-from-sorted-array.py 1 2 3 4 4 6 7

echo.

exit/b



:_
:Nov-1-2023

cls

call t d>nul

@echo on
call ph 27-remove-element.py 3 2 2 3 3

echo.

exit/b



:_
:Nov-2-2023

cls

call t d>nul

@echo on
call ph 28-find-the-index-of-the-first-occurrence-in-a-string.py sadbutsad sad

@echo on
call ph 28-find-the-index-of-the-first-occurrence-in-a-string.py sadbutsad sax

@echo on
call ph 28-find-the-index-of-the-first-occurrence-in-a-string.py sadbutsad but

@echo on
call ph 28-find-the-index-of-the-first-occurrence-in-a-string.py leetcode leeto

echo.

exit/b



:_
:Nov-3-2023

cls

call t d>nul

@echo on
call ph 6-zigzag-conversion.py paypalishiring 3

@echo on
call ph 6-zigzag-conversion.py paypalishiring 4

@echo on
call ph 6-zigzag-conversion.py A 1

echo.

exit/b



:_
:Nov-3-2023

cls

call t d>nul

@echo on
call ph 35-search-insert-position.py 1 3 5 6 5

@echo on
call ph 35-search-insert-position.py 1 3 5 6 2

@echo on
call ph 35-search-insert-position.py 1 3 5 6 7

echo.

exit/b



:_
:Nov-5-2023

cls

call t d>nul

@echo on
call ph 58-length-of-last-word.py "hello world"

@echo on
call ph 58-length-of-last-word.py "fly me to the moon"

@echo on
call ph 58-length-of-last-word.py "luffy is still joyboy"

echo.

exit/b



:_
:Nov-5-2023-2

cls

call t d>nul

@echo on
call ph 66-plus-one.py 1 2 3

@echo on
call ph 66-plus-one.py 4 3 2 1

@echo on
call ph 66-plus-one.py 9

echo.

exit/b



:_
:Oct-30-2023

cls

call t d>nul

@echo on
call ph 7-reverse-integer.py 123
@echo on
call ph 7-reverse-integer.py -123
@echo on
call ph 7-reverse-integer.py 120
@echo on
call ph 7-reverse-integer.py 1534236469

exit/b



:_
:Nov-6-2023-2

cls

call t d>nul

@echo on
call ph solution-class.py 1 1

@echo on
call ph solution-class.py 2 27

exit/b



:_
:Nov-6-2023

cls

call t d>nul

@echo on
call ph 67-add-binary.py 11 1

@echo on
call ph 67-add-binary.py 1010 1011

exit/b



:_
:Nov-6-2023-3

cls

call t d>nul

@echo on
call ph 69-sqrt-x.py 4

@echo on
call ph 69-sqrt-x.py 8

rem I predict the answer will be 8. Nov-6-2023
@echo on
call ph 69-sqrt-x.py 69

exit/b



:_
:Nov-7-2023

cls

@echo on
call ph is-natural-number-less-than-5000.py 1

@echo on
call ph is-natural-number-less-than-5000.py 5001

@echo on
call ph is-natural-number-less-than-5000.py -1

@echo on
call ph is-natural-number-less-than-5000.py 22.22

@echo on
call ph is-natural-number-less-than-5000.py 24

@echo on
call ph is-natural-number-less-than-5000.py Oct-11-2023-3

exit/b



:_
:Nov-7-2023-2

cls

:
@echo on
call ph 70-climbing-stairs.py 2

:
@echo on
call ph 70-climbing-stairs.py 3

:
@echo on
call ph 70-climbing-stairs.py 4
rem I predict 1+1+2, 1+2+1, 2+1+1, 2+2, 1+1+1+1 = 5

:necessary edge case spacer

exit/b



:_
:Oct-27-2023

cls

call t d>nul

@echo on
call ph 2-add-two-numbers.py 2 4 3 5 6 4


exit/b



:_
:Nov-7-2023-3

cls

:
@echo on
call ph 83-remove-duplicates-from-sorted-list.py "1 1 2"

exit/b

:
@echo on
call ph 83-remove-duplicates-from-sorted-list.py "1 1 2 3 3"

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-7-2023-4

cls

:
@echo on
call ph 88-merge-sorted-array.py 1,2,3,0 3 2,5,6 3

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-8-2023

cls

:
@echo on
rem python 100-same-tree.py [1, 2, 3] [1, 2, 3]
rem python 100-same-tree.py "1, 2, 3" "1, 2, 3"
rem python 100-same-tree.py "[1, 2, 3]" "[1, 2, 3]"
python 100-same-tree.py 1 2 1 2 3 4

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-8-2023

cls

:
@echo on
python 101-symmetric-tree.py 1 2 2 3 4 4 3

:
@echo on
python 101-symmetric-tree.py 1 2 2 3 4 4 5

:
@echo on
python 101-symmetric-tree.py 1 2 2 null 3 null 3

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-10-2023

cls

:
@echo on
python 121-best-time-to-buy-and-sell-stock.py 7 1 5 3 6 4

:
@echo on
python 121-best-time-to-buy-and-sell-stock.py 7 6 4 3 1

:
@echo on
python 121-best-time-to-buy-and-sell-stock.py 1 14 6 4 3 515 712

:
@echo on
python 121-best-time-to-buy-and-sell-stock.py 42 88 14 6 4 3 1 515 714

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-9-2023

cls

:
@echo on
python 118-pascals-triangle.py 1

:
@echo on
python 118-pascals-triangle.py 2

:
@echo on
python 118-pascals-triangle.py 3

:
@echo on
python 118-pascals-triangle.py 4

:
@echo on
python 118-pascals-triangle.py 5

:
@echo on
python 118-pascals-triangle.py 6

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-13-2023

cls

:
@echo on
python 136-single-number.py 4 2 2 1 1

:
@echo on
python 136-single-number.py 4 2 2 1 1 4 6

:
@echo on
python 136-single-number.py 4 4 2 55 2 1 1 6 6

:
@echo on
python 136-single-number.py 4 4 2 55 55 2 1 1 6 103 6 

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-15-2023

cls

:
@echo on
python 169-majority-element.py 3 2 3

:
@echo on
python 169-majority-element.py 2 2 1 1 1 2 2

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-14-2023

cls

:
@echo on
python 168-excel-sheet-column-title.py 1

:
@echo on
python 168-excel-sheet-column-title.py 28

:
@echo on
python 168-excel-sheet-column-title.py 701

:
@echo on
python 168-excel-sheet-column-title.py 1200

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-16-2023

cls

@echo on

python 171-excel-sheet-column-number.py A

python 171-excel-sheet-column-number.py B

python 171-excel-sheet-column-number.py C

python 171-excel-sheet-column-number.py Z

python 171-excel-sheet-column-number.py AA
python 171-excel-sheet-column-number.py AB
python 171-excel-sheet-column-number.py BA
python 171-excel-sheet-column-number.py ZY

@echo off

exit/b



:_
:Nov-12-2023

cls

:
@echo on
python 125-valid-palindrome.py canal

:
@echo on
python 125-valid-palindrome.py "a man, a plan, a canal: panama"

:
@echo on
python 125-valid-palindrome.py "race a car"

:
@echo on
python 125-valid-palindrome.py " "

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:

cls

:
@echo on
python 

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_

:code-execution-area

rem echo. & echo * Code below here runs. Permanent QQ9 **********************



:_
:Nov-16-2023

cls

:
@echo on
python curate-data.py words1.txt words2.txt words3.txt curated-data.txt

@echo off

exit/b



:_ (!efle, !rfsp) (mov-7)

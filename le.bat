:_

@echo off

if "%~1" == "?" goto help

call t dsa>nul
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

echo. & echo * This is a LeetCode number.

python is-natural-number-less-than-5000.py %1 > %tmp%\cbf-is-leetcode-number.txt
set /p cbf-is-leetcode-number=<%tmp%\cbf-is-leetcode-number.txt
rem Zero equals true, in this case.
if "%cbf-is-leetcode-number%" == "0" goto look-up-leetcode-number

exit/b 1



:_
:look-up-leetcode-number

echo. & echo * Look up LeetCode number %1.

call an br>nul
set cbf-parameter=https://leetcode.com/problemset/?page=1^^^&search=%*
call r

exit/b 0

rem:
3009 is the highest LeetCode number I was able to find. Jan-18-2024



:_
:look-up-leetcode-number-old

echo. & echo * Look up LeetCode number %1.

call an br>nul
set cbf-parameter=https://www.google.com/search?q=site:leetcode.com+LeetCode+problem+number+%*.
call r

exit/b 0



:_
:Oct-11-2023-1

cls

call t dsa>nul

@echo on
call ph reverse-string.py hello

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
:Nov-5-2023

cls

echo. & echo * %1.

@echo on
call ph 58-length-of-last-word.py "hello world"
call ph 58-length-of-last-word.py "fly me to the moon"
call ph 58-length-of-last-word.py "luffy is still joyboy"

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
:Nov-16-2023-1

cls

:
@echo on
python curate-data.py words1.txt words2.txt words3.txt curated-data.txt
@echo off

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-16-2023-2

cls

:
@echo on
python curate-data.py words4.txt words5.txt words6.txt curated-data.txt
@echo off

:Necessary Edge Case Spacer - Please do not delete.

exit/b



:_
:Nov-17-2023

cls

@echo on

:
python 205-isomorphic-strings.py egg add

:
python 205-isomorphic-strings.py egg addt

:
python 205-isomorphic-strings.py foo bar

:
python 205-isomorphic-strings.py paper title

:Necessary Edge Case Spacer - Please do not delete.

@echo off

exit/b



:_
:Nov-17-2023-2

cls

@echo on

:
python 205-isomorphic-strings.py egg add

:Necessary Edge Case Spacer - Please do not delete.

@echo off

exit/b



:_
:Oct-11-2023-3

cls

@echo on

call ph 217-contains-duplicate.py 1 2 3 1

call ph 217-contains-duplicate.py 1 2 3 4

call ph 217-contains-duplicate.py 1 1 1 3 3 4 3 2 4 2

call ph 217-contains-duplicate.py 5 4 3 2 1 6

@echo off

exit/b



:_
:

cls

@echo on

python 231-power-of-two.py 1

python 231-power-of-two.py 2

python 231-power-of-two.py 4

python 231-power-of-two.py 5

python 231-power-of-two.py 82

python 231-power-of-two.py 128

@echo off

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
:Nov-21-2023

cls

@echo on

python 268-missing-number.py 3 0 1

python 268-missing-number.py 0 1

python 268-missing-number.py 9 6 4 2 3 5 7 0 1

python 268-missing-number.py 9 6 4 2 3 5 7 0 1 8 11

@echo off

exit/b



:_
:Nov-24-2023

cls

@echo on

python 9-palindrome-number.py 131
python 9-palindrome-number.py 1311
python 9-palindrome-number.py 444555
python 9-palindrome-number.py 444555444

@echo off

exit/b



:_
:ecpa
:Oct-19-2023-2

cls

call t dsa>nul

@echo on
call ph echo-parameters.py cat hat
@echo off

exit/b



:_
:ecpa1

cls

@echo on
call ph echo-parameters-1.py cat hat
@echo off

exit/b



:_
:Nov-24-2023

cls

@echo on

python concatenate-2-numbers-into-1.py 31 13

@echo off

exit/b



:_
:Nov-24-2023

cls

@echo on

python is-football-score-palindrome.py 31 13
python is-football-score-palindrome.py 31 14
python is-football-score-palindrome.py 21 21
python is-football-score-palindrome.py 11 11
python is-football-score-palindrome.py 11 10
python is-football-score-palindrome.py 9 19
python is-football-score-palindrome.py 21 7
python is-football-score-palindrome.py 21 28

@echo off

exit/b



:_
:Nov-27-2023

cls

@echo on

python 405-convert-a-number-to-hexadecimal.py -1
python 405-convert-a-number-to-hexadecimal.py 1
python 405-convert-a-number-to-hexadecimal.py 2
python 405-convert-a-number-to-hexadecimal.py 3
python 405-convert-a-number-to-hexadecimal.py 26
python 405-convert-a-number-to-hexadecimal.py 27
python 405-convert-a-number-to-hexadecimal.py 28
python 405-convert-a-number-to-hexadecimal.py 29
python 405-convert-a-number-to-hexadecimal.py 30
python 405-convert-a-number-to-hexadecimal.py 31
python 405-convert-a-number-to-hexadecimal.py 32
python 405-convert-a-number-to-hexadecimal.py 33
python 405-convert-a-number-to-hexadecimal.py 51
python 405-convert-a-number-to-hexadecimal.py 52
python 405-convert-a-number-to-hexadecimal.py 53

@echo off

exit/b



:_
:Dec-1-2023

cls

@echo on

python return-leftmost-number-of-characters-of-a-string.py hello 2
python return-leftmost-number-of-characters-of-a-string.py "12345678 1 2345678 2 2345678 3 2345678 4 2345678 5 2345678 6 2345678 7 2345678 8" 60
python return-leftmost-number-of-characters-of-a-string.py "Happy Jello Day" 5

@echo off

exit/b



:_
:Dec-1-2023

cls

@echo on

python 5-longest-palindromic-substring.py babad
python 5-longest-palindromic-substring.py cbbd
python 5-longest-palindromic-substring.py babyyouremine
python 5-longest-palindromic-substring.py abyyouremine
python 5-longest-palindromic-substring.py copperheadsnakesarecool
python 5-longest-palindromic-substring.py raininspain
python 5-longest-palindromic-substring.py 1
python 5-longest-palindromic-substring.py 12
python 5-longest-palindromic-substring.py 22

@echo off

exit/b



:_
:Dec-2-2023

cls

@echo on

python 8-string-to-integer.py "42"
python 8-string-to-integer.py "      -42"
python 8-string-to-integer.py "4193 with words"

@echo off

exit/b



:_
:Dec-3-2023

cls

echo. & echo * LeetCode Problem 10.

echo. & echo * Expecting 
echo False
python 10-regular-expression-matching.py aa a

echo. & echo * Expecting
echo True
python 10-regular-expression-matching.py aa a*

echo. & echo * Expecting
echo True
python 10-regular-expression-matching.py ab .*

:
echo. & echo * Expecting
echo True
python 10-regular-expression-matching.py aaa a*a

:
echo. & echo * Expecting
echo False
python 10-regular-expression-matching.py aaaaaaaaaaaaaaaaaaa a*a*a*a*a*a*a*a*a*b

exit/b



:_
:Dec-4-2023

cls

@echo on

python 12-integer-to-roman.py 3
python 12-integer-to-roman.py 58
python 12-integer-to-roman.py 1994

@echo off

exit/b



:_
:Oct-25-2023-1

cls

call t d>nul

@echo on
call ph 14-longest-common-prefix.py flower flow flight
call ph 14-longest-common-prefix.py part ways path pantry hello apart
call ph 14-longest-common-prefix.py dog racecar car
call ph 14-longest-common-prefix.py dog doggy dogfish

exit/b



:_
:Dec-5-2023

cls

@echo on

python 17-letter-combinations-of-a-phone-number.py 23
python 17-letter-combinations-of-a-phone-number.py ""
python 17-letter-combinations-of-a-phone-number.py 2

@echo off

exit/b



:_
:Dec-5-2023

cls

@echo on

python test-factorialize.py

@echo off

exit/b



:_
:Oct-31-2023

cls

call t d>nul

@echo on
call ph 21-merge-two-sorted-lists.py 1 2 4 1 3 4

echo.

@echo on
call ph 21-merge-two-sorted-lists.py 9 3 5 2 4 7

echo.

@echo on
call ph 21-merge-two-sorted-lists.py 18 2 4 3 4 8

echo.

exit/b



:_
:Dec-7-2023

cls

@echo on

python 29-divide-two-integers.py 10 3
python 29-divide-two-integers.py 7 -3

@echo off

exit/b



:_
:Dec-8-2023

cls

@echo on

python 31-next-permutation.py 1 2 3
python 31-next-permutation.py 3 2 1
python 31-next-permutation.py 1 1 5

@echo off

exit/b



:_
:Oct-20-2023-4

cls

echo. & echo * %1. Does 1-100.

call t dsa>nul

call ph fizz.py

exit/b



:_
:Dec-8-2023-2

cls

echo. & echo * %1.

call t dsa>nul

call ph fizz-parameterized.py 1 2 3 4

exit/b



:_
:Dec-8-2023-3

cls

echo. & echo * %1.

@echo on

python 412-fizz-buzz.py 3

python 412-fizz-buzz.py 5

python 412-fizz-buzz.py 15

@echo off

exit/b



:_
:Dec-8-2023-4

cls

echo. & echo * Weird. %1

@echo on

python weird-not-weird.py 2
python weird-not-weird.py 4
python weird-not-weird.py 6
python weird-not-weird.py 7
python weird-not-weird.py 12
python weird-not-weird.py 19
python weird-not-weird.py 20
python weird-not-weird.py 22
python weird-not-weird.py 24
python weird-not-weird.py 97
python weird-not-weird.py 98

@echo off

exit/b



:_
:Dec-10-2023

cls

echo. & echo * %1.

@echo on

python 34-find-first-and-last-position-of-element-in-sorted-array.py 5,7,7,8,8,10 8
python 34-find-first-and-last-position-of-element-in-sorted-array.py 5,7,7,8,8,10 6
python 34-find-first-and-last-position-of-element-in-sorted-array.py "" 0

@echo off

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
:Dec-12-2023

cls

echo. & echo * %1.

@echo on

python 41-first-missing-positive.py 1,2,0
python 41-first-missing-positive.py 3,4,-1,1
python 41-first-missing-positive.py 7,8,9,11,12

@echo off

exit/b



:_
:Dec-13-2023

cls

echo. & echo * %1.

@echo on

python 42-trapping-rain-water.py 0,1,0,2,1,0,1,3,2,1,2,1
python 42-trapping-rain-water.py 4,2,0,3,2,5
python 42-trapping-rain-water.py 1,0,1

@echo off

exit/b



:_
:Dec-14-2023

cls

echo. & echo * %1.

@echo on

python 43-multiply-strings.py "2" "3"
python 43-multiply-strings.py "123" "456"
python 43-multiply-strings.py "22" "10"

@echo off

exit/b



:_
:Dec-15-2023

cls

echo. & echo * %1.

@echo on

python 44-wildcard-matching.py aa a
python 44-wildcard-matching.py aa *
python 44-wildcard-matching.py cb ?a
python 44-wildcard-matching.py z z
python 44-wildcard-matching.py bbc bb
python 44-wildcard-matching.py zzz *
python 44-wildcard-matching.py 82 8?
python 44-wildcard-matching.py 822 8?
python 44-wildcard-matching.py "" "*"

echo.
rem * This is expected to be true.
python 44-wildcard-matching.py "" "******"

@echo off

exit/b



:_
:Dec-17-2023

cls

echo. & echo * %1.

@echo on

python 46-permutations.py 1,2,3
python 46-permutations.py 0,1
python 46-permutations.py 1
python 46-permutations.py 2,3,4,5

@echo off

exit/b



:_
:Dec-18-2023

cls

echo. & echo * %1.

@echo on

python 47-permutations-ii.py 1,1,2
python 47-permutations-ii.py 1,2,3

@echo off

exit/b



:_
:Dec-19-2023

cls

echo. & echo * %1.

@echo on

python raise-to-the-power.py 2 3
python raise-to-the-power.py 3 2
python raise-to-the-power.py 2 4

@echo off

exit/b



:_
:Dec-19-2023

cls

echo. & echo * %1.

@echo on

python 50-pow-x-n.py 2.00000 10
python 50-pow-x-n.py 2.10000 3
python 50-pow-x-n.py 2.00000 -4

@echo off

exit/b



:_
:Dec-20-2023

cls

echo. & echo * %1.

@echo on

python 51-n-queens.py 4
python 51-n-queens.py 1

@echo off

exit/b



:_
:Dec-21-2023

cls

echo. & echo * %1.

@echo on

python 52-n-queens-ii.py 4
python 52-n-queens-ii.py 1

@echo off

exit/b



:_
:Dec-28-2023

cls

echo. & echo * %1.

@echo on

python 60-permutation-sequence.py 3 3
python 60-permutation-sequence.py 4 9
python 60-permutation-sequence.py 3 1

@echo off

exit/b



:_
:Dec-5-2023

cls

echo. & echo * Factorialize.

@echo on

python factorialize.py -3
python factorialize.py 1
python factorialize.py 2
python factorialize.py 3
python factorialize.py 4
python factorialize.py 5

@echo off

exit/b



:_
:Dec-28-2023

cls

echo. & echo * %1.

@echo on

python factorialize-2.py 1
python factorialize-2.py 2
python factorialize-2.py 3
python factorialize-2.py 4

@echo off

exit/b



:_
:Dec-29-2023

cls

echo. & echo * %1.

@echo on

python 61-rotate-list.py --list 1 2 3 4 5 --k 2
python 61-rotate-list.py --list 0 1 2 --k 4

@echo off

exit/b



:_
:Jan-1-2024

cls

echo. & echo * Expected output: 28 and 3.

@echo on

python 62-unique-paths.py 3 7
python 62-unique-paths.py 3 2

@echo off

exit/b



:_
:Jan-2-2024

cls

echo. & echo * %1.

@echo on

python 64-minimum-path-sum.py "[[1,3,1],[1,5,1],[4,2,1]]"
python 64-minimum-path-sum.py "[[1,2,3],[4,5,6]]"

@echo off

exit/b



:_
:Jan-3-2024

cls

echo. & echo * %1.

@echo on

python 65-valid-number.py 0
python 65-valid-number.py e
python 65-valid-number.py .
python 65-valid-number.py inf

@echo off

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
:Nov-6-2023

cls

call t d>nul

@echo on
call ph 67-add-binary.py 11 1

@echo on
call ph 67-add-binary.py 1010 1011

exit/b



:_
:Nov-7-2023-3

cls

@echo on
call ph 83-remove-duplicates-from-sorted-list.py 1 1 2
@echo on
call ph 83-remove-duplicates-from-sorted-list.py 1 1 2 3 3
@echo on
call ph 83-remove-duplicates-from-sorted-list.py 1 1 2 3 3 4 6

@echo off

echo.

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

rem I predict the answer will be 10. Jan-4-2024
@echo on
call ph 69-sqrt-x.py 101

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

rem I predict the answer will be 10. Jan-4-2024
@echo on
call ph 69-sqrt-x.py 101

exit/b



:_
:Jan-8-2024

cls

call t d>nul

@echo on

call ph sort-string.py test

exit/b



:_
:Jan-8-2024-2

cls

call t d>nul

@echo on
call ph sort-string-2.py test

@echo on
call ph sort-string-2.py estt

exit/b



:_
:Jan-8-2024

cls

echo. & echo * %1.

@echo on
python 90-subsets-ii.py 1 2 2

@echo on
python 90-subsets-ii.py 0

@echo on
python 90-subsets-ii.py 1 2 3

@echo off

exit/b



:_
:Jan-10-2024

cls

echo. & echo * %1.

@echo on

python 98-validate-binary-search-tree.py "[2,1,3]"
python 98-validate-binary-search-tree.py "[5,1,4,null,null,3,6]"

@echo off

exit/b



:_
:Jan-14-2024

cls

echo. & echo * %1.

@echo on
node email-regex-validation.js raybass17@gmail.com
node email-regex-validation.js raybass17gmail.com
node email-regex-validation.js raybass17@hotmail.com
node email-regex-validation.js ray@aolcom
node email-regex-validation.js ray@aol.com

@echo off

exit/b



:_
:Jan-16-2024

cls

echo. & echo * %1.

@echo on

node 1012-numbers-with-repeated-digits.js 20
node 1012-numbers-with-repeated-digits.js 40
node 1012-numbers-with-repeated-digits.js 100

@echo off

exit/b



:_
:Jan-18-2024

cls

echo. & echo * %1.

@echo on

node 122-best-time-to-buy-and-sell-stock-ii.js 7 1 5 3 6 4
node 122-best-time-to-buy-and-sell-stock-ii.js 1 2 3 4 5
node 122-best-time-to-buy-and-sell-stock-ii.js 7 6 4 3 1

@echo off

exit/b



:_
:Jan-23-2024

cls

echo. & echo * %1.

@echo on

node optional-chaining.js

@echo off

exit/b



:_
:Feb-1-2024

cls

echo. & echo * %1.

@echo on

node 278-first-bad-version.js 5 4

@echo off

exit/b



:_
:Feb-1-2024

cls

echo. & echo * %1.

@echo on

node 349-intersection-of-two-arrays.js 1,2,2,1 2,2
node 349-intersection-of-two-arrays.js 4,9,5 9,4,9,8,4
node 349-intersection-of-two-arrays.js 1,2,3 4,5,6
node 349-intersection-of-two-arrays.js 1,2,3,4 4,5,6

@echo off

exit/b



:_
:Feb-2-2024

cls

echo. & echo * %1.

@echo on

node reverse-string.js hello
node reverse-string-1.js hello
node reverse-string-2.js hello
node reverse-string-3.js hello

@echo off

exit/b



:_
:Feb-9-2024

cls

echo. & echo * %1.

@echo on

node 123-best-time-to-buy-and-sell-stock-iii.js 3 3 5 0 0 3 1 4
node 123-best-time-to-buy-and-sell-stock-iii.js 1 2 3 4 5
node 123-best-time-to-buy-and-sell-stock-iii.js 7 6 4 3 1

@echo off

exit/b



:_
:Feb-15-2024

cls

echo. & echo * %1.

@echo on

node deployment-tracker.js Package109 Package7 Package7 Package7 Package7 Package1 Package2 Package3 Package44 Package44 Package44 Package3 Package3 Package3 Package9 Package17 Package18 Package18 Package26 Package109

@echo off

exit/b



:_
:Feb-22-2024

cls

rem echo. & echo * %1.

@echo on

node 704-binary-search.js -1 0 3 5 9 12 9
node 704-binary-search.js -1 0 3 5 9 12 2
node 704-binary-search.js -1 0 3 5 9 12 15 22 23 23

@echo off

exit/b



:_
:Feb-29-2024

cls

echo. & echo * Prime numbers.

echo.
node prime-numbers.js 100

echo.
node prime-numbers.js 200

@echo off

exit/b



:_
:Mar-15-2024

cls

echo. & echo * %1.

@echo on

node 100-same-tree.js "1,2,3" "1,2,3"
node 100-same-tree.js "1,2" "1,null,3"
node 100-same-tree.js "1,2,1" "1,1,2"

@echo off

exit/b



:_
:Mar-22-2024

cls

echo. & echo * %1.

@echo on

node 112-path-sum.js 22 "5,4,8,11,null,13,4"
node 112-path-sum.js 22 "5,4,8,11,null,13,4,7,2,null,null,null,1"
node 112-path-sum.js 5 "1,2,3"
node 112-path-sum.js 3 "1,2,3"
node 112-path-sum.js 0 ""

@echo off

exit/b



:_
:

cls

echo. & echo * %1.

@echo on

node 

@echo off

exit/b



:_

:code-execution-area



:_
:Apr-4-2024

cls

echo. & echo * %1.

@echo on

node 181-employees-earning-more-than-their-managers.js 1 Joe 70000 3 2 Henry 80000 4 3 Sam 60000 Null 4 Max 90000 Null 5 Billy 70000 3 

@echo off

exit/b



:_ (!efle, !rfsp) (mov-7) PERMANENT QQ

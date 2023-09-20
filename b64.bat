@echo off
if "%~1" == "?" goto help
goto %1



:help
cls
echo. & echo * Base 64 encoding and decoding.

echo. & echo * Usage: %~n0 [space separated parameter(s)]

echo. & echo * Parameter 1: Function you wish to execute.

echo. & echo * Sample(s):
echo   %~n0 enc
echo   %~n0 dec
exit/b

rem creation date: 



   .--.      .--.      .--.      .--.      .--.                 
 :::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::
        `--'      `--'      `--'      `--'      `--'     



:1
echo * This encodes the value test to the command window.
gub base64 c:\a\j1.txt
exit/b



:2
echo * This doesn't work because the text "test" in j1 is not encoded.
gub base64 -d c:\a\j1.txt
exit/b



:3
echo * This doesn't work because it's expecting a filename.
gub base64 test
exit/b



:4
echo * This doesn't work because it's expecting a filename.
gub base64 - test
exit/b



:5
echo * This doesn't work because it's expecting a filename.
gub base64 "test"
exit/b

/usr/bin/base64: test: No such file or directory



:5
echo * 
gub base64 "test"
exit/b

/usr/bin/base64: test: No such file or directory



:6
echo * 
gub base64 - "test"
exit/b

/usr/bin/base64: extra operand 'test'



:7
echo * 
gub base64 - test
exit/b

/usr/bin/base64: extra operand 'test'



:8
echo * 
gub base64 -
exit/b

Terminal accepts input but no output is give. Strange.



:9
echo. & echo * Encode.
call pn cbf>nul
call gub base64 %cbf-pt%\base-64-unencoded-text.txt
echo.
exit/b

dGVzdA==



:10
echo. & echo * Decode.
call pn cbf>nul
call gub base64 -d %cbf-pt%\base-64-encoded-text.txt
echo.
exit/b

test



:11
echo. & echo * Encode Gettysburg Address.
call pn cbf>nul
call gub base64 %cbf-pt%\gettysburg-address.txt
echo.
exit/b

Rm91ciBzY29yZSBhbmQgc2V2ZW4geWVhcnMgYWdvIG91ciBmYXRoZXJzIGJyb3VnaHQgZm9ydGgg
b24gdGhpcyBjb250aW5lbnQsIGEgbmV3IG5hdGlvbiwgY29uY2VpdmVkIGluIExpYmVydHksIGFu
ZCBkZWRpY2F0ZWQgdG8gdGhlIHByb3Bvc2l0aW9uIHRoYXQgYWxsIG1lbiBhcmUgY3JlYXRlZCBl
cXVhbC4NCg0KTm93IHdlIGFyZSBlbmdhZ2VkIGluIGEgZ3JlYXQgY2l2aWwgd2FyLCB0ZXN0aW5n
IHdoZXRoZXIgdGhhdCBuYXRpb24sIG9yIGFueSBuYXRpb24gc28gY29uY2VpdmVkIGFuZCBzbyBk
ZWRpY2F0ZWQsIGNhbiBsb25nIGVuZHVyZS4gV2UgYXJlIG1ldCBvbiBhIGdyZWF0IGJhdHRsZS1m
aWVsZCBvZiB0aGF0IHdhci4gV2UgaGF2ZSBjb21lIHRvIGRlZGljYXRlIGEgcG9ydGlvbiBvZiB0
aGF0IGZpZWxkLCBhcyBhIGZpbmFsIHJlc3RpbmcgcGxhY2UgZm9yIHRob3NlIHdobyBoZXJlIGdh
dmUgdGhlaXIgbGl2ZXMgdGhhdCB0aGF0IG5hdGlvbiBtaWdodCBsaXZlLiBJdCBpcyBhbHRvZ2V0
aGVyIGZpdHRpbmcgYW5kIHByb3BlciB0aGF0IHdlIHNob3VsZCBkbyB0aGlzLg0KDQpCdXQsIGlu
IGEgbGFyZ2VyIHNlbnNlLCB3ZSBjYW4gbm90IGRlZGljYXRl4oCUd2UgY2FuIG5vdCBjb25zZWNy
YXRl4oCUd2UgY2FuIG5vdCBoYWxsb3figJR0aGlzIGdyb3VuZC4gVGhlIGJyYXZlIG1lbiwgbGl2
aW5nIGFuZCBkZWFkLCB3aG8gc3RydWdnbGVkIGhlcmUsIGhhdmUgY29uc2VjcmF0ZWQgaXQsIGZh
ciBhYm92ZSBvdXIgcG9vciBwb3dlciB0byBhZGQgb3IgZGV0cmFjdC4gVGhlIHdvcmxkIHdpbGwg
bGl0dGxlIG5vdGUsIG5vciBsb25nIHJlbWVtYmVyIHdoYXQgd2Ugc2F5IGhlcmUsIGJ1dCBpdCBj
YW4gbmV2ZXIgZm9yZ2V0IHdoYXQgdGhleSBkaWQgaGVyZS4gSXQgaXMgZm9yIHVzIHRoZSBsaXZp
bmcsIHJhdGhlciwgdG8gYmUgZGVkaWNhdGVkIGhlcmUgdG8gdGhlIHVuZmluaXNoZWQgd29yayB3
aGljaCB0aGV5IHdobyBmb3VnaHQgaGVyZSBoYXZlIHRodXMgZmFyIHNvIG5vYmx5IGFkdmFuY2Vk
LiBJdCBpcyByYXRoZXIgZm9yIHVzIHRvIGJlIGhlcmUgZGVkaWNhdGVkIHRvIHRoZSBncmVhdCB0
YXNrIHJlbWFpbmluZyBiZWZvcmUgdXPigJR0aGF0IGZyb20gdGhlc2UgaG9ub3JlZCBkZWFkIHdl
IHRha2UgaW5jcmVhc2VkIGRldm90aW9uIHRvIHRoYXQgY2F1c2UgZm9yIHdoaWNoIHRoZXkgZ2F2
ZSB0aGUgbGFzdCBmdWxsIG1lYXN1cmUgb2YgZGV2b3Rpb27igJR0aGF0IHdlIGhlcmUgaGlnaGx5
IHJlc29sdmUgdGhhdCB0aGVzZSBkZWFkIHNoYWxsIG5vdCBoYXZlIGRpZWQgaW4gdmFpbuKAlHRo
YXQgdGhpcyBuYXRpb24sIHVuZGVyIEdvZCwgc2hhbGwgaGF2ZSBhIG5ldyBiaXJ0aCBvZiBmcmVl
ZG9t4oCUYW5kIHRoYXQgZ292ZXJubWVudCBvZiB0aGUgcGVvcGxlLCBieSB0aGUgcGVvcGxlLCBm
b3IgdGhlIHBlb3BsZSwgc2hhbGwgbm90IHBlcmlzaCBmcm9tIHRoZSBlYXJ0aC4NCg0K4oCUQWJy
YWhhbSBMaW5jb2xu



:12
echo. & echo * Decode gettysbug-address.txt.
call pn cbf>nul
call gub base64 -d -i %cbf-pt%\gettysburg-address-encoded.txt
echo.
exit/b

Notice that the -i switch was necessary to ignore the eol characters.

Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal.

Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battle-field of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.

But, in a larger sense, we can not dedicate—we can not consecrate—we can not hallow—this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us—that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion—that we here highly resolve that these dead shall not have died in vain—that this nation, under God, shall have a new birth of freedom—and that government of the people, by the people, for the people, shall not perish from the earth.

—Abraham Lincoln



:enc-x
echo. & echo * Encode. Whatever is in j1.xml is now encoded to j2.txt.
call pn a>nul
call gub base64 %cbf-pt%\j1.txt>%cbf-pt%\j2.txt
echo.
exit/b



:enc-e
echo. & echo * Encode passed in text.

if "%~2" == "" (
  call err Text to encode cannot be blank.
  exit/b
) 
call gub base64 %2
echo.
exit/b



:dec-e
echo. & echo * Decode passed in text.

if "%~2" == "" (
  call err Text to decode cannot be blank.
  exit/b
) 
call gub base64 -d -i %2
echo.
exit/b



:enc
echo. & echo * Encode. Whatever is in j1.txt is now encoded to j2.txt.
call pn a>nul
call gub base64 %cbf-pt%\j1.txt>%cbf-pt%\j2.txt
echo.
exit/b



rem qq
:dec
echo. & echo * Decode what was put into j2.txt in the previous encode step.
call pn a>nul
call gub base64 -d -i %cbf-pt%\j2.txt
echo.
exit/b




:_
:
echo. & echo * How to base64-encode that password and store it in a variable.
rem Under construction.
export B64_PASSWD=$(echo this_is_the_password | base64)
exit/b
rem lu: May-30-2023






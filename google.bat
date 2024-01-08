@echo off
echo. & echo * Google using Brave from the command line. Automatically passes in your command line parameters.
start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" "https://www.google.com/search?q=%*"

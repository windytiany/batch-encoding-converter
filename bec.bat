@echo off
setlocal enabledelayedexpansion

set /p type=please enter source file type(e.g. mp3, aac...):
set /p target=please enter target file type(e.g. mp3, aac...):

for %%i in (*) do (
	set input=%%i
	set output=!input:%type%=%target%!
	if !input! neq AutoConverter.bat (ffmpeg -i "!input!" "!output!")

)

echo ---------
echo Done.
echo ---------
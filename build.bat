@echo off
@set base_drive=%~d0 
@set base_dir=%~dp0

@%base_drive%
@cd %base_dir%

@set target=VimMode.exe
@set out=%base_dir%bin\%target%

@set icon=%base_dir%res\main.ico
@set src=%base_dir%src\main.ahk

@echo == cleaning
@del %out%

@echo .
@echo .
@echo == compile %src%
@echo       icon : %icon%
@echo       output :  %out%
@md %base_dir%bin
rem ---------------------------
rem Ahk2Exe
rem Command Line Parameters:
rem Ahk2Exe.exe /in infile.ahk [/out outfile.exe] [/icon iconfile.ico] [/pass password] [/bin AutoHotkeySC.bin]
@set ahk=%base_dir%Compiler\Ahk2Exe.exe
%ahk% /in %src% /out %out% /icon %icon%

@echo .
@echo .
@echo == done

pause

@echo off
@set base_drive=%~d0 
@set base_dir=%~dp0

@%base_drive%
@cd %base_dir%

@set target=VimMode.exe
@set out=%base_dir%bin\%target%

@taskkill /f /im %target%

@echo .
@echo .
@echo == deploy %out%

@set temp=C:\pack_and_go
@echo       to %temp%
@copy %out% %temp%

@echo .
@echo .
@echo == restarting 
start %temp%\%target%

@echo .
@echo .
@echo == done

pause

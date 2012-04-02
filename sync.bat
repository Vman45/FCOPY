rem copy "C:\Users\%username%\Downloads" "z:\Vidéos"

@echo off 
cls
setlocal 
set source=%1
If not exist %source% (echo folder you entered doesn't exist. Program will exit. & endlocal & pause & exit) 
set backup=%2
If not exist %backup% (md %backup% & echo %backup% created.)
echo.
echo Hello %username%!
echo New files has been detected.
set /p answer="Do you want to copy them on your Freebox (Y/n)? "
if "%answer%"=="y" (goto :yes)
if "%answer%"=="Y" (goto :yes)
if "%answer%"=="yes" (goto :yes)
if "%answer%"=="Yes" (goto :yes)
if "%answer%"=="YEs" (goto :yes)
if "%answer%"=="yEs" (goto :yes)
if "%answer%"=="YeS" (goto :yes)
if "%answer%"=="YES" (goto :yes)
if "%answer%"=="yeS" (goto :yes)
if "%answer%"=="yES" (goto :yes)
goto :no

:yes
	xcopy %source%\*.avi %backup% /r /h /d /k /c /y /i 
	echo Sync is ended.
	pause
	goto :no
	
:no
	endlocal 
	@echo on
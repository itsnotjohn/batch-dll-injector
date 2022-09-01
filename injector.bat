@echo off
title 

::Data::
set /p process=Process Name:
set /p local=Local:
set /p name=DLL Name:
set /p extension=DLL Extension:

::Inject DLL::
for /f "tokens=2" %%a in ('tasklist^|find /i "%process%"') do (set pid=%%a)
%SystemRoot%\System32\mavinject.exe %pid% /INJECTRUNNING "%local%\%name%.%extension%"

::Exit Programm::
exit

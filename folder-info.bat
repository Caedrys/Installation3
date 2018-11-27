@echo off
setlocal EnableDelayedExpansion

set filstig=%1

for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do (

	if "%%b" == "tiedosto(a)" (
			set filer=%%a
			set storlek=%%c
	)		
	if "%%b" =="kansio(ta)"  (
			set kataloger=%%a
	)
)	

if exist %filstig%\ (
    echo %filstig% Ar en katalog
) else (
    echo %filstig% Ar inte en katalog )


echo filer !filer!, kataloger !kataloger!, storlek !storlek! bytes

SET /A "result=!filer!+!kataloger!"

echo Totalt !result! filer 

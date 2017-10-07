@echo off
rem bat para leer un fichero
set pathTxt=prueba1.txt

rem for /f "tokens=* delims=" %%i %pathTxt% do @echo %%i
:A
echo Elige el fichero a leer
echo.
set file=
set /p file=File:
cls
echo leyendo de %file%
echo.
type prueba1.txt
echo.
echo Era este el fichero?
set ans=
set /p ans=S/N?:
if %ans%==s goto :A
if %ans%==S goto :A
goto:eof

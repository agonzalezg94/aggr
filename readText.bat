@echo off
rem bat para leer un fichero
set pathTxt=prueba1.txt


:A
echo Se muestran los txt existentes en este directorio
echo.
FOR /R %%i in ( *.txt ) do (
	echo %%i 
	)
echo Elige el fichero a leer
echo.
set file=
set /p file=File:
echo Era este el fichero?
set /p ans=S/N?:
if %ans%==S goto :READ
if %ans%==N goto :ERROR

:READ
cls
echo leyendo de %file%
echo.
type %file%
echo.
GOTO:EOF&:PAUSE

:ERROR
ECHO Este no era el fichero
goto:eof

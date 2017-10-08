@echo off
rem bat para leer un fichero
set pathTxt=prueba1.txt


:A
echo Se muestran los txt existentes en este directorio
echo.
FOR /R %%i in ( *.txt ) do echo %%i
echo Elige el fichero a leer
echo.
set file=
set /p file=File:
echo Que quiere leer?
set /p ans=NOMBRES/EDAD/PUESTO?:
IF %ANS%==NOMBRE (
	GOTO :NOMBRES
) ELSE IF %ANS%==PUESTO (
	GOTO :PUESTO
) ELSE IF %ANS%==EDAD (
	GOTO :EDAD
) ELSE (
	GOTO :ERROR
)

:READ
cls
echo leyendo de %file%
echo.
type %file%
echo.
echo.

:EDAD
echo leyendo edades
echo **************
echo.
FOR /F "tokens=2 skip=1" %%i in (%file%) do @echo %%i
echo.
GOTO :SEGUIR

:NOMBRES
echo leyendo nombres
echo ************************
echo.
FOR /F "tokens=1 skip=1" %%i in (%file%) do @echo %%i
echo.
GOTO :SEGUIR

:PUESTO
echo leyendo puestos
echo ************************
echo.
FOR /F "tokens=3 skip=1" %%i in (%file%) do @echo %%i
echo.
GOTO :SEGUIR

:SEGUIR
SET /P ANS=Quiere seguir leyendo? (S/N):
IF %ANS%==S (
	GOTO :A
) ELSE (
	GOTO :ERROR
)


GOTO:EOF&:PAUSE

:ERROR
ECHO Este no era el fichero
goto:eof

:: Script que organiza todos los ficheros en distintas carpetas
:: guarda los .txt en la carpeta txt
:: guarda los .bat en la carpeta bat

@ECHO OFF
CLS
ECHO *****************************
ECHO ORGANIZA FICHEROS
ECHO ****************************
ECHO.

TYPE NUL > txtmove.txt
TYPE NUL > batmove.txt

:: CREA LA CARPETA TXT
IF EXIST "TXT\" (
	ECHO Ya existia la carpeta TXT\
	:TXTCREADA
	ECHO Se han movido los siguientes archivos a TXT\: > txtmove.txt
	FOR %%i IN (*.txt) DO (
		MOVE %%i TXT\ && ECHO Se han movido los ficheros .txt a TXT\ || ECHO fallo al mover los ficheros
		ECHO %%i >> txtmove.txt
	)
	MOVE txtmove.txt TXT\
	
) ELSE (
	ECHO Creando carpeta TXT
	MKDIR TXT && ECHO "Carpeta creada" || ECHO "imposible crear la carpeta"
	GOTO :TXTCREADA
)

IF EXIST "BAT\" (
	ECHO Ya existia la carpeta BAT\
	:BATCREADA
	ECHO Se han movido los siguientes archivos a BAT\: > batmove.txt
	FOR %%i IN (*.bat) DO (
		MOVE %%i BAT\ && ECHO Se han movido los ficheros .bat a BAT\ || ECHO fallo al mover los ficheros
		ECHO %%i >> batmove.txt
	)
	MOVE batmove.txt BAT\
) ELSE (
	ECHO Creando carpeta BAT
	MKDIR BAT && ECHO "Carpeta creada" || ECHO "imposible crear la carpeta"
	GOTO :BATCREADA
)



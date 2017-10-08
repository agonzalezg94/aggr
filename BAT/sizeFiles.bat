::Este script muestra el tamanio de los files en una carpeta
@ECHO OFF
ECHO Se muestra el tamanio de los archivos

ECHO Si existen los ficheros size.txt y res.txt son borrados

IF EXIST size.txt DEL size.txt
IF EXIST res.txt DEL res.txt

TYPE NUL > size.txt
TYPE NUL > errorlog.txt
TYPE NUL > res.txt

MKDIR ERROR 
IF EXIST ERROR\errorlog.txt (
	DEL ERROR\errorlog.txt
)
MOVE errorlog.txt ERROR\errorlog.txt

:: SE VUELCA STDOUT DE DIR EN SIZE.TXT

DIR > size.txt

set file=size.txt

FOR /F "tokens=3 skip=4" %%i IN (%file%) DO @ECHO %%i >> res.txt 

ECHO El resultado se ha guardado en size.txt
@ECHO OFF
REM **
REM ** J.T. / A¥O 1994
REM ** LEER1.BAT ** a¤os
REM **
CLS
:MAIN
IF %1. == .  GOTO ERRORF
IF "" == "%1" GOTO ERRORF
:HACER
IF "" == "%1" GOTO SALIR
IF %1. == . GOTO SALIR
FOR %%D IN (%1) DO CALL COMPILAR %1 1 %%D
SHIFT
GOTO HACER
:ERRORF
ECHO.
ECHO     ******************************************
ECHO     * ERROR - no se ha pasado ning£n fichero *
ECHO     *                                        *
ECHO     *   Ejecuci¢n 'LEER1 ficheros_comodin'   *
ECHO     ******************************************
ECHO.
GOTO FIN
:SALIR
ECHO. 
ECHO **********************
ECHO * FIN DE EJECUCION ! *
ECHO **********************
ECHO.
:FIN
ECHO.
ECHO ** Ficheros compilados en "C:\PRG\FOX>_ *.FOX" **
ECHO.

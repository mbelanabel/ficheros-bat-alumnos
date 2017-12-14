echo off
REM **
REM ** J.T. / A¥O 1994
REM ** LEERT.BAT ** a¤os
:MAIN
cls
IF %1. == .  GOTO ERRORF
IF "" == "%1" GOTO ERRORF
echo ** Contenido del fichero: %1 ** >> c:\excel\tablas\bat\fichero.a
type %1 >> c:\excel\tablas\bat\fichero.a
echo. >> c:\excel\tablas\bat\fichero.a
echo -.- >> c:\excel\tablas\bat\fichero.a
goto fin
:ERRORF
ECHO.
ECHO     ******************************************
ECHO     * ERROR - no se ha pasado ning£n fichero *
ECHO     *                                        *
ECHO     * Ejecuci¢n 'LEER1 ficheros_comodin'     *
ECHO     ******************************************
ECHO.
:fin


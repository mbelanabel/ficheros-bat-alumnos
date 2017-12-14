REM jt . 
REM Referencia a este programa, consultar ... en caso de que no
REM siga activa buscar programación bat con set 
# http://www.tuwebdeinformatica.com/foro/viewtopic.php?f=41&t=2545
REM Este es interesante, porque permite configurar variables, utilzando "set"
REM 
@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set /p d=Dividendo: 
set /p di=Divisor: 
set /p decim=Decimales: 
set /a try=0
set /a set=0
set /a final=0
set /a num1=%d%/%di%
set resultado=echo Resultado %d%/%di% = %num1%.
set /a res=%d%-(%di%*(%d%/%di%))
:seteando
if %set%==%decim% goto bucle
set /a set=%set%+1
set /a dec%set%=0
goto seteando
:bucle
if %try%==%decim% goto fin
set /a try=%try%+1
set /a dec%try%=%res%0/%di%
set /a p=%res%0/%di%
set /a res=%res%0-(%di%*(%res%0/%di%))
goto bucle
:fin
if %final%==%decim% goto resultado
set /a final=%final%+1
set resultado=%resultado%!dec%final%!
goto fin
:resultado
%resultado%
pause>nul

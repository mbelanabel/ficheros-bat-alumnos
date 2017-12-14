@echo off
rem COMPILAR.BAT
cls
if %2. == . goto sintaxis
if not exist %1 goto no
foxpcomp %1
if %2==1 goto ok
move *.fox c:\fissa > nul
cd\fissa
goto final
:no
echo.
echo "** No existe %1.prg **"
echo.
goto final
:sintaxis
cls
echo             ** SINTAXIS COMPILAR.BAT **
echo.
echo     COMPILAR  fichero.prg 1
echo     compila NORMAL (fichero FOX generado en PRG)
echo.
echo     COMPILAR  fichero.prg N
echo     compila A FISSA (fichero FOX generado en FISSA)
echo. 
:ok
move *.fox fox > nul
:final


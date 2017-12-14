rem ** menu.bat **
rem JT. Noviembre 2017
rem MENU 2 opciones (llama a otros 2 archivos CALL ... ), según la opción elegida
rem 1. NLBINSTALL (iniciará la carga de red )
rem 2. NLBREMOVE  (eliminará la carga de red) 
@echo off
cls
title ** MENU DE CARGA DE RED **

:inicio
set var=0
cls
echo
echo 1. INSTALACION DE CARGA
echo.
echo 2. ELIMINACION DE CARGA
echo.
echo 3. SALIR
echo.
set /p var= seleccione una opcion [1-3] :

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto salir

::ERROR ... fuera de rango ...
echo.
echo.
pause
echo.
goto:inicio

:op1
 echo.
 echo // op1
 echo.
 pause
 call nlbinstall.bat
 goto:inicio

:op2
 echo.
 echo // op2
 echo.
 pause
 call nlbremove.bat
 goto:inicio

:salir
 @cls
exit

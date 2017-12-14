rem utilización de comandos para utilizar con la red (en estre caso puertos de firewall)
@echo off
rem ***
rem JT. Diciembre 2014
rem abrir rango de puertos para firewall de Windows
rem 
rem Variables
rem incial=rango de puertos (primero)
rem final=rango de puertos (ultimo)
rem puertos 20 (datos) y 21 (control) -> colocados manualmente
rem 
rem ***


set /a inicial=5001
set /a final=5008
set /a puerto=%inicial%

:bucle
rem echo %puerto%

set /a puerto=%puerto%+1
if %puerto% GTR %final% goto final
echo ** PUERTO PASIVO %puerto% **
netsh firewall add portopening protocol=TCP port=%puerto% name="FTP PASIVO %puerto%" > null
goto bucle
:final

echo "puerto 21 control"
netsh firewall add portopening protocol=TCP port=21 name="FTP control" > null
echo "puerto 20 datos"
netsh firewall add portopening protocol=TCP port=20 name="FTP datos" > null

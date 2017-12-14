rem jt. noviembre 2017
rem Contenido del fichero nlbremove.bat :
rem servermanagercmd (administrador del servidor de comandos [query -consultar; remove nlb: -eliminación
rem  del balanceo de carga:
rem 
Contenido del fichero nlbremove.bat :
@echo off
cls
set COMPUTERNAME >>serfunca.log
servermanagercmd -query >> serfunca.log
servermanagercmd -remove nlb
servermanagercmd -query >> serfunca.log

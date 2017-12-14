rem jt. noviembre 2017
rem Contenido del fichero nlbinstall.bat :
rem servermanagercmd (administrador del servidor de comandos [query -consultar; install nlb: -instalación
rem  del balanceo de carga:
rem 
@echo off
cls
set COMPUTERNAME >>serfunca.log
servermanagercmd -query >> serfunca.log
servermanagercmd -install nlb
servermanagercmd -query >> serfunca.log

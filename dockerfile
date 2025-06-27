# Si se necesita una versione espesifica se pone despuesd e los dos puntos sino se usa latest para traer la ultima
FROM postgres:latest

# Comando COPY va siempre lo que sigue es el nombre de los archivos
# primero DDL para la creacfion de la base 
# luego DML para la asignacion de datos en la carpeta 
# y la siguiente ruta es diferente para cada motor de base de datos
# esta solo aplica para postgrest 
# es importante nombrarlos de una manera que sea alfabetico porque en ese
# orden lo va a tomar docker 
COPY DDL_Monedas.sql /docker-entrypoint.initdb.d/
COPY DML_Monedas.sql /docker-entrypoint.initdb.d/


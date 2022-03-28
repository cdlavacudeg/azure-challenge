#!/bin/bash
# Comments 
WELCOME="Hola mundo"
echo $WELCOME
ls
COPY_PWD=$(pwd)
echo $COPY_PWD

# env muestra todas las variables de entorno
echo $PATH # Muestra las rutas donde se ubicon los archivos binarios que pueden ejecutarse directamente en la consola

# Verificar la cantidad de espacio en el S.O

FECHA=$(date +"%F%T")
echo $FECHA

df -h | grep /dev > uso_disco_"$FECHA".txt
df -h | grep /dev/sda5 >> uso_disco_"$FECHA".txt

echo "Se ha generado un archivo en la ubicación $COPY_PWD"

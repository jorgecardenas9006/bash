#!/bin/bash
# Programa para el paso de opciones con o sin parametro
echo "programa opciones"
echo "Opción 1 enviada: " $1
echo "Opción 2 enviada: " $2
echo "Opciones enviadas: " $*
echo -e "\n"
echo "recuperar los valores"
while [ -n "$1" ]
do 
case "$1" in 
-a) echo "-a opción utilizada";;
-b) echo "-b opción utilizada";;
-c) echo "-c opción utilizada";;
*) echo "$1 no es una opción";;
esac
shift
done
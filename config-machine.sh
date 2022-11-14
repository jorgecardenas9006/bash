#!/bin/bash
echo "Iniciando el script"
sleep 3
echo "cambio de variables para update"
#formas de ejecutar comandos como variables
prueba=$(ls)
prueba2=`ls`
echo $prueba
if [ "`l`" ]; 
then
echo "Correcto"
else
echo "Incorrecto"
fi
#exit
#creacion de variables
opcion=5
nombre=Marco
echo "Opcion: $opcion y Nombre $nombre"
#exportar las variables
export nombre
#llamar el siguiente script
./variables2.sh
echo -e "\n prueba 1 $prueba"
echo -e "\n prueba 2 $prueba2" 
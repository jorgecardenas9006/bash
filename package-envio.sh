#!/bin/bash
#programa para transferir archivos por red usando rsync

echo "comprimir todos los scripts y transferirlos a otro equipo"

read -p "Ingrese el host: " host
read -p "Ingrese el usuario: " usuario

echo -e "\nEn este momento se procedera a comprimir y transferir los datos"

rsync --progress -avzh $(pwd) $usuario@$host:~/pruebas-rsync/

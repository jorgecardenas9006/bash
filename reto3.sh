#!/bin/bash
echo "################### Selección de opciones ###################"
echo "-------------------------- Reto 3 ---------------------------"
echo "############## Seleccione una de las opciones ###############"
echo "-------------- 1. Opción 1 "
echo "-------------- 2. Opción 2 "
echo "-------------- 3. Opción 3 "
echo "-------------- 4. Opción 4 "
echo "-------------- 5. exit "
read -n1 -p "Digite la opción: " opcion
echo -e "\n"
if [ $opcion == 1 ]; then
    echo "Se ha elegido la opción $opcion"
elif [ $opcion == 2 ]; then
    echo "Se ha elegido la opción $opcion"
elif [ $opcion == 3 ]; then
    echo "Se ha elegido la opción $opcion"
elif [ $opcion == 4 ]; then
    echo "Se ha elegido la opción $opcion"
elif [ $opcion == 5 ]; then
    exit
else
    echo "opción incorrecta"
fi
# ! /bin/bash
# Programa para ejemplificar como capturar la informaciÃ³n del usuario y validarla
# Autor: Marco Toscano Freire - @martosfre

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción:$option , backupName:$backupName"
read -s -p "Clave:" clave
echo -e "\nLa Clave es : $clave"

#!/bin/bash
option1=$1
result=$2

echo -e "option= $1\n"
echo "result= $2"

#capturar información 

option=0
backupName=""

echo "programa de utilidades postgres"
echo -n "ingresar un opción: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opción: $option, backupName: $backupName"
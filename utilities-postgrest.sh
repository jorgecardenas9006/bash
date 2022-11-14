#!/bin/bash

option=0
backupName=""

echo "Programa de utilidades postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo backup: " backupName
echo "Opción: $option, backupName: $backupName" 

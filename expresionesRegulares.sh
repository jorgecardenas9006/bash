#!/bin/bash
identificacionRegex='^[0-9]{10}$'
paisRegex='EC|CO|US'
fechaRegex='^(19|20)([0-9]{2})(0[1-9]|1[1-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])$'

echo "expresiones regulares"
read -p "Ingresar el numero de identificación: " identificacion
read -p "Ingresar las iniciales de su país [EC|CO|US]: " pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fecha

if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
if [[ $pais =~ $paisRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
if [[ $fecha =~ $fechaRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
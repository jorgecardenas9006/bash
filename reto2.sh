#!/bin/bash
read -p "Digita tu nombre: " nombre
read -p "Digita tu apellido: " apellido
read -p "digita tu edad: " edad
read -p "digita tu dirección: " direccion
read -p "digita tu numero de telefono: " celular

nombreRegex='^[a-zA-Z]?([a-zA-Z]|\.| |-)+$'
edadRegex='^[0-9]{1,3}$'
direccionRegex='^[a-zA-Z0-9áéíóúñÁÉÍÚÑºª#,|\.| |-]+$'
celularRegex='^[0-9]{7,10}$'

if [[ $nombre =~ $nombreRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
if [[ $apellido =~ $nombreRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
if [[ $edad =~ $edadRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
if [[ $direccion =~ $direccionRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
if [[ $celular =~ $celularRegex ]]; then
    echo "valida"
else
    echo "invalida"
fi
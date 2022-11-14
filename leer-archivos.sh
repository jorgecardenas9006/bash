#!/bin/bash

# lee la variable del archivo
cat $1

# leyendo con cat
cat_response=`cat $1`
echo "$cat_response"

# Lectura de un archivo línea por línea con IFS para leer también los espacios en blanco
while IFS= read line
do
    echo "$line"
done < $1
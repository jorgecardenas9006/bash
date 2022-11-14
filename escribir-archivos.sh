#!/bin/bash

#programa para escribir en archivos
echo "escribir archivos"
echo "valores escritos con el comando echo" >> $1

#Adición multilinea
cat <<EOM >>$1
$2
EOM

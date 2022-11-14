#!/bin/bash

echo "operaciones de un archivo"
mkdir -m 755 backupScripts
sleep 5

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio a otro ubicación: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos txt"
rm *.txt
# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Marco Toscano Freire - @martosfre


opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opciÃ³n de la A - Z:" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperaciÃ³n Guardar Arhivo";;
    "B") echo "OperaciÃ³n Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operaciÃ³n";;
    "*") "OpciÃ³n Incorrecta"
esac    

# ! /bin/bash
#programa para mostrar la creación de archivos y directorios

echo "Archivos - Directorios"
if [ $1 == "d" ]; then
    mkdir -m 755 $1
    echo "Directorio creado correctamente"
    ls -la $1
elif [ $1 == "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opción"
fi
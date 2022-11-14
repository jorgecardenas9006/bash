# !/bin/bash
# Empaquetamiento todos los scripts que estan en la carpeta

echo "comprimir la carpeta de scripts con tar"
tar -cvf shellCourse.tar *.sh

#cuando se comprime un archivo con gzip se borra el anterior
echo "comprimir la carpeta de scripts con gzip"
gzip shellCourse.tar

echo "comprimir un solo archivo con gzip"
gzip -9 menuOpciones.sh

echo "comprimir con gz2"
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2

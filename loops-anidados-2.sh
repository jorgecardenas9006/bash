# !/bin/bash
#script para leer el contenido de los archivos q contienen la extensión .sh
for file in $(ls *.sh)
do
	echo "--------------- $file ---------------------"
	while
		read -r linea; do
		echo "$linea"
	done < "$file"
done
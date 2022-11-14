# ! /bin/bash
# Programa para ejemplificar el uso de break y continue
# break se utiliza para salir de cualquier ciclo o bucle.
# Detiene la ejecución de los comandos restantes dentro de un ciclo pero sin salir del mismo y pasar inmediatamente a la siguiente iteración.

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done
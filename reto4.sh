# ! /bin/bash
# Programa para mostrar todos los procesos de la maquina

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "__________________________________________"
    echo "Mostrar los procesos del sistema operativo"
    echo "__________________________________________"
    echo "                MENÚ PRINCIPAL            "
    echo "__________________________________________"
    echo "1. Procesos actuales"
    echo "2. Información del disco"
    echo "3. Memoria disponible"
    echo "4. Información de red"
    echo "5. Variables de entorno"
    echo "6. Backup de información"
    echo "7. Información del programa"
    echo "8. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-8]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            #Muestra los 5 procesos que mas usan CPU y memoria
            echo -e "\n$(ps aux --width 50 --sort -rss | head -n 6)"
            sleep 5
            ;;
        2) 
            #Muestra el uso de disco instalado en Megas con el tipo de partición
            echo -e "\n$(df -hT)"
            sleep 5
            ;;
        3) 
            #Muestra el uso de disco instalado en Megas y muestra la memoria en buffer y cache por a parte
            echo -e "\n$(free -mtw)"
            sleep 5
            ;;
        4) 
            #Muestra todos los datos del dispositivo de red enp0s3
            echo -e "\n$(nmcli device show enp0s3)"
            sleep 5
            ;;
        5) 
            #Muestra todas las variables de entorno
            echo -e "\n$(printenv | less)"
            sleep 5
            ;;
        6)  
            echo -e "\n"
            read -n20 -p "Ingrese el nombre del archivo: " archivo
            #ruta=$(find ~ -iname "$archivo")
            ruta=$(locate $archivo)
            if [ $? == 0 ]; then
                echo "Creando backup"
                #compresion=$(tar -czf archivo-backup.tar.gz $ruta)
            else
                echo "problemas en el comando"
            fi
            sleep 5
            ;;
        7)  
            echo -e "\n"
            echo -e "\nversión del software: 0.0.1"
            echo -e "\nDesarrollado por Jorge Leonardo Cárdenas Montenegro"
            sleep 5
            ;;
        8)  
            echo -e "\nSalir del Programa"
            exit 0
            ;;
    esac
done
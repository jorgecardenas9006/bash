# ! /bin/bash
# Programa para mostrar todos los procesos de la maquina

instalarPostgres () {
    echo -e "\nInstalar postgres"
    VerifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en la versión $(postgres --version)"
    else
        echo -e "\n"
        read -s -p "Ingresar la contraseña de sudo: " sudoPass
        echo -e "\n"
        read -s -p "Ingresar nueva contraseña para postgresql: " postgresqlPass
        echo -e "\n"
        echo "$sudoPass" | sudo -S dnf update
        echo -e "\n Las versiones disponibles son: "
        sleep 3
        echo "$sudoPass" | sudo -S dnf module list postgresql
        echo -e "\n"
        sleep 2
        read -p "De la tabla anterior indique la versión de postgres a instalar: " verPostgres
        echo -e "\n"
        read -p "La versión a instalar es $verPostgres: (yes/no): " resVer
        if [ $resVer == "yes" ] || [ $resVer == "y" ]; then
            echo "$sudoPass" | sudo -S dnf install postgresql$verPostgres-server
            sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$postgresqlPass}';"
            echo "$sudoPass" | sudo -S systemctl enable postgresql.service
            echo "$sudoPass" | sudo -S systemctl start postgresql.service
        else
            echo "envio no"
        fi
        sleep 5
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar......"
}
desinstalarPostgres () {
    echo -e "\n"
    read -s -p "Ingresar la contraseña de sudo: " sudoPass
    echo -e "\n"
    echo "$sudoPass" | sudo -S systemctl stop postgresql.service
    echo "$sudoPass" | sudo -S dnf remove postgresql$verPostgres-server -y
    echo "$sudoPass" | sudo -S rm -r /etc/postgresql
    echo "$sudoPass" | sudo -S rm -r /etc/postgresql-common
    echo "$sudoPass" | sudo -S rm -r /var/lib/postgresql
    echo "$sudoPass" | sudo -S userdel -r postgres
    echo "$sudoPass" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}
sacarRespaldo () {
    echo -e "\n##########Sacar respaldo##########"
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Elegir la base de datos a respaldar:" bddRespaldo
    echo -e "\n"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$sudoPass" | sudo -S chmod 755 $1
        echo "Realizando respaldo..."
        sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bddRespaldo$fechaActual.bak"
        echo "Respaldo realizado correctamente en la ubicación:$1/bddRespaldo$fechaActual.bak"
    else
        echo "El directorio $1 no existe"
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}
restaurarRespaldo () {
    echo -e "\n##########restaurar respaldo##########"
    echo "directorio respaldo: " $1
}
opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
    echo "__________________________________________"
    echo "Sistema para bases de datos postgresql"
    echo "__________________________________________"
    echo "                MENÚ PRINCIPAL            "
    echo "__________________________________________"
    echo "1. Crear base de datos"
    echo "2. Eliminar base de datos"
    echo "3. Crear respaldo"
    echo "4. Resturar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            #Crear base de datos
            instalarPostgres
            sleep 5
            ;;
        2) 
            #Eliminar base de datos
            desinstalarPostgres
            sleep 5
            ;;
        3) 
            #Crear respaldo
            echo -e "\n"
            read -p "directorio backup: " directorioBackup
            sacarRespaldo $directorioBackup
            sleep 5
            ;;
        4) 
            #Restaurar respaldo
            echo -e "\n"
            read -p "directorio de respaldo: " directorioRespaldo
            restaurarRespaldo $directorioRespaldo
            sleep 5
            ;;

        5)  
            echo -e "\nSalir del Programa"
            exit 0
            ;;
    esac
done
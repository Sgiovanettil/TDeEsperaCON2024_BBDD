#!/bin/bash

# Verificar si el servicio local de MySQL está activo
echo "Verificando el estado del servicio local de MySQL..."
SERVICE_STATUS=$(systemctl is-active mysql)

if [ "$SERVICE_STATUS" = "active" ]; then
    echo "El servicio local de MySQL está activo. Deteniéndolo..."
    sudo systemctl stop mysql
else
    echo "El servicio local de MySQL no está activo."
fi

# Nombre del contenedor de MySQL en Docker
CONTAINER_NAME="mysql-container"

# Verificar si el contenedor de MySQL en Docker existe
echo "Verificando si el contenedor de MySQL en Docker existe..."
CONTAINER_EXISTS=$(docker ps -a -q -f name=^/${CONTAINER_NAME}$)

if [ -z "$CONTAINER_EXISTS" ]; then
    echo "El contenedor de MySQL no existe. Creando y ejecutando el contenedor..."
    docker run --name $CONTAINER_NAME -e MYSQL_ROOT_PASSWORD=Password123#@! -p 3306:3306 -d mysql:latest
else
    echo "El contenedor de MySQL ya existe. Iniciando el contenedor..."
    docker start $CONTAINER_NAME
fi

# Esperar a que MySQL esté completamente arriba en Docker
echo "Esperando a que MySQL esté arriba en Docker..."
sleep 15

# Ejecutar scripts de creación de base de datos
./scriptBBDD_Linux.sh

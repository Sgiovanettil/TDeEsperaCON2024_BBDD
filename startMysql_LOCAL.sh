#!/bin/bash

# Nombre del contenedor de MySQL en Docker
CONTAINER_NAME="mysql-container"

# Verificar si el contenedor de MySQL en Docker existe
echo "Verificando si el contenedor de MySQL en Docker existe..."
CONTAINER_EXISTS=$(docker ps -a -q -f name=^/${CONTAINER_NAME}$)

if [ -n "$CONTAINER_EXISTS" ]; then
    echo "Deteniendo el contenedor de MySQL en Docker..."
    docker stop $CONTAINER_NAME
else
    echo "El contenedor de MySQL en Docker no existe. Omitiendo la detención del contenedor."
fi

# Verificar si el servicio local de MySQL está en ejecución
echo "Verificando el estado del servicio local de MySQL..."
SERVICE_STATUS=$(systemctl is-active mysql)

if [ "$SERVICE_STATUS" = "active" ]; then
    echo "El servicio local de MySQL ya está en ejecución. Generando Base de datos y ejecutando scripts iniciales..."
    
    # Ejecutar scripts de creación de base de datos
    ./scriptBBDD_Linux.sh
else
    echo "El servicio local de MySQL no está activo. Iniciándolo..."
    sudo systemctl start mysql
    
    # Esperar a que MySQL esté completamente arriba en Docker
    echo "Esperando a que MySQL esté arriba en Local..."
    sleep 15
    
    # Ejecutar scripts de creación de base de datos
    ./scriptBBDD_Linux.sh
fi

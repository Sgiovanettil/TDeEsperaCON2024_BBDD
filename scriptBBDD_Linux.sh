#!/bin/bash

# Parámetros de conexión a la base de datos
HOST="127.0.0.1"
USER="root"
PASSWORD="Password123#@!"

# Directorios de los scripts
CREATION_DIR="/home/sgiovanetti/ProyectosGit/hl7BD_Mysql/01 - Scripts/00 - Creacion BBDD"
INSERTS_DIR="/home/sgiovanetti/ProyectosGit/hl7BD_Mysql/01 - Scripts/01 - Inserts"

# Función para ejecutar scripts en un directorio
function ejecutar_scripts() {
  local directorio=$1
  for script in "$directorio"/*.sql; do
    if [ -e "$script" ]; then
      echo "Ejecutando script: $script"
      mysql -h $HOST -u $USER -p$PASSWORD < "$script"
      if [ $? -eq 0 ]; then
        echo "Script ejecutado con éxito"
      else
        echo "Error al ejecutar el script"
        exit 1
      fi
    fi
  done
}

# Ejecutar script de creación de base de datos
ejecutar_scripts "$CREATION_DIR"

# Ejecutar scripts de inserciones
ejecutar_scripts "$INSERTS_DIR"


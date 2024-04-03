#!/bin/bash

# Comprobamos si el servicio MySQL está funcionando
if systemctl is-active --quiet mysql; then
    # Detener el servicio MySQL
    systemctl stop mysql
fi

# Realizar el backup de la base de datos
mysqldump -u isard -p pirineus test > $HOME/backup.sql

# Comprobamos si el servicio MySQL estaba funcionando antes de detenerlo
if [ "$?" -eq 0 ]; then
    # Iniciar el servicio MySQL
    systemctl start mysql
fi

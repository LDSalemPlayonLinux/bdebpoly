#!/bin/bash

# Ícone para dispositivos montados
MOUNT_ICON=""  # Ícone de mídia, pode ser modificado

# Listar dispositivos montados
output=$(lsblk -o NAME,MOUNTPOINT | grep '/media' | awk '{print $1}' | sed "s|^|$MOUNT_ICON |")

# Verificar se há dispositivos montados
if [ -z "$output" ]; then
    echo "Nenhum dispositivo montado"
else
    echo "$output"
fi

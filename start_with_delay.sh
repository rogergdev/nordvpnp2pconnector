#!/bin/bash
# Espera 1 minuto antes de ejecutar el comando
sleep 60

# Verificar si NordVPN está activo
if systemctl is-active --quiet nordvpnd; then
    echo "NordVPN está activo, procediendo con la conexión..."
    nordvpn connect P2P
else
    echo "NordVPN no está activo, intentando iniciar el servicio..."
    systemctl start nordvpnd
    # Esperar unos segundos para asegurarse de que el servicio se inicie
    sleep 10
    nordvpn connect P2P
fi

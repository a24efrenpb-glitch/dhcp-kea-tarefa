#!/bin/bash

# Ajusta la ruta por defecto hacia el router del enlace
ip route del default via 192.168.10.1 || true
ip route add default via 192.168.10.254 || true

# Elimina archivos PID antiguos si existen
rm -f /var/run/kea/kea-dhcp4.kea-dhcp4.pid
rm -f /var/run/kea/kea-dhcp-ddns.kea-dhcp-ddns.pid

# Ejecuta kea-dhcp4 en modo debug usando el archivo de configuración montado
kea-dhcp-ddns -c /etc/kea/kea-dhcp-ddns.conf -d &

kea-dhcp4 -c /etc/kea/kea-dhcp4.conf -d

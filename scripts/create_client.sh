#!/bin/bash

set -e

CLIENT_NAME="$1"
CLIENT_IP="$2"

# EN: Validate required script arguments
# ES: Validar argumentos obligatorios del script
if [ -z "$CLIENT_NAME" ] || [ -z "$CLIENT_IP" ]; then
  echo "Uso: $0 <cliente_nombre> <cliente_ip>"
  echo "Ejemplo: $0 cliente2 192.168.56.60"
  exit 1
fi

HOSTNAME="srv-${CLIENT_NAME}"
INVENTORY_FILE="inventory/hosts.ini"
HOST_VARS_DIR="inventory/host_vars/${HOSTNAME}"
HOST_VARS_FILE="${HOST_VARS_DIR}/main.yml"

echo "[+] Creando cliente: ${CLIENT_NAME}"
echo "[+] Hostname Ansible: ${HOSTNAME}"
echo "[+] IP: ${CLIENT_IP}"

# EN: Create host_vars directory for the new client
# ES: Crear directorio host_vars para el nuevo cliente
mkdir -p "$HOST_VARS_DIR"

# EN: Add client host to Ansible inventory if missing
# ES: Añadir cliente al inventario Ansible si no existe
if ! grep -q "^${HOSTNAME} " "$INVENTORY_FILE"; then
  echo "${HOSTNAME} ansible_host=${CLIENT_IP}" >> "$INVENTORY_FILE"
  echo "[+] Añadido ${HOSTNAME} al inventory"
else
  echo "[!] ${HOSTNAME} ya existe en inventory"
fi

# EN: Generate client variables file
# ES: Generar archivo de variables del cliente
cat > "$HOST_VARS_FILE" <<EOF
---
cliente_nombre: "${CLIENT_NAME}"
cliente_subdomain: "${CLIENT_NAME}"
cliente_dominio: "${CLIENT_NAME}.lab.local"
cliente_ip: "${CLIENT_IP}"

cliente_servicios:
  - nginx-test

cliente_monitoring: true
cliente_backup: true
EOF

echo "[+] Creado ${HOST_VARS_FILE}"

echo
echo "[+] Validando variables:"
ansible "${HOSTNAME}" -m debug -a "var=cliente_subdomain"
ansible "${HOSTNAME}" -m debug -a "var=cliente_ip"

echo
echo "[+] Cliente preparado."
echo "Siguiente paso:"
echo "ansible-playbook playbooks/bootstrap.yml --limit ${HOSTNAME}"

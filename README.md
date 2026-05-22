# MSP / DevOps Lab — Automatización con Ansible

![banner](https://github.com/Harlock-code/Harlock-code/blob/main/banner_javi.png?raw=true)

## 📌 Descripción

Plataforma de automatización orientada a entornos MSP/DevOps utilizando:

- Ansible
- Docker
- Proxmox
- DNS dinámico
- Reverse Proxy
- Infrastructure as Code

Este proyecto automatiza el despliegue, configuración y gestión del ciclo de vida de servicios self-hosted de forma modular y reutilizable.

---

# 🚀 Características principales

- ✔ Despliegue automático de Docker
- ✔ Integración automática con DNS
- ✔ Configuración automática de Nginx Proxy Manager
- ✔ SSL wildcard interno
- ✔ Homepage dinámica
- ✔ Infraestructura declarativa mediante YAML
- ✔ Eliminación automática de servicios
- ✔ Arquitectura modular
- ✔ Workflows reutilizables

---
## ⚙️ Arquitectura y flujo de automatización

![architecture](https://github.com/Harlock-code/msp-ansible-automation/blob/main/Diagrama_Ansible.png?raw=true)

# ⚙️ Flujo de automatización

```text
host_vars/main.yml
        ↓
Ansible Playbook
        ↓
Docker Compose
        ↓
DNS Automation
        ↓
Reverse Proxy
        ↓
SSL Integration
        ↓
Homepage Update
```

---

# 🧩 Ejemplo de configuración

```yaml
apps:
  nextcloud: true
  vaultwarden: true
  uptime_kuma: true
```

Los servicios pueden activarse o eliminarse automáticamente modificando variables YAML.

Ejemplo:

```yaml
nextcloud: false
```

Tras ejecutar el playbook, la infraestructura se sincroniza automáticamente:

- Docker stacks
- Registros DNS
- Proxy Hosts
- SSL
- Homepage

---

# 📂 Estructura del proyecto

```text
playbooks/
roles/
inventory/
group_vars/
host_vars/
templates/
```

---

# 🖥️ Tecnologías utilizadas

- Ansible
- Docker
- Docker Compose
- Linux
- Proxmox VE
- Nginx Proxy Manager
- Technitium DNS
- Homepage
- WireGuard
- Grafana
- Prometheus
- Loki

---

# 🎯 Objetivos actuales

- Terraform + automatización de Proxmox
- GitOps workflows
- Observabilidad centralizada
- Multi-environment deployments
- Automatización MSP avanzada

---

# 📸 Capturas

## Homepage

(Añadir captura)

---

## Nginx Proxy Manager

(Añadir captura)

---

## Deploy automatizado

(Añadir captura)

---

# 📜 Licencia

Proyecto orientado a aprendizaje, automatización e infraestructura self-hosted.

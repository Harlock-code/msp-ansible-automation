# MSP / DevOps Lab — Automatización con Ansible

![banner](https://github.com/Harlock-code/Harlock-code/blob/main/banner_javi.png?raw=true)

![Ansible](https://img.shields.io/badge/Ansible-Automation-red?style=for-the-badge&logo=ansible)
![Docker](https://img.shields.io/badge/Docker-Containers-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Proxmox](https://img.shields.io/badge/Proxmox-Virtualization-E57000?style=for-the-badge&logo=proxmox)
![Linux](https://img.shields.io/badge/Linux-Debian-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Nginx Proxy Manager](https://img.shields.io/badge/Nginx_Proxy_Manager-Reverse_Proxy-009639?style=for-the-badge&logo=nginxproxymanager)
![Technitium DNS](https://img.shields.io/badge/Technitium-DNS-2C89A0?style=for-the-badge)
![Azure](https://img.shields.io/badge/Microsoft_Azure-Cloud-0078D4?style=for-the-badge&logo=microsoftazure)
![IaC](https://img.shields.io/badge/Infrastructure_as_Code-IaC-blueviolet?style=for-the-badge)
![Self Hosted](https://img.shields.io/badge/Self_Hosted-Platform-1ABC9C?style=for-the-badge)

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

![architecture](https://github.com/Harlock-code/msp-docker-infrastructure/blob/main/screenshots/home.png?raw=true)

---

## Nginx Proxy Manager

![architecture](https://github.com/Harlock-code/msp-docker-infrastructure/blob/main/screenshots/npm.png?raw=true)

---

# 📜 Licencia

Proyecto orientado a aprendizaje, automatización e infraestructura self-hosted.

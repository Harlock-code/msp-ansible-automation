# MSP / DevOps Lab — Automation with Ansible

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

## 📌 Description

Automation platform focused on MSP/DevOps environments using:

- Ansible
- Docker
- Proxmox
- Dynamic DNS
- Reverse Proxy
- Infrastructure as Code

This project automates the deployment, configuration, and lifecycle management of self-hosted services in a modular and reusable way.

---

# 🚀 Main Features

- ✔ Automated Docker deployment
- ✔ Automatic DNS integration
- ✔ Automatic Nginx Proxy Manager configuration
- ✔ Internal wildcard SSL support
- ✔ Dynamic homepage integration
- ✔ Declarative infrastructure using YAML
- ✔ Automatic service removal
- ✔ Modular architecture
- ✔ Reusable workflows

---

## ⚙️ Architecture & Automation Flow

![architecture](https://github.com/Harlock-code/msp-ansible-automation/blob/main/Diagrama_Ansible.png?raw=true)

# ⚙️ Automation Workflow

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
🎬 Demo - Automatic Nextcloud Removal
![Demo](https://github.com/Harlock-code/msp-ansible-automation/blob/main/deplygiff.gif?raw=true).



Services can be automatically enabled or removed by modifying YAML variables.

Example:

```yaml
nextcloud: false
```

After running the playbook, the infrastructure automatically synchronizes:

- Docker stacks
- Registros DNS
- Proxy Hosts
- SSL
- Homepage

---

# 📂 Project Structure

```text
playbooks/
roles/
inventory/
group_vars/
host_vars/
templates/
```

---

# 🖥️ Technologies Used

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

# 🎯 Current Goals

- Terraform + automatización de Proxmox
- GitOps workflows
- Observabilidad centralizada
- Multi-environment deployments
- Automatización MSP avanzada

---

# 📸 Screenshots

## Homepage

![architecture](https://github.com/Harlock-code/msp-docker-infrastructure/blob/main/screenshots/home.png?raw=true)

---

## Nginx Proxy Manager

![architecture](https://github.com/Harlock-code/msp-docker-infrastructure/blob/main/screenshots/npm.png?raw=true)

---

# 📜 License

Project focused on learning, automation, and self-hosted infrastructure.


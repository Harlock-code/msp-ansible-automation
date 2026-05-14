# MSP Ansible Automation

## Overview

This project is part of a self-hosted MSP / DevOps infrastructure lab focused on Infrastructure as Code, automation, Docker orchestration and reusable deployments.

The objective of this repository is to automate the provisioning and management of Docker hosts using Ansible, integrating GitHub-based Docker Compose deployments and reusable infrastructure components.

---

# Main Goals

* Automate Docker host provisioning
* Apply reusable baseline security configurations
* Deploy Docker stacks automatically from GitHub repositories
* Centralize infrastructure management
* Build reusable Infrastructure as Code workflows
* Simulate real MSP / DevOps deployment methodologies

---

# Infrastructure Architecture

## Hypervisor

* Proxmox VE

## Main Infrastructure

| Host            | Role                                |
| --------------- | ----------------------------------- |
| srv-ansible     | Central automation server           |
| srv-docker-main | Core infrastructure services        |
| srv-docker-apps | Customer applications               |
| srv-test-docker | Provisioning and deployment testing |

---

# Technologies Used

* Ansible
* Docker Engine
* Docker Compose
* GitHub
* Ubuntu Server 24.04
* SSH Key Authentication
* UFW
* Fail2ban

---

# Repository Structure

```text
ansible/
├── ansible.cfg
├── inventory/
│   ├── hosts.ini
│   └── group_vars/
│       ├── docker_main/
│       └── docker_test/
├── playbooks/
├── roles/
└── site.yml
```

---

# Inventory Management

Infrastructure hosts are managed through Ansible inventory groups.

Example:

```ini
[docker_main]
srv-docker-main ansible_host=192.168.56.31

[docker_test]
srv-test-docker ansible_host=192.168.56.50
```

---

# Variable Management

Environment-specific variables are separated using `group_vars`.

Example:

```yaml
repo_name: msp-docker-infrastructure
repo_url: https://github.com/Harlock-code/msp-docker-infrastructure.git

docker_stacks:
  - nginx-proxy-manager
  - homepage
  - uptime-kuma
```

This allows reusable deployments across multiple environments and clients.

---

# Implemented Roles

## common

Applies baseline package installation:

* curl
* git
* htop
* vim
* networking tools

---

## security

Applies basic Linux hardening:

* UFW firewall
* SSH allow rules
* HTTP/HTTPS allow rules
* Fail2ban

---

## docker_engine

Automates Docker installation:

* Docker Engine
* Docker Compose Plugin
* containerd
* Docker service enablement

---

## docker_stack

Reusable Docker deployment role.

Features:

* Git repository cloning
* `.env.example` handling
* Multi-stack deployment
* Automated `docker compose up -d`

---

# Automated Workflow

## Provisioning Flow

```text
Ubuntu Template
        ↓
Ansible Provisioning
        ↓
Docker Installation
        ↓
GitHub Repository Clone
        ↓
Docker Stack Deployment
        ↓
Operational Infrastructure
```

---

# GitHub Integration

The project integrates directly with GitHub repositories:

| Repository                | Purpose                     |
| ------------------------- | --------------------------- |
| msp-docker-infrastructure | Core infrastructure stacks  |
| msp-docker-apps           | Customer application stacks |
| msp-ansible-automation    | Infrastructure automation   |

---

# Infrastructure as Code Philosophy

This project follows Infrastructure as Code principles:

* Reusable configurations
* Automated provisioning
* Version-controlled infrastructure
* Reproducible deployments
* Modular architecture

The infrastructure is rebuilt from code instead of relying on manually configured servers.

---

# Current Features

Implemented capabilities include:

* Multi-host orchestration
* SSH key authentication
* Baseline hardening
* Docker provisioning
* GitHub-based deployments
* Multi-stack Docker deployment
* Environment separation using variables
* Modular reusable roles

---

# Future Roadmap

Planned future improvements:

* Prometheus
* Grafana
* Loki
* Authentik
* CI/CD integration
* GitOps workflows
* Automated backups
* Monitoring automation
* Multi-client environment support

---

# Learning Objectives

This lab was designed to improve practical skills in:

* DevOps methodologies
* Docker automation
* Infrastructure as Code
* Linux administration
* Git workflows
* MSP-oriented infrastructure management
* Automation and orchestration

---

# Author

Harlock-code

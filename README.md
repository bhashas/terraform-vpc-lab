# 🚀 Infrastructure Automation — Terraform + Ansible

[![Terraform CI](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/terraform-ci.yml)
[![Ansible Deploy](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/ansible-deploy.yml/badge.svg)](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/ansible-deploy.yml)
(https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/ci.yml)
![HCL](https://img.shields.io/badge/IaC-Terraform-844FBA?logo=terraform)
![Ansible](https://img.shields.io/badge/Config-Ansible-EE0000?logo=ansible)
![License](https://img.shields.io/badge/License-MIT-blue)

> Provisioning et configuration automatisés d'une infrastructure virtualisée sur Proxmox VE, avec pipeline CI/CD sécurisée (Checkov + Trivy).

---

## 🎯 Problème résolu

Les infrastructures classiques souffrent de déploiements manuels longs, d'erreurs humaines répétitives et d'un manque de standardisation.

**Solution : Infrastructure as Code (IaC)** — chaque composant est versionné, automatisé et reproductible.

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────┐
│                     GitHub Actions                   │
│         (CI/CD — lint, validate, plan, apply)        │
└────────────────────────┬────────────────────────────┘
                         │
          ┌──────────────▼──────────────┐
          │          Terraform           │
          │   Provisioning des VMs /     │
          │   réseau / stockage          │
          └──────────────┬──────────────┘
                         │
          ┌──────────────▼──────────────┐
          │           Ansible            │
          │   Configuration système,     │
          │   packages, services,        │
          │   sécurisation de base       │
          └─────────────────────────────┘
```

---

## 🔄 Pipeline CI/CD

```
Push / Pull Request
        │
        ▼
   GitHub Actions
        │
        ├── Terraform fmt / validate
        ├── Terraform plan
        ├── Checkov (scan IaC)
        ├── Trivy (scan vulnérabilités)
        └── Ansible Lint
                │
                ▼
        ✅ Validation OK → apply
        ❌ Échec → blocage PR
```

---

## 📁 Structure du projet

```
.
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   ├── playbooks/
│   └── roles/
├── .github/
│   └── workflows/
│       └── ci.yml
└── README.md
```

---

## ⚙️ Stack technique

| Outil          | Rôle                               |
|----------------|------------------------------------|
| Terraform      | Provisioning infrastructure (IaC)  |
| Ansible        | Configuration et hardening système |
| GitHub Actions | Pipeline CI/CD automatisée         |
| Checkov        | Scan sécurité du code Terraform    |
| Trivy          | Scan vulnérabilités images/IaC     |
| Proxmox VE     | Hyperviseur cible (lab on-prem)    |

---

## 🚀 Démarrage rapide

```bash
# Cloner le repo
git clone https://github.com/bhashas/infra-automation-terraform-ansible.git
cd infra-automation-terraform-ansible

# Initialiser Terraform
terraform init
terraform plan

# Lancer Ansible après provisioning
ansible-playbook -i inventory ansible/playbooks/site.yml
```

---

## 📈 Valeur ajoutée

- Infrastructure 100% reproductible et versionnée
- Zéro touch manuel — réduction des erreurs humaines
- Sécurité intégrée dès le pipeline (shift-left)
- Base solide pour évoluer vers K8s / GitOps

---

## 👤 Auteur

**Brahim Hashas** — Cloud & DevSecOps Engineer  
🔗 [github.com/bhashas](https://github.com/bhashas)

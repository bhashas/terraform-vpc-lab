# 🚀 Infrastructure Automation — Terraform + Ansible

[![Terraform CI](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/terraform-ci.yml)
[![Ansible Deploy](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/ansible-deploy.yml/badge.svg)](https://github.com/bhashas/infra-automation-terraform-ansible/actions/workflows/ansible-deploy.yml)
![HCL](https://img.shields.io/badge/IaC-Terraform-844FBA?logo=terraform)
![Ansible](https://img.shields.io/badge/Config-Ansible-EE0000?logo=ansible)
![Security](https://img.shields.io/badge/Security-Checkov%20%2B%20Trivy-critical)

> **Déploiement d'infrastructure automatisé, sécurisé et reproductible** — zéro intervention manuelle, pipeline CI/CD intégrée, prêt pour un contexte entreprise.

---

## 💼 Ce que ce projet démontre

Ce repo illustre la capacité à livrer une infrastructure complète **from scratch** :

- Provisioning de VMs via **Terraform** (Proxmox VE / adaptable cloud)
- Configuration et hardening système via **Ansible**
- Pipeline CI/CD **GitHub Actions** avec **scan sécurité intégré** (Checkov + Trivy)
- Infrastructure **100% versionnée, reproductible, auditable**

> Applicable à tout environnement : on-prem, AWS, GCP, Azure.

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
        ├── Checkov  ← scan sécurité IaC
        ├── Trivy    ← scan vulnérabilités
        └── Ansible Lint
                │
                ▼
        ✅ Validation OK → apply automatique
        ❌ Échec → blocage PR, aucun déploiement
```

**Principe shift-left** : la sécurité est vérifiée avant chaque déploiement, pas après.

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
│       ├── terraform-ci.yml
│       ├── ansible-deploy.yml
│       ├── terraform.yml
│       └── test-vault-oidc.yml
└── README.md
```

---

## 📈 Bénéfices concrets

| Avant | Après |
|-------|-------|
| Déploiement manuel (heures) | Déploiement automatisé (minutes) |
| Environnements non reproductibles | Infrastructure identique à chaque run |
| Sécurité vérifiée en post-prod | Sécurité bloquante dès le pipeline |
| Aucune traçabilité | Tout versionné, tout auditable sur Git |

---

## 👤 Auteur — Disponible en mission

**Brahim Hashas** — Ingénieur Cloud & DevSecOps  
Spécialisé : automatisation d'infrastructure, CI/CD, sécurité IaC, Proxmox / Linux

📩 Disponible pour missions freelance ou CDI — France / Remote  
🔗 [github.com/bhashas](https://github.com/bhashas)

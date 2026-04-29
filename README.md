# 🚀 Infrastructure Automation — Terraform + Ansible

> Provisioning et configuration automatisés d'une infrastructure virtualisée, avec pipeline CI/CD intégrée.

---

## 🎯 Problème résolu

Les infrastructures classiques souffrent de déploiements manuels longs, d'erreurs humaines répétitives, d'un manque de standardisation et d'une difficulté à reproduire les environnements.

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

| Outil           | Rôle                                  |
|-----------------|---------------------------------------|
| Terraform       | Provisioning infrastructure (IaC)     |
| Ansible         | Configuration et hardening système    |
| GitHub Actions  | Pipeline CI/CD automatisée            |
| Checkov         | Scan sécurité du code Terraform       |
| Trivy           | Scan vulnérabilités images/IaC        |
| Proxmox VE      | Hyperviseur cible (lab on-prem)       |

---

## 🚀 Démarrage rapide

```bash
# Cloner le repo
git clone https://github.com/bhashas/<repo>.git
cd <repo>

# Initialiser Terraform
terraform init
terraform plan

# Lancer Ansible après provisioning
ansible-playbook -i inventory ansible/playbooks/site.yml
```

---

## 📈 Valeur ajoutée

- Infrastructure 100% reproductible et versionnée
- Réduction des erreurs humaines (zéro touch manuel)
- Sécurité intégrée dès le pipeline (shift-left)
- Base solide pour évoluer vers K8s / GitOps

---

## 👤 Auteur

**Brahim Hashas** — Cloud & DevSecOps Engineer  
🔗 [github.com/bhashas](https://github.com/bhashas)

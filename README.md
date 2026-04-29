# 🚀 Infrastructure Automation Project (Terraform + Ansible)

## ⚡ Objectif réel

Réduire le temps de déploiement d’infrastructure de plusieurs heures à quelques minutes grâce à l’automatisation.

---

## 🚀 Présentation

Ce projet démontre une approche d’Infrastructure as Code (IaC) permettant de :

- provisionner automatiquement une infrastructure
- configurer les systèmes sans intervention manuelle
- garantir la reproductibilité des environnements
- standardiser les déploiements

---

## 🏗️ Architecture du projet

```text
           +----------------------+
           |   Terraform         |
           | (Provisioning)      |
           +----------+----------+
                      |
                      v
        +---------------------------+
        |  Infrastructure (VMs)     |
        |  - Linux Servers         |
        |  - Network configuration  |
        +------------+-------------+
                     |
                     v
           +----------------------+
           |     Ansible         |
           | (Configuration)     |
           +----------+----------+
                      |
                      v
---

## 🔄 CI/CD (GitHub Actions)

Ce projet intègre une pipeline CI/CD pour automatiser :

- validation du code Terraform
- vérification de la syntaxe Ansible
- détection d’erreurs avant déploiement
- contrôle qualité de l’infrastructure as code

### ⚙️ Pipeline automatisée

```text
Push / PR
   |
   v
GitHub Actions
   |
   +--> Terraform Init
   +--> Terraform Validate
   +--> Terraform Plan
   |
   +--> Ansible Lint (si applicable)
   |
   v
Validation OK / Fail
     +--------------------------------+
     |  Environnement final           |
     |  - Packages installés         |
     |  - Sécurité appliquée         |
     |  - Services configurés        |
     +--------------------------------+

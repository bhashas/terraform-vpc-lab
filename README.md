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
     +--------------------------------+
     |  Environnement final           |
     |  - Packages installés         |
     |  - Sécurité appliquée         |
     |  - Services configurés        |
     +--------------------------------+

# 🚀 Infrastructure Automation Project (Terraform + Ansible)

---

## ⚡ Objectif du projet

Automatiser entièrement le cycle de déploiement et de configuration d’une infrastructure afin de réduire les opérations manuelles, améliorer la reproductibilité et standardiser les environnements IT.

---

## 🎯 Problème résolu

Dans les infrastructures classiques :

- Déploiement manuel long et répétitif  
- Erreurs humaines fréquentes  
- Manque de standardisation  
- Difficulté à reproduire les environnements  

👉 Ce projet implémente une approche **Infrastructure as Code (IaC)** pour résoudre ces problèmes.

---

## 🚀 Solution proposée

Ce projet automatise :

- Le provisioning d’infrastructure avec Terraform  
- La configuration des machines avec Ansible  
- La standardisation des environnements  
- Une base prête pour CI/CD  

---

## 🏗️ Architecture globale

```text
                           +----------------------+
                           |      Terraform       |
                           |   (Provisioning)     |
                           +----------+-----------+
                                      |
                                      v
                +--------------------------------------+
                |     Infrastructure virtuelle         |
                |  - VMs Linux                         |
                |  - Réseau / Subnets                  |
                |  - Environnement Proxmox / Cloud     |
                +------------------+-------------------+
                                   |
                                   v
                           +----------------------+
                           |       Ansible        |
                           |   (Configuration)    |
                           +----------+-----------+
                                      |
                                      v
        +------------------------------------------------------+
        |              Environnement final                      |
        |  - Packages installés                                |
        |  - Configuration système                              |
        |  - Sécurisation de base                               |
        |  - Services opérationnels                             |
        +------------------------------------------------------+

Push / Pull Request
        |
        v
GitHub Actions
        |
        +--> Terraform Init
        +--> Terraform Validate
        +--> Terraform Plan
        +--> Ansible Lint
        |
        v
      VALIDATION OK / FAIL

.
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── ansible/
│   ├── playbooks/
│   └── roles/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
└── README.md


---
📈 Valeur ajoutée
Automatisation complète de l’infrastructure
Réduction du temps de déploiement
Réduction des erreurs humaines
Standardisation des environnements
Base solide DevOps / SRE
👤 Auteur

Brahim Hashas
DevOps / Cloud / Infrastructure Automation Engineer

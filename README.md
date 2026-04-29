🧩 📌 Infrastructure Automation Lab (Terraform + Ansible)
🚀 Objectif du projet

Ce projet montre une approche Infrastructure as Code (IaC) pour automatiser le déploiement et la configuration d’une infrastructure Linux.

Il permet de :

déployer automatiquement des machines virtuelles
configurer les systèmes de manière reproductible
réduire les opérations manuelles
améliorer la cohérence et la sécurité de l’infrastructure
🏗️ Architecture
Provisioning : Terraform
Configuration : Ansible
OS : Linux
Infrastructure : Proxmox / environnement virtualisé
⚙️ Fonctionnalités
Déploiement automatisé d’infrastructure
Configuration post-installation via Ansible
Séparation infrastructure / configuration
Structure réutilisable (modules Terraform)
Gestion des variables et environnements
🔐 Cas d’usage

Ce type d’automatisation est utilisé pour :

déployer des environnements de test rapidement
standardiser des infrastructures IT
automatiser des environnements Dev / Lab / Prod
réduire les erreurs humaines en configuration
🛠️ Stack technique
Terraform
Ansible
Linux
Virtualisation (Proxmox / VM)
📁 Structure du projet
terraform/
  ├── main.tf
  ├── variables.tf
  ├── outputs.tf

ansible/
  ├── playbooks/
  ├── roles/

modules/
  ├── compute/
  ├── network/
📌 Objectif pédagogique

Ce projet fait partie d’un parcours DevOps orienté :

Infrastructure as Code
Automation
Cloud & Virtualisation
Best practices IT
💡 Vision

L’objectif est de construire une infrastructure :

reproductible
automatisée
sécurisée
maintenable
👤 Auteur

Brahim Hashas
DevOps / Cloud / Infrastructure Automation

💥 Pourquoi ce README est important

👉 il tra

#############################
# BLOC PRINCIPAL TERRAFORM  #
#############################

terraform {
  required_version = ">= 1.4.6" # Version minimale de Terraform requise

  required_providers {          # Liste des providers utilisés dans le projet
    aws = {                     # Provider "aws" = on décrit de l'infra AWS
      source  = "hashicorp/aws" # D’où télécharger le plugin provider
      version = "~> 5.0"        # Version du provider AWS (5.x.x)
    }
  }
}

#############################
# CONFIGURATION DU PROVIDER #
#############################

provider "aws" {
  region = var.aws_region # On utilise une variable "aws_region" définie dans variables.tf
  # Comme tu n'as pas de compte AWS,
  # on NE FOURNIT PAS d'identifiants ici.
  # Le code est valide, mais on ne fera pas de "plan/apply".
}

#############################
# RESSOURCES VPC SIMPLIFIÉ  #
#############################

# 1) Création du VPC principal
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr # Le CIDR du VPC (ex: 10.0.0.0/16)
  enable_dns_support   = true         # Pour que la résolution DNS fonctionne
  enable_dns_hostnames = true         # Pour pouvoir avoir des noms DNS sur les instances

  tags = {
    Name = "${var.project_name}-vpc" # Nom du VPC dans la console AWS
    Env  = var.environment           # Environnement (dev, staging, prod)
  }
}

# 2) Subnet public
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id        # Associe le subnet au VPC créé juste au-dessus
  cidr_block              = var.public_subnet_cidr # Ex: 10.0.1.0/24
  map_public_ip_on_launch = true                   # Donne une IP publique aux instances au lancement

  tags = {
    Name = "${var.project_name}-public-subnet"
    Env  = var.environment
  }
}

# 3) Subnet privé
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id         # Subnet dans le même VPC
  cidr_block = var.private_subnet_cidr # Ex: 10.0.2.0/24

  tags = {
    Name = "${var.project_name}-private-subnet"
    Env  = var.environment
  }
}

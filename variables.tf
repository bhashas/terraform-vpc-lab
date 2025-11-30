#############################
# VARIABLES GLOBALES       #
#############################

# Région AWS utilisée par le provider
variable "aws_region" {
  description = "La région AWS cible"
  type        = string
  default     = "eu-west-3"         # Paris (symbolique, même si on ne déploie pas)
}

# CIDR du VPC principal
variable "vpc_cidr" {
  description = "CIDR du VPC principal"
  type        = string
  default     = "10.0.0.0/16"
}

# CIDR du subnet public
variable "public_subnet_cidr" {
  description = "CIDR du subnet public"
  type        = string
  default     = "10.0.1.0/24"
}

# CIDR du subnet privé
variable "private_subnet_cidr" {
  description = "CIDR du subnet privé"
  type        = string
  default     = "10.0.2.0/24"
}

# Nom du projet (pour les tags)
variable "project_name" {
  description = "Nom du projet / application"
  type        = string
  default     = "terraform-vpc-lab"
}

# Environnement (dev, staging, prod)
variable "environment" {
  description = "Environnement de déploiement"
  type        = string
  default     = "dev"
}

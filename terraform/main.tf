terraform {
  required_version = ">= 1.4.6"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.70"
    }
  }
}

# Provider configuré via variables d'environnement :
# PROXMOX_VE_ENDPOINT, PROXMOX_VE_USERNAME, PROXMOX_VE_PASSWORD
provider "proxmox" {
  endpoint = var.proxmox_endpoint
  insecure = true
}

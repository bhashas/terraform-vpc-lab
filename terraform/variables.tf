variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "terraform-ansible-lab"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ssh_key_name" {
  description = "Name of the SSH key pair in AWS"
  type        = string
  default     = "terraform-lab-key"
}

variable "ssh_public_key" {
  description = "SSH public key content"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH (22)"
  type        = string
  default     = "0.0.0.0/0"
}

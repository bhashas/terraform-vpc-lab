variable "region" {
  description = "AWS region"
  default     = "eu-west-3"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

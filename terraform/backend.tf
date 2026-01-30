terraform {
  backend "s3" {
    profile        = "terraform"
    bucket         = "terraform-state-brahim-hashas"
    key            = "lab/terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

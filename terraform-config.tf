#Terraform Settings Block
terraform {
  required_version = "~> 1.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#Provider Block
provider "aws" {
  region = "us-east-1"
}

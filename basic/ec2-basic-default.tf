#Terraform setting Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recomended in production
    }
  }
}

#Provider Block
provider "aws" {
  profile = "default" #AWS credentials profile configured on your desktop terminal
  region  = "us-east-1"
}

#Resourec Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0341d95f75f311023"
  instance_type = "t2.micro"
}

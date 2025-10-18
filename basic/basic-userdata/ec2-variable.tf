# Input Variables
#AWS Region
variable "aws_region" {
    description = "Region where resource are going to deploy"
    type = string
    default = "us-east-1"
}

# AWS EC2 instance Type
variable "instance_type" {
  type = string
  default = "t3.micro"
}

# AWS EC2 instance Key Pair which is already exist
variable "instance_keypair" {
  description = "AWS EC2 instance existing key pair associate with EC2 instance"
  type = string
  default = "ssh-key.pem"
}

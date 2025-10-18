resource "aws_instance" "Ec2demo" {
  ami           = "ami-0341d95f75f311023"
  instance_type = "t3.micro"
  user_data     = file("${path.module}/app-install.sh")
  tags = {
    "Name"    = "EC2 Demo"
    "Created" = "Terraform"
  }
}

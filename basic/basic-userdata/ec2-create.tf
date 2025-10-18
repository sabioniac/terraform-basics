resource "aws_instance" "Ec2demo" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name = var.instance_keypair
  user_data     = file("${path.module}/app-install.sh")
  tags = {
    "Name"    = "EC2 Demo"
    "Created" = "Terraform"
  }
}

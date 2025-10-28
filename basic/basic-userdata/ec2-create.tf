resource "aws_instance" "Ec2demo" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.Allow-http-ssh.id]
  user_data              = file("${path.module}/app-install.sh")
  tags = {
    "Name"           = "EC2 Demo"
    "Provisioned By" = "Dev_Env"
    "StackName"      = "Terraform-Basic"
  }
}

output "instance_publicip" {
  description = "Ec2 Public IP details"
  value       = aws_instance.Ec2demo.private_ip
}

output "instance_publicdns" {
  description = "Ec2 public DNS details"
  value       = aws_instance.Ec2demo.public_dns
}

output "security_groupname"{
  description = "Security Group Name"
  value       = aws_security_group.Allow-http-ssh.name
}

output "security_groupid"{
  description = "Security Group ID"
  value       = aws_security_group.Allow-http-ssh.id
}


# EC2 instance ID
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

# EC2 public IP
output "public_ip" {
  description = "Public IP address of EC2"
  value       = aws_instance.web.public_ip
}

# EC2 public DNS
output "public_dns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.web.public_dns
}

# VPC ID
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

# Public subnet ID
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

# Security group ID
output "security_group_id" {
  description = "ID of EC2 security group"
  value       = aws_security_group.web.id
}

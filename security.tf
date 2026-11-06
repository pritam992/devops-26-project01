resource "aws_security_group" "web" {

  name        = "${var.environment}-web-sg"
  description = "Security group for EC2 web server"

  # Attach security group to the custom VPC.
  vpc_id = module.network.vpc_id

  # SSH access from trusted IP.
  ingress {
    description = "Allow SSH from trusted public IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  # Application HTTP traffic.
  ingress {
    description = "Allow HTTP web traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound traffic.
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.environment}-web-sg"
    Environment = var.environment
    Project     = var.project_name
  }
}
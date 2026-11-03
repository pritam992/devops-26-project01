
# --------------------------------------------------
# 1. CREATE SECURITY GROUP
# --------------------------------------------------

resource "aws_security_group" "web" {

  # Name of the security group in AWS Console.
  name = "${var.environment}-web-sg"

  # Explains the purpose of this security group.
  description = "Security group for EC2 web server"

  # Attach security group to our existing VPC.
  vpc_id = aws_vpc.main.id


  # ------------------------------------------------
  # 2. SSH INBOUND RULE
  # ------------------------------------------------

  ingress {
    description = "Allow SSH from trusted public IP"

    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [var.allowed_ssh_cidr]
  }


  # ------------------------------------------------
  # 3. HTTP INBOUND RULE
  # ------------------------------------------------

  ingress {
    description = "Allow HTTP web traffic"

    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }


  # ------------------------------------------------
  # 4. OUTBOUND TRAFFIC RULE
  # ------------------------------------------------

  egress {
    description = "Allow all outbound traffic"

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }


  # ------------------------------------------------
  # 5. RESOURCE TAGS
  # ------------------------------------------------

  tags = {
    Name        = "${var.environment}-web-sg"
    Environment = var.environment
    Project     = "devops-26-project01"
  }
}

resource "aws_instance" "web" {

  ami           = var.ami_id
  instance_type = var.instance_type

  # Use the public subnet created by the network module.
  subnet_id = module.network.public_subnet_id

  # Attach the security group created in security.tf.
  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  key_name = var.key_name

  user_data = file("${path.module}/user_data.sh")

  # Root EBS volume configuration.
  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
    encrypted   = true
  }

  # Enable detailed monitoring only when requested.
  monitoring = var.enable_monitoring

  tags = {
    Name        = var.instance_name
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_instance" "web" {

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default1.ids[0] #aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  key_name = var.key_name

  user_data = file("${path.module}/user_data.sh")

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
    encrypted   = true
  }

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}
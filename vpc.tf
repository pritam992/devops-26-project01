
# --------------------------------------------------
# 1. CREATE AWS VPC
# --------------------------------------------------

resource "aws_vpc" "main" {

  # Gets the IP address range from variable.tf

  cidr_block = var.vpc_cidr

  # Enables DNS resolution inside the VPC.

  enable_dns_support = true

  # Allows AWS to assign DNS hostnames to instances

  enable_dns_hostnames = true

  # Adds tags to identify the VPC in AWS Console.
  tags = {
    Name        = "${var.environment}-vpc"
    Environment = var.environment
    Project     = "devops-26-project01"
  }
}


# --------------------------------------------------
# 2. CREATE PUBLIC SUBNET
# --------------------------------------------------

resource "aws_subnet" "public" {

  # Associates subnet with the VPC created above.
  vpc_id = aws_vpc.main.id

  # Gets subnet IP range from variable.tf.

  cidr_block = var.public_subnet_cidr

  # Specifies the Availability Zone.

  availability_zone = var.availability_zone

  # Automatically assigns public IPv4 addresses

  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.environment}-public-subnet"
    Environment = var.environment
    Project     = "devops-26-project01"
  }
}

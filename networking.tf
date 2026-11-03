
# --------------------------------------------------
# 1. CREATE INTERNET GATEWAY
# --------------------------------------------------

resource "aws_internet_gateway" "main" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "${var.environment}-igw"
    Environment = var.environment
    Project     = "devops-26-project01"
  }
}


# --------------------------------------------------
# 2. CREATE PUBLIC ROUTE TABLE
# --------------------------------------------------

resource "aws_route_table" "public" {

  # Associate route table with our VPC.
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "${var.environment}-public-route-table"
    Environment = var.environment
    Project     = "devops-26-project01"
  }
}


# --------------------------------------------------
# 3. CREATE DEFAULT INTERNET ROUTE
# --------------------------------------------------
resource "aws_route" "public_internet" {

  # Select the route table created above.
  route_table_id = aws_route_table.public.id

  # Destination: all IPv4 addresses.
  destination_cidr_block = "0.0.0.0/0"

  # Send internet traffic through the Internet Gateway.
  gateway_id = aws_internet_gateway.main.id
}

# --------------------------------------------------
# 4. ASSOCIATE PUBLIC SUBNET WITH ROUTE TABLE
# --------------------------------------------------

resource "aws_route_table_association" "public" {

  # Select the public subnet from vpc.tf.
  subnet_id = aws_subnet.public.id

  # Select the public route table.
  route_table_id = aws_route_table.public.id
}

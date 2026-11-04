data "aws_vpc" "default" {
  id = var.vpc_id
}

data "aws_subnets" "default1" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
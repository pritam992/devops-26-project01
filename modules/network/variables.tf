
variable "vpc_cidr" {
  description = "CIDR block for the custom VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS availability zone for the public subnet"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource tags"
  type        = string
}

variable "internet_cidr" {
  description = "Destination CIDR for internet-bound traffic"
  type        = string
  default     = "0.0.0.0/0"
}


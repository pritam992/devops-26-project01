
# --------------------------------------------------
# 1. AWS REGION
# --------------------------------------------------

variable "aws_region" {
  description = "AWS deployment region"
  type        = string
}


# --------------------------------------------------
# 2. AWS PROFILE
# --------------------------------------------------

variable "aws_profile" {
  description = "AWS CLI profile"
  type        = string
}


# --------------------------------------------------
# 3. AWS ACCOUNT ID
# --------------------------------------------------

variable "aws_account_id" {
  description = "Expected AWS account ID"
  type        = string
}

#--------------------------------------------------
# 4. key_name 
#--------------------------------------------------
variable "key_name" {
  description = "Existing AWS EC2 key pair name"
  type        = string
}

# --------------------------------------------------
# 4. VPC CIDR
# --------------------------------------------------

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}


# --------------------------------------------------
# 5. PUBLIC SUBNET CIDR
# --------------------------------------------------

variable "public_subnet_cidr" {
  description = "Public subnet CIDR block"
  type        = string
}


# --------------------------------------------------
# 6. AVAILABILITY ZONE
# --------------------------------------------------

variable "availability_zone" {
  description = "Availability zone"
  type        = string
}


# --------------------------------------------------
# 7. EC2 INSTANCE TYPE
# --------------------------------------------------

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}


# --------------------------------------------------
# 8. EC2 INSTANCE NAME
# --------------------------------------------------

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}


# --------------------------------------------------
# 9. ENVIRONMENT
# --------------------------------------------------

variable "environment" {
  description = "Environment name"
  type        = string
}

#--------------------------------------------------
# 10. ami_id For EC2 Instance
#--------------------------------------------------
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

# --------------------------------------------------
# 11. ROOT EBS VOLUME SIZE
# --------------------------------------------------

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
}


# --------------------------------------------------
# 12. ALLOWED SSH CIDR
# --------------------------------------------------

variable "allowed_ssh_cidr" {
  description = "Trusted public IP CIDR allowed to SSH"
  type        = string
}


# --------------------------------------------------
# 14. EC2 DETAILED MONITORING
# --------------------------------------------------

variable "enable_monitoring" {
  description = "Enable EC2 detailed monitoring"
  type        = bool
  default     = false
}


variable "project_name" {
  description = "Project name used for resource tags"
  type        = string
}
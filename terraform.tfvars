
# --------------------------------------------------
# AWS CONFIGURATION
# --------------------------------------------------
aws_region     = "ap-south-1"
aws_profile    = "s3user-Durga"
aws_account_id = "728194820446"
key_name       = "devops-26"
ami_id         = "ami-0f19324397f53458f"

# --------------------------------------------------
# VPC CONFIGURATION
# --------------------------------------------------

vpc_cidr = "192.168.0.0/24"


# --------------------------------------------------
# PUBLIC SUBNET CONFIGURATION
# --------------------------------------------------

public_subnet_cidr = "192.168.0.0/26"
availability_zone  = "ap-south-1a"


# --------------------------------------------------
# EC2 CONFIGURATION
# --------------------------------------------------

instance_type = "t3.micro"
instance_name = "cloudmaster-web-server"


# --------------------------------------------------
# ENVIRONMENT CONFIGURATION
# --------------------------------------------------

environment = "dev"


# --------------------------------------------------
# STORAGE CONFIGURATION
# --------------------------------------------------

root_volume_size = 10


# --------------------------------------------------
# SSH CONFIGURATION
# --------------------------------------------------

# Replace this with your actual public IP address.

allowed_ssh_cidr = "49.42.204.232/32"

# --------------------------------------------------
# CLOUDWATCH MONITORING
# --------------------------------------------------

enable_monitoring = false

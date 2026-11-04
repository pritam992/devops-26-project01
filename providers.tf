
# --------------------------------------------------
# AWS PROVIDER CONFIGURATION
# --------------------------------------------------

provider "aws" {

  # AWS region where resources will be created
  region = var.aws_region

  # AWS CLI profile used for authentication
 # profile = var.aws_profile
}

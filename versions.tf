
# --------------------------------------------------
# TERRAFORM AND PROVIDER VERSION REQUIREMENTS
# --------------------------------------------------

terraform {

  # Minimum Terraform version required
  required_version = "<= 1.17.1"

  # AWS provider configuration
  required_providers {

    aws = {
      source = "hashicorp/aws"

      # Allow compatible AWS provider 6.x versions
      version = "~> 6.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket  = "terraform-tf-state-bucket-cloudmaster"
    key     = "devops26/environments/dev/ec2/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true

    # AWS profile for remote state access
    profile = "s3user-Durga"
  }
}
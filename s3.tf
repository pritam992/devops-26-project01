module "my-s3" {
  source = "../golden_S3"

  bucket_name = "prjct1-user-upload-ec2-s3"
  bucket_version = "Disabled"
}
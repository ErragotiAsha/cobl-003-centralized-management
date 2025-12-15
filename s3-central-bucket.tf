resource "aws_s3_bucket" "central_management_bucket" {
  bucket = var.central_s3_bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "CentralManagementBucket"
    Environment = "Production"
  }
}

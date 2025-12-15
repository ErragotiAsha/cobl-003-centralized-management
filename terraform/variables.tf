variable "management_account_id" {
  description = "AWS Account ID of the Management Account"
  type        = string
}

variable "member_account_ids" {
  description = "List of AWS Account IDs for Member Accounts"
  type        = list(string)
}

variable "central_s3_bucket_name" {
  description = "Name of the centralized S3 bucket"
  type        = string
}

variable "aws_region" {
  description = "AWS Region to deploy resources"
  type        = string
  default     = "us-east-1"
}

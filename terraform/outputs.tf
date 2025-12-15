output "central_s3_bucket_arn" {
  description = "ARN of the centralized S3 bucket"
  value       = aws_s3_bucket.central_management_bucket.arn
}

output "member_roles_arns" {
  description = "ARNs of the IAM roles created in Member Accounts"
  value       = [for r in aws_iam_role.central_access_role : r.arn]
}

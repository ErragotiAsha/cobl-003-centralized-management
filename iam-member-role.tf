resource "aws_iam_role" "central_access_role" {
  count = length(var.member_account_ids)

  name = "CentralAccessRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = { AWS = "arn:aws:iam::${var.management_account_id}:root" },
      Action    = "sts:AssumeRole"
    }]
  })

  tags = {
    Name        = "CentralAccessRole"
    Environment = "Production"
  }
}

resource "aws_iam_role_policy" "read_only_policy" {
  count  = length(var.member_account_ids)
  name   = "CentralReadOnlyPolicy"
  role   = aws_iam_role.central_access_role[count.index].id
  policy = file("${path.module}/central_read_only_policy.json")
}


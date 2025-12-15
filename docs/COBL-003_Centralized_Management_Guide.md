\# COBL-003 – Centralized Management



\## Purpose

Centralized access to multiple AWS accounts using Management Account with STS AssumeRole.



\## Prerequisites

\- AWS CLI configured for all accounts

\- Terraform installed

\- Administrator access for setup

\- CloudTrail enabled in all accounts



\## Implementation Steps

1\. Deploy centralized S3 bucket in Management Account.

2\. Deploy IAM roles in Member Accounts.

3\. Validate cross-account access via STS AssumeRole.

4\. Retrieve operational logs and store centrally.

5\. Ensure security and governance (least privilege, CloudTrail logging).



\## Terraform Files

\- provider.tf

\- variables.tf

\- s3-central-bucket.tf

\- iam-member-role.tf

\- central\_read\_only\_policy.json

\- outputs.tf



\## References

\- AWS IAM AssumeRole Documentation

\- AWS Cross-Account Access Patterns




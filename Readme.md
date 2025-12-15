# 🌐 COBL-003 – AWS Centralized Management Implementation

This repository implements **COBL-003 AWS Cloud Operations Competency – Centralized Management** using **AWS S3, IAM, Terraform**, and **GitHub Actions**.  
The solution demonstrates centralized S3 management, cross-account IAM roles, governance, and secure access automation.

---

## ⚙️ Prerequisites

Ensure the following are available before implementation:

- AWS Management Account  
- AWS Member Accounts  
- AWS CLI installed and configured  
- Terraform installed  
- GitHub Repository  
- IAM permissions to create S3 buckets, IAM roles, and policies  

---

## 🔐 Required GitHub Secrets

Create an IAM user in the management account and generate access keys.  
Add the following secrets to your GitHub repository:

**Path:**  
`GitHub → Repository Settings → Secrets & Variables → Actions → New Repository Secret`

| Secret Name             | Description                              |
|-------------------------|------------------------------------------|
| `AWS_ACCESS_KEY_ID`     | IAM user access key in Management Account |
| `AWS_SECRET_ACCESS_KEY` | IAM user secret key in Management Account |

---

## 📁 Project Structure

```text
cobl-003-centralized-management/
├── .github/
│   └── workflows/
│       └── terraform.yml
├── docs/
│   └── COBL-003_Centralized_Management_Guide.md
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   ├── s3-central-bucket.tf
│   ├── iam-member-role.tf
│   ├── central_read_only_policy.json
│   └── .terraform.lock.hcl
├── .gitignore
└── README.md

Implementation of COBL-003 AWS Cloud Operations Competency: Centralized S3, IAM Roles, Governance, and Cross-Account Access.


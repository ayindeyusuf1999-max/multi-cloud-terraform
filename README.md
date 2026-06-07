# Multi-Cloud Terraform Modules

Reusable Terraform modules for AWS, Azure, and GCP.

## Modules
- aws-vpc: VPC, Subnets, Internet Gateway
- azure-vnet: Resource Group, VNet, Subnets
- gcp-network: VPC Network, Subnets, Firewall

## CI/CD
Every push triggers GitHub Actions to validate all 3 modules and run terraform plan on AWS.

## Tech Stack
Terraform, AWS, Azure, GCP, GitHub Actions

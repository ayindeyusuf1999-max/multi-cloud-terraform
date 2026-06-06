output "aws_vpc_id" {
  description = "AWS VPC ID"
  value       = module.aws_vpc.vpc_id
}

output "azure_vnet_id" {
  description = "Azure VNet ID"
  value       = module.azure_vnet.vnet_id
}

output "gcp_network_id" {
  description = "GCP Network ID"
  value       = module.gcp_network.network_id
}

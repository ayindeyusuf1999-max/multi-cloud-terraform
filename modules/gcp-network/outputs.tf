output "network_id" {
  description = "ID of the GCP network"
  value       = google_compute_network.main.id
}

output "network_name" {
  description = "Name of the GCP network"
  value       = google_compute_network.main.name
}

output "subnet_ids" {
  description = "IDs of the subnets"
  value       = google_compute_subnetwork.main[*].id
}

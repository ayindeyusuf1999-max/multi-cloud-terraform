variable "network_name" {
  description = "Name of the GCP network"
  type        = string
}

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "subnets" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default     = ["10.2.1.0/24", "10.2.2.0/24"]
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

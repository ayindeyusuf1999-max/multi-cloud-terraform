resource "google_compute_network" "main" {
  name                    = var.network_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "main" {
  count         = length(var.subnets)
  name          = "${var.network_name}-subnet-${count.index + 1}"
  ip_cidr_range = var.subnets[count.index]
  region        = var.region
  network       = google_compute_network.main.id
  project       = var.project_id
}

resource "google_compute_firewall" "allow_internal" {
  name    = "${var.network_name}-allow-internal"
  network = google_compute_network.main.name
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = var.subnets
}

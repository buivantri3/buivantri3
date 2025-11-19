# modules/gcp-network/main.tf
resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnets" {
  for_each      = { for s in var.subnet_configs : s.subnet_name => s }
  project       = var.project_id
  name          = each.value.subnet_name
  ip_cidr_range = each.value.ip_cidr_range
  region        = each.value.region
  network       = google_compute_network.vpc_network.id
}
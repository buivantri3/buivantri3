

# Define the GKE Autopilot cluster
resource "google_container_cluster" "autopilot_cluster" {
  name     = "my-autopilot-cluster"
  location = var.region # Must match the provider's region or specify a different one

  # Enable Autopilot mode
  enable_autopilot = true

  # Deletion protection flag
  deletion_protection = false

  # (Optional) Specify a release channel
  release_channel {
    channel = "REGULAR" # Options: RAPID, REGULAR, STABLE
  }

  # (Optional) Other configurations like network, subnetwork, etc.
  # network    = google_compute_network.vpc.name
  # subnetwork = google_compute_subnetwork.subnet.name
}

# (Optional) Output the cluster name
output "cluster_name" {
  value = google_container_cluster.autopilot_cluster.name
}
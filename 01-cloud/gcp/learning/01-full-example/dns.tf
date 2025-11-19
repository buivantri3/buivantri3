# Create the private DNS managed zone
resource "google_dns_managed_zone" "private_zone" {
  name        = "my-private-dns-zone"
  dns_name    = "my-private-domain.net." # Must end with a period
  description = "Private DNS zone for internal services"
  visibility  = "private"

  private_visibility_config {
    networks {
      network_url = "projects/${var.project_id}/global/networks/default"
    }
    # You can add more networks if needed
    # networks {
    #   network_url = google_compute_network.another_vpc.id
    # }
  }
}

# (Optional) Add a sample A record to your private zone
resource "google_dns_record_set" "private_a_record" {
  name         = "host-a.${google_dns_managed_zone.private_zone.dns_name}"
  type         = "A"
  ttl          = 300
  managed_zone = google_dns_managed_zone.private_zone.name
  rrdatas      = ["10.0.0.10"] # Replace with your internal IP address
}

    # Define the Compute Engine VM instance
    resource "google_compute_instance" "default" {
      name         = var.vm_name
      machine_type = var.machine_type
      zone         = var.zone

      boot_disk {
        initialize_params {
          image = var.boot_image
        }
      }

      network_interface {
        network = google_compute_network.custom_vpc_network
        access_config {
            // Ephemeral public IP
        }
      }

      # Optional: Add tags for firewall rules or other purposes
      tags = ["http-server", "https-server", "http-enabled"]
    }

resource "google_compute_firewall" "allow_http_ingress" {
  name        = "allow-http-ingress-rule"
  network     = google_compute_network.custom_vpc_network.self_link
  description = "Allows http ingress traffic to instances with 'http-enabled' tag."

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"] # Allows traffic from all IP ranges
  target_tags   = ["http-enabled"] # Applies to instances with this tag
  direction     = "INGRESS"
  priority      = 1000 # Lower numbers indicate higher priority
}
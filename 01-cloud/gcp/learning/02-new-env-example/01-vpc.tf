    resource "google_compute_network" "custom_vpc_network" {
      name                    = "my-custom-vpc"
      auto_create_subnetworks = false # Set to false for custom subnets
    }

    resource "google_compute_subnetwork" "subnet_us_central1" {
      name          = "my-subnet-us-central1"
      ip_cidr_range = "10.0.1.0/24"
      region        = "us-central1"
      network       = google_compute_network.custom_vpc_network.id
    }

    resource "google_compute_subnetwork" "subnet_us_east1" {
      name          = "my-subnet-us-east1"
      ip_cidr_range = "10.0.2.0/24"
      region        = "us-east1"
      network       = google_compute_network.custom_vpc_network.id
    }
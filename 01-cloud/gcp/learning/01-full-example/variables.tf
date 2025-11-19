    variable "project_id" {
      description = "Your Google Cloud project ID"
      type        = string
    }

    variable "region" {
      description = "The GCP region for the VM"
      type        = string
      default     = "us-central1"
    }

    variable "zone" {
      description = "The GCP zone for the VM"
      type        = string
      default     = "us-central1-a"
    }

    variable "vm_name" {
      description = "The name of the VM instance"
      type        = string
      default     = "my-terraform-vm"
    }

    variable "machine_type" {
      description = "The machine type for the VM"
      type        = string
      default     = "e2-medium"
    }

    variable "boot_image" {
      description = "The boot disk image for the VM"
      type        = string
      default     = "debian-cloud/debian-11"
    }
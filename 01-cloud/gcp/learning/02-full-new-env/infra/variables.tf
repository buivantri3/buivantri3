    variable "project_id" {
      description = "Your Google Cloud project ID"
      type        = string
    }

    variable "region" {
      description = "The GCP region for the VM"
      type        = string
      default     = "us-central1"
    }

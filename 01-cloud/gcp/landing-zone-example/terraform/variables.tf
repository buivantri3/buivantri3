# variables.tf
variable "organization_id" {
  description = "The ID of the GCP organization."
  type        = string
}

variable "billing_account" {
  description = "The ID of the GCP billing account."
  type        = string
}

variable "billing_project_id" {
  description = "The project ID used for billing and initial resource deployment."
  type        = string
}

variable "region" {
  description = "The default GCP region for resources."
  type        = string
  default     = "us-central1"
}
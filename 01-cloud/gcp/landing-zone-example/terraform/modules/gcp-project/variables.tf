# modules/gcp-project/variables.tf
variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "project_name" {
  description = "The display name of the GCP project."
  type        = string
}

variable "folder_id" {
  description = "The ID of the folder where the project should reside."
  type        = string
}

variable "billing_account" {
  description = "The ID of the GCP billing account to link to the project."
  type        = string
}
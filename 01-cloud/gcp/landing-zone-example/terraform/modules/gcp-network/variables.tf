# modules/gcp-network/variables.tf
variable "project_id" {
  description = "The ID of the GCP project where the network will be created."
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_configs" {
  description = "A list of subnet configurations."
  type = list(object({
    subnet_name   = string
    region        = string
    ip_cidr_range = string
  }))
}
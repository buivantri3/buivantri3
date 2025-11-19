# Resource to create a new GCP Service Account
# resource "google_service_account" "terraform_sa" {
#   account_id   = "terraform-service-account"
#   display_name = "Service Account for Terraform"
#   description  = "Service account used by Terraform to manage GCP resources."
#   project      = var.project_id # Replace with your GCP Project ID
# }

# Resource to assign an IAM role to the Service Account
# resource "google_project_iam_member" "sa_iam_binding" {
#   project = var.project_id # Replace with your GCP Project ID
#   role    = "roles/editor"          # Assign the Editor role (adjust as needed for least privilege)
#   member  = "serviceAccount:${google_service_account.terraform_sa.email}"
# }

# Output the email of the created Service Account
# output "service_account_email" {
#   value = google_service_account.terraform_sa.email
# }
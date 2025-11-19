# modules/gcp-project/main.tf
resource "google_project" "project" {
  project_id = var.project_id
  name       = var.project_name
  folder_id  = var.folder_id
  billing_account = var.billing_account
}

output "project_id" {
  value = google_project.project.project_id
}
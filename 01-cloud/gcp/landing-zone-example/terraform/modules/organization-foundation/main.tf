# modules/organization-foundation/main.tf
resource "google_folder" "foundation_folder" {
  display_name = "Foundation"
  parent       = "organizations/${var.organization_id}"
}

resource "google_folder" "environments_folder" {
  display_name = "Environments"
  parent       = google_folder.foundation_folder.id
}

resource "google_folder" "dev_folder" {
  display_name = "Development"
  parent       = google_folder.environments_folder.id
}

resource "google_folder" "prod_folder" {
  display_name = "Production"
  parent       = google_folder.environments_folder.id
}

output "foundation_folder_id" {
  value = google_folder.foundation_folder.id
}

output "dev_folder_id" {
  value = google_folder.dev_folder.id
}

output "prod_folder_id" {
  value = google_folder.prod_folder.id
}
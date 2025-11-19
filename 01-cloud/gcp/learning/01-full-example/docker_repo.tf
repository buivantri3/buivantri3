resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region # Must match provider region
  repository_id = "my-docker-repo-name"
  description   = "My Docker repository for application images"
  format        = "DOCKER"

  # Optional: Configure immutable image tags
  # docker_config {
  #   immutable_tags = true
  # }
}
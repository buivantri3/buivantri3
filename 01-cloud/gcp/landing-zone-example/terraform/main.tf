# main.tf
provider "google" {
  project = var.billing_project_id
  region  = var.region
}

# Define the organization and top-level folders
module "organization_foundation" {
  source = "./modules/organization-foundation"

  organization_id = var.organization_id
  billing_account = var.billing_account
}

# Create environment-specific projects
module "dev_project" {
  source = "./modules/gcp-project"

  project_id      = "my-dev-project-12345"
  project_name    = "My Dev Project"
  folder_id       = module.organization_foundation.dev_folder_id
  billing_account = var.billing_account
}

module "prod_project" {
  source = "./modules/gcp-project"

  project_id      = "my-prod-project-67890"
  project_name    = "My Prod Project"
  folder_id       = module.organization_foundation.prod_folder_id
  billing_account = var.billing_account
}

# Example network setup within a project
module "dev_network" {
  source = "./modules/gcp-network"

  project_id = module.dev_project.project_id
  network_name = "dev-vpc"
  subnet_configs = [
    {
      subnet_name   = "dev-subnet-us-central1"
      region        = "us-central1"
      ip_cidr_range = "10.0.0.0/20"
    }
  ]
}
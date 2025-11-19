# # Create a Cloud SQL for PostgreSQL instance
# resource "google_sql_database_instance" "postgres_instance" {
#   name             = "my-postgres-instance-17"
#   database_version = "POSTGRES_17" # Specify PostgreSQL version 17
#   region           = var.region # Must match provider region or be specified explicitly

#   settings {
#     tier = "db-f1-micro" # Choose an appropriate machine type
#     ip_configuration {
#       ipv4_enabled = true
#       # Optional: Restrict authorized networks for security
#       # authorized_networks {
#       #   value = "0.0.0.0/0" # Allow all (for testing), highly recommend restricting in production
#       # }
#     }
#     backup_configuration {
#       enabled            = true
#       binary_log_enabled = false # Not applicable for PostgreSQL
#       start_time         = "03:00"
#     }
#   }

#   deletion_protection = false # Set to true for production environments
# }

# # Create a database within the instance (optional, 'postgres' database exists by default)
# resource "google_sql_database" "my_application_db" {
#   name     = "my-application-db"
#   instance = google_sql_database_instance.postgres_instance.name
#   charset  = "UTF8"
#   collation = "en_US.UTF8"
# }

# # Create a user for the database (optional, 'postgres' user exists by default)
# resource "google_sql_user" "app_user" {
#   name     = "app_user"
#   instance = google_sql_database_instance.postgres_instance.name
#   host     = "%" # Allow connections from any host (for testing), restrict in production
#   password = "your-strong-password" # Replace with a strong password
# }

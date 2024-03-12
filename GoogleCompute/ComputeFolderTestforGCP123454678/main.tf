provider "google" {
  project = var.project_id
  credentials = var.credentials
}

resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region

  settings {
    tier = var.tier
    ip_configuration {
      ipv4_enabled = true
    }
  }
}

resource "google_sql_database" "example" {
  name     = "example_database"
  instance = google_sql_database_instance.default.name
}

# Example of creating a user for the database
resource "google_sql_user" "users" {
  name     = "cloudsqluser1"
  instance = google_sql_database_instance.default.name
  password = "gcpuser1234"
}

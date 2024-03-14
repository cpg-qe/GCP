resource "google_storage_bucket" "bucket_test" {
  name                        = var.bucket_name
  location                    = var.location
  project                     = var.project_id
  storage_class               = var.storage_class

  lifecycle_rule {
    condition {
      age = var.lifecycle_rule_age
    }
    action {
      type = "Delete"
    }
  }
}

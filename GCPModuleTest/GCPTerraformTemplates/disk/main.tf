resource "google_compute_disk" "persistent_disk" {
  name    = var.disk_name
  type    = var.disk_type
  zone    = var.zone
  project = var.project_id
  size    = var.disk_size_gb
}

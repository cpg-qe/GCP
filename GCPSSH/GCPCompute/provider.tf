provider "google" {
 #credentials = file ("/home/cmpdev/Terraform-GCP/automation-226410-e2b383330866.json")
  project = var.gcp_project
  credentials = var.credentials
  region  = var.gcp_region
  zone    = var.gcp_zone
}

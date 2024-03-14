variable "disk_name" {
  description = "The name of the persistent disk"
  type        = string
}

variable "disk_type" {
  description = "The type of the persistent disk"
  type        = string
}

variable "zone" {
  description = "The zone where the persistent disk will be created"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "disk_size_gb" {
  description = "The size of the persistent disk in GB"
  type        = number
}

variable "project_id" {
  description = "project id"
  type        = string
}

variable "credentials" {}

variable "instance_name" {
  description = "instance name."
  default     = "default_instance"
}

variable "database_version" {
  description = "db version"
  default     = "POSTGRES_12"
}

variable "region" {
  description = "region"
  default     = "us-central1"
}

variable "tier" {
  description = "tier"
  default     = "db-f1-micro"
}

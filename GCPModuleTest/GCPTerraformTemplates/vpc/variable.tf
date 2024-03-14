variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet to create"
  type        = string
}

variable "subnet_cidr" {
  description = "The IP CIDR range for the subnet"
  type        = string
}

variable "region" {
  description = "The region where the subnet will be created"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

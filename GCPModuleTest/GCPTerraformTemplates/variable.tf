variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the VPC subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "region" {
  description = "The region for the resources"
  type        = string
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
}

variable "location" {
  description = "The location for the storage bucket"
  type        = string
}

variable "disk_name" {
  description = "The name of the compute disk"
  type        = string
}

variable "disk_type" {
  description = "The type of compute disk"
  type        = string
}

variable "zone" {
  description = "The zone for the compute resources"
  type        = string
}

variable "disk_size" {
  description = "The size of the compute disk in GB"
  type        = number
}

variable "address_name" {
  description = "The name for the load balancer IP address"
  type        = string
}

variable "forwarding_rule_name" {
  description = "The name for the load balancer forwarding rule"
  type        = string
}


variable "health_check_name" {}

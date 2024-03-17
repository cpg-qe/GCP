variable "credentials" {}

variable "ssh_username" {
  description = "Username associated with the SSH public key"
  type        = string
  default = "cmpdev"
}

variable "ssh_public_key_path" {
  description = "ssshkeyforgoogle.pub"
  type        = string
}


variable "existing_network_name" {
  default = "default"
}

variable "region" {
  default = "us-east1"
}

variable "firewallname" {
default = "itomlab-firewall"
}

variable "zone" {
  default = "us-east1-b"
}

variable "hostname" {
 default = "cpglabhost16"
}

variable "machinetype"{
default = "f1-micro"
}



variable "project" {}

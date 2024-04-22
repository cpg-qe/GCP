variable "credentials" {}

variable "ssh_pub_key" {
  type    = string
  default = ""
}

variable "ssh_user" {
  type    = string
  default = "cmpdev"
}


variable "existing_network_name" {
  default = "default"
}

variable "region" {
  default = "us-east1"
}

variable "owner" {
default = "sundar"
}

variable "Group" {
default = "sundar"
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

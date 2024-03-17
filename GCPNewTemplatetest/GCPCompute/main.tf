provider "google" {
version = "3.5.0"
#credentials = file("/home/cmpdev/Terraform-GCP/automation-226410-e2b383330866.json")
credentials = var.credentials
project = var.project
region = var.region
zone = var.zone
}

data "google_compute_network" "default" {
 name  =  var.existing_network_name
}

resource "google_compute_firewall" "webserver_ssh" {
  name    = var.firewallname
  network = data.google_compute_network.default.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["vm-instance"]
  source_ranges = ["10.128.15.201/32"]
}


resource "google_compute_instance" "vm_instance" {
    name = var.hostname
    machine_type = var.machinetype
    zone = var.zone
    tags = ["vm-instance"]
    boot_disk {
        initialize_params {
           # image = data.google_compute_image.my_image.self_link
           image = "centos-cloud/centos-7"
        }
    }

    network_interface {
        network = data.google_compute_network.default.name
        access_config {}
    }

    metadata = var.authentication_type == "ssh_key" ? {
    ssh-keys       = "${var.ssh_user}:${var.ssh_pub_key}"
    enable-oslogin = "FALSE"
  } : {}

   metadata = var.authentication_type == "ssh_key" ? {
    ssh-keys       = "${var.ssh_user}:${var.ssh_pub_key}"
    enable-oslogin = "FALSE"
  } : {}


  metadata_startup_script = var.authentication_type == "ssh_key" ? "" : <<EOT
    #!/bin/bash
    # Set up a new user with a password
    useradd -m -s /bin/bash "${var.vm_username}"
    echo "${var.vm_username}:${var.vm_password}" | chpasswd
    usermod -aG sudo "${var.vm_username}"
    sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
    systemctl restart ssh
  EOT

}



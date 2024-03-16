# disk
resource "google_compute_disk" "default" {
  name = var.disk_name
}

resource "google_compute_instance" "website_server" {
  name                      = var.vmname
  description               = "Web Server"
  machine_type              = "f1-micro"
  allow_stopping_for_update = true
  deletion_protection       = false

  tags = ["webserver-instance"]

  shielded_instance_config {
    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }

  scheduling {
    provisioning_model  = "STANDARD"
    on_host_maintenance = "TERMINATE"
    automatic_restart   = true
  }

  boot_disk {
    mode        = "READ_WRITE"
    auto_delete = true
    initialize_params {
      image = "ubuntu-minimal-2204-jammy-v20220816"
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"

    access_config {
      network_tier = "PREMIUM"
    }
  }

  metadata = {
    ssh-keys               = "${var.ssh_user}:${local_file.public_key.content}"
    block-project-ssh-keys = true
  }

  labels = {
    terraform = "true"
    purpose   = "host-static-files"
  }


# connect compute & disk
 attached_disk {
  source     = google_compute_disk.default.id
}
}

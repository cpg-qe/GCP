resource "google_compute_firewall" "webserver_ssh" {
  name    = "webserver-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  target_tags   = ["webserver-instance"]
  source_ranges = ["0.0.0.0/0"]
}

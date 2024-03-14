resource "google_compute_address" "lb_ip" {
  name   = var.address_name
  region = var.region
}

resource "google_compute_http_health_check" "http_health_check" {
  name               = var.health_check_name
}

resource "google_compute_target_pool" "target_pool" {
  name = var.target_pool_name

  instances = var.instances

  health_checks = [
    google_compute_http_health_check.http_health_check.name,
  ]
}

resource "google_compute_forwarding_rule" "forwarding_rule" {
  name       = var.forwarding_rule_name
  target     = google_compute_target_pool.target_pool.self_link
  port_range = "80"
}

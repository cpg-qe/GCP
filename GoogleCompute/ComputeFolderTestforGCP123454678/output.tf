output "instance_name" {
  value = google_sql_database_instance.default.name
  description = "Cloud SQL instance name."
}

output "instance_connection_name" {
  value = google_sql_database_instance.default.connection_name
  description = "connection name."
}

output "instance_ip_address" {
  value = google_sql_database_instance.default.ip_address[0].ip_address
  description = "The IPv4 address of the Cloud SQL instance."
}

variable "address_name" {
  description = "The name for the global IP address resource"
  type        = string
}

variable "region" {
  description = "The region where the load balancer and IP address will be created"
  type        = string
}

variable "health_check_name" {
  description = "The name of the HTTP health check resource"
  type        = string
}

variable "target_pool_name" {
  description = "The name of the target pool"
  type        = string
}

variable "instances" {
  description = "A list of instance URIs that the load balancer will send traffic to"
  type        = list(string)
}

variable "forwarding_rule_name" {
  description = "The name of the forwarding rule"
  type        = string
}

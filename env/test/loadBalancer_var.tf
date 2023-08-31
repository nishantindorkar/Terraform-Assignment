variable "internal" {
  type    = bool
  default = false
}

variable "type" {
  type    = string
  default = "network"
}

# variable "nlb_name" {
#   description = "Name of the Network Load Balancer"
#   type        = string
# }

variable "processed_bytes_per_month" {
  description = "Processed bytes per month (in GB)"
  type        = number
  default     = 30
}
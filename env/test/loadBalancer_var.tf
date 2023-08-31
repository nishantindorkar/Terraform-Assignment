variable "internal" {
  type    = bool
  default = false
}

variable "type" {
  type    = string
  default = "network"
}

variable "processed_bytes_per_month" {
  description = "Processed bytes per month (in GB)"
  type        = number
  default     = 30
}

variable "eks_cluster_cost" {
  type        = number
  default     = 1
}
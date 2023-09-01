variable "quantity" {
  description = "Number of Amazon DocumentDB clusters to create"
  type        = number
  default     = 1
}

variable "utilization_hours_per_month" {
  description = "Server utilization hours per month"
  type        = number
  default     = 730
}

variable "db_instance_type" {
  type        = string
  default     = "db.t3.medium"
}


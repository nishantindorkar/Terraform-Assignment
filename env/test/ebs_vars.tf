variable "redis_volume_count" {
  type        = number
  default     = 5
}

variable "jenkins_volume_count" {
  type        = number
  default     = 5
}
variable "average_instance_duration_hours" {
  description = "Average duration each instance runs per month (in hours)"
  type        = number
  default     = 730
}

variable "volume_size_gb" {
  description = "Storage amount per EBS volume (in GB)"
  type        = number
  default     = 8
}

variable "snapshot_frequency" {
  description = "Number of snapshots to take per month"
  type        = number
  default     = 2
}

variable "amount_changed_per_snapshot_gb" {
  description = "Amount of data changed per snapshot (in GB)"
  type        = number
  default     = 3
}

variable "rabbitmq_volume_count" {
  description = "Number of EBS volumes for RabbitMQ"
  type        = number
  default     = 1
}

variable "rabbitmq_average_instance_duration_hours" {
  description = "Average duration each instance runs per month (in hours)"
  type        = number
  default     = 730
}

variable "rabbitmq_volume_size_gb" {
  description = "Storage amount per EBS volume (in GB)"
  type        = number
  default     = 30
}

variable "rabbitmq_snapshot_frequency" {
  description = "Number of snapshots to take per month"
  type        = number
  default     = 2
}

variable "rabbitmq_amount_changed_per_snapshot_gb" {
  description = "Amount of data changed per snapshot (in GB)"
  type        = number
  default     = 3
}


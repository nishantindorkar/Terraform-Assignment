variable "redis_volume_count" {
  type = number
}

variable "jenkins_volume_count" {
  type = number
}

variable "volume_size_gb" {
  type = number
}

variable "availability_zones" {
  type = list(string)
}

variable "rabbitmq_volume_count" {
  type = number
}
variable "rabbitmq_volume_size_gb" {
  type = number
}
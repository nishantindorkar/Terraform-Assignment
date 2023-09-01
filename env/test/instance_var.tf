variable "instance_type" {
  type    = string
  default = "t3a.large"
}
variable "key_name" {
  type    = string
  default = "secrete-key"
}
variable "number_of_ec2_instances" {
  description = "Number of ec2 instances"
  type        = number
  default     = 2
}

variable "data_stored_gb" {
  description = "Amount of data stored in ECR per month (in GB)"
  type        = number
  default     = 50
}


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

variable "db_instance_type" {
  type = string
}

variable "quantity" {
  type = number
}

variable "availability_zones" {
  type = list(string)
}


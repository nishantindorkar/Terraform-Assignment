variable "tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type = string
}

variable "security_group_id" {
  type = string
}
variable "public_subnet_ids" {
  type = list(string)
}

variable "private_subnet_ids" {
  type = list(string)
}
variable "type" {
  type = string
}

variable "appname" {
  type    = string
  default = "eks"
}

variable "env" {
  type    = string
  default = "test"
}

variable "internal" {
  type    = bool
  default = false
}

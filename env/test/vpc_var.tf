variable "profile" {
  type    = string
  default = "nishant"
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "cidr_blocks" {
  type    = string
  default = "10.0.0.0/16"
}

variable "cidr_blocks_defualt" {
  type    = string
  default = "0.0.0.0/0"
}
variable "public_cidr_blocks" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}
variable "private_cidr_blocks" {
  type    = list(string)
  default = ["10.0.2.0/24"]
}
variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a"]
}
variable "map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "appname" {
  type    = string
  default = "eks"
}
variable "env" {
  type    = string
  default = "test"
}

variable "inbound_data_transfer_gb" {
  description = "Inbound data transfer per month (in GB)"
  type        = number
  default     = 1000
}

variable "outbound_data_transfer_gb" {
  description = "Outbound data transfer per month (in GB)"
  type        = number
  default     = 5
}

variable "intra_region_data_transfer_gb" {
  description = "Intra-region data transfer per month (in GB)"
  type        = number
  default     = 1000
}

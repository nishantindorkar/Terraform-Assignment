variable "public_subnet_ids" {
  type = list(string)
}

variable "security_group_id" {
  type = string  
}

variable "appname" {
  type = string
}

variable "env" {
  type = string
}

variable "tags" {
  type = map(string)
  default = {
    Name = "v1"
  }
}
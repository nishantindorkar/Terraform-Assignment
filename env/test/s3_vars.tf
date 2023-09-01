variable "standard_storage_gb" {
  description = "Standard storage per month (in GB)"
  type        = number
  default     = 5
}

variable "requests_standard" {
  description = "Requests to S3 Standard"
  type        = number
  default     = 100000
}

variable "requests_select" {
  description = "Requests from S3 Standard for Select"
  type        = number
  default     = 100000
}

variable "data_returned_select_gb" {
  description = "Data returned by S3 Select per month (in GB)"
  type        = number
  default     = 30
}

variable "data_scanned_select_gb" {
  description = "Data scanned by S3 Select per month (in GB)"
  type        = number
  default     = 30
}

variable "data_transfer_outbound_gb" {
  description = "Data transfer outbound to Internet per month (in GB)"
  type        = number
  default     = 30
}

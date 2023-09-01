variable "number_of_cmk" {
  description = "Number of customer managed CMKs"
  type        = number
  default     = 20
}

resource "aws_kms_key" "customer_managed_keys" {
  count       = var.number_of_cmk
  description = "Customer Managed CMK ${count.index + 1}"
}

output "cmk_ids" {
  description = "IDs of the created customer managed CMKs"
  value       = aws_kms_key.customer_managed_keys[*].key_id
}

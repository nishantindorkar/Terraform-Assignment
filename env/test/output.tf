output "estimated_inbound_cost" {
  description = "Estimated monthly cost for inbound data transfer"
  value       = var.inbound_data_transfer_gb * 0.01  # Assuming $0.01 per GB, adjust as needed
}

output "estimated_outbound_cost" {
  description = "Estimated monthly cost for outbound data transfer"
  value       = var.outbound_data_transfer_gb * 0.01  # Assuming $0.01 per GB, adjust as needed
}

output "estimated_intra_region_cost" {
  description = "Estimated monthly cost for intra-region data transfer"
  value       = var.intra_region_data_transfer_gb * 0.01  # Assuming $0.01 per GB, adjust as needed
}
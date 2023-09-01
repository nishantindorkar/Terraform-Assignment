output "estimated_inbound_cost" {
  description = "Estimated monthly cost for inbound data transfer"
  value       = var.inbound_data_transfer_gb * 0.01
}

output "estimated_outbound_cost" {
  description = "Estimated monthly cost for outbound data transfer"
  value       = var.outbound_data_transfer_gb * 0.01
}

output "estimated_intra_region_cost" {
  description = "Estimated monthly cost for intra-region data transfer"
  value       = var.intra_region_data_transfer_gb * 0.01
}


output "estimated_lb_monthly_cost" {
  description = "Estimated monthly cost for load balancer processed bytes"
  value       = var.processed_bytes_per_month * 0.01
}

output "estimated_eks_monthly_cost" {
  description = "Estimated monthly cost for eks processed bytes"
  value       = var.eks_cluster_cost * 73
}

output "estimated_cmk_request_cost" {
  description = "Estimated cost for the specified number of symmetric requests"
  value       = var.number_of_symmetric_requests * 0.03  
}

output "estimated_ec2_instances_cost" {
  description = "Estimated cost for the specified number of instances"
  value       = var.number_of_ec2_instances * 77.45  
}

output "estimated_ecr_storage_cost" {
  description = "Estimated monthly cost for data stored in ECR"
  value       = var.data_stored_gb * 0.10 
}
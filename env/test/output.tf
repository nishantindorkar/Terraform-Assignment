output "vpc_estimated_inbound_cost" {
  description = "Estimated monthly cost for inbound data transfer"
  value       = var.inbound_data_transfer_gb * 0.01
}

output "vpc_estimated_outbound_cost" {
  description = "Estimated monthly cost for outbound data transfer"
  value       = var.outbound_data_transfer_gb * 0.01
}

output "vpc_estimated_intra_region_cost" {
  description = "Estimated monthly cost for intra-region data transfer"
  value       = var.intra_region_data_transfer_gb * 0.01
}


output "lb_estimated_monthly_cost" {
  description = "Estimated monthly cost for load balancer processed bytes"
  value       = var.processed_bytes_per_month * 0.01
}

output "eks_estimated_monthly_cost" {
  description = "Estimated monthly cost for eks processed bytes"
  value       = var.eks_cluster_cost * 73
}

output "cmk_estimated_request_cost" {
  description = "Estimated cost for the specified number of symmetric requests"
  value       = var.number_of_symmetric_requests * 0.03  
}

output "ec2_instances_estimated_cost" {
  description = "Estimated cost for the specified number of instances"
  value       = var.number_of_ec2_instances * 77.45  
}

output "ecr_estimated_storage_cost" {
  description = "Estimated monthly cost for data stored in ECR"
  value       = var.data_stored_gb * 0.10 
}

output "s3_estimated_storage_cost" {
  description = "Estimated monthly cost for S3 standard storage"
  value       = var.standard_storage_gb * 0.023 
}

output "s3_estimated_request_cost" {
  description = "Estimated monthly cost for S3 requests"
  value       = (var.requests_standard + var.requests_select) * 0.0004
}

output "s3_estimated_data_returned_cost" {
  description = "Estimated monthly cost for data returned by S3 Select"
  value       = var.data_returned_select_gb * 0.0007
}

output "s3_estimated_data_scanned_cost" {
  description = "Estimated monthly cost for data scanned by S3 Select"
  value       = var.data_scanned_select_gb * 0.0007
}

output "s3_estimated_outbound_data_transfer_cost" {
  description = "Estimated monthly cost for outbound data transfer to Internet"
  value       = var.data_transfer_outbound_gb * 0.09
}
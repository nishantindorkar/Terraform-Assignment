output "nlb_dns_name" {
  description = "The DNS name of the NLB"
  value       = aws_lb.network.dns_name
}

output "estimated_monthly_cost" {
  description = "Estimated monthly cost for processed bytes"
  value       = var.processed_bytes_per_month * 0.01  # Assuming $0.01 per GB, adjust as needed
}
resource "aws_ecr_repository" "ecr-repo" {
  name = "ecr-sample-repository"
}

output "ecr_repository_url" {
  description = "URL of the created ECR repository"
  value       = aws_ecr_repository.ecr-repo.repository_url
}
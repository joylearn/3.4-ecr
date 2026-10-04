output "repository_url" {
  description = "The URL of the created ECR repository"
  value       = aws_ecr_repository.app_ecr.repository_url
}

output "repository_arn" {
  description = "The ARN of the created ECR repository"
  value       = aws_ecr_repository.app_ecr.arn
}
variable "aws_region" {
  description = "The AWS region to deploy the ECR repository in"
  type        = string
  default     = "us-east-1"
}

variable "repository_name" {
  description = "The name of the private ECR repository"
  type        = string
  default     = "3.4-ecr"
}
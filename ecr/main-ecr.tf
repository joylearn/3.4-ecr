terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = { source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

# Private ECR Repository
resource "aws_ecr_repository" "app_ecr" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "Development"
    Project     = "3.4-ecr"
  }
}
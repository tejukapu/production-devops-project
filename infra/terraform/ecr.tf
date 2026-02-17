resource "aws_ecr_repository" "app_repository" {
  name = "production-app-repository"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "production-app-repository"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}

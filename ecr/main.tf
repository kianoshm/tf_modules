#ECR

resource "aws_ecr_repository" "ecr_repository" {
  name = var.aws_ecr_repository

  image_scanning_configuration {
    scan_on_push = var.ecr_scan_on_push
  }
  tags = {
    Name        = var.tag_function.Name
    Environment = var.tag_function.Environment
    Application = var.tag_function.Application
    Section     = var.tag_function.Section
    Service     = var.tag_function.Service 
  }
}
# ECR Policy

resource "aws_ecr_repository_policy" "ecr_policy" {
  repository = var.aws_ecr_repository 
  policy = file("${var.policies_file_path}/ecr_policies/${var.ecr_policy}")

  tags = {
    Name        = var.tag_function.Name
    Environment = var.tag_function.Environment
    Application = var.tag_function.Application
    Section     = var.tag_function.Section
    Service     = var.tag_function.Service 
  }
}

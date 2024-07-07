### ECR creation (image registry)
resource "aws_ecr_repository" "testapp" {
  name = var.ecr_name
}
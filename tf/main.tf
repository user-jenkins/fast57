provider "aws" {
  region = "us-west-2"
}
resource "aws_eks_cluster" "fast57-eks" {
  name     = "fast57-eks"
  role_arn = aws_iam_role.fast57-eks.arn
}
resource "aws_iam_role" "fast57-eks" {
  name        = "fast57-eks"
  description = "EKS Cluster Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]
  })
}
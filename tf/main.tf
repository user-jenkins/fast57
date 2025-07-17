provider "aws" {
  region = "us-west-2"
}
resource "aws_eks_cluster" "fast57" {
  name     = "fast57-eks-cluster"
  role_arn = aws_iam_role.fast57.arn
  vpc_config {
    subnet_ids = [aws_subnet.fast57.id]
  }
}

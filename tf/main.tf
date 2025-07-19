provider "aws" {
  region = "us-west-2"
}
resource "aws_eks_cluster" "fast57" {
  name     = "fast57-eks"
  role_arn = aws_iam_role.fast57.arn
}

provider "aws" {
  region = "us-west-2"
}
resource "aws_eks_cluster" "fast57-eks" {
  name     = "fast57-eks-cluster"
  role_arn = aws_iam_role.fast57-eks.arn
  depends_on = [
    aws_iam_role_policy_attachment.fast57-eks-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.fast57-eks-AmazonEKSVPCResourceController
  ]
}
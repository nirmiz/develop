data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster_auth" "eks-cluster" {
  name = aws_eks_cluster.eks-cluster.name
}
data "aws_eks_cluster" "eks-cluster" {
  name = aws_eks_cluster.eks-cluster.name
}

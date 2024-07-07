data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster" "ekscluster" {
  name = aws_eks_cluster.ekscluster.name
}
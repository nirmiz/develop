terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
  backend "s3" {
    bucket  = "tf-state-mizrahi"
    key     = "terraform.tfstate"
    region  = var.region
    profile = var.AWS_PROFILE
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
}

provider "aws" {
  region  = var.region
  profile = var.AWS_PROFILE
}

provider "kubectl" {
  host                   = aws_eks_cluster.eks-cluster.endpoint
  cluster_ca_certificate = base64decode(aws_eks_cluster.eks-cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks-cluster.token
  load_config_file       = false
}



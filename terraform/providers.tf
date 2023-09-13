terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket  = "tf-state-mizrahi"
    key     = "terraform.state"
    region  = "eu-central-1"
    profile = "nir_mizrahi"
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
  region  = "eu-central-1"
  profile = "nir_mizrahi"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }
  backend "s3" {
    bucket  = "tf-state-mizrahi"
    key     = "terraform.tfstate"
    region  = "eu-central-1"
    profile = "nirmizrahi"
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
  profile = "nirmizrahi"
}
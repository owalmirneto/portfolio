terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "pg" {}
}

provider "aws" {
  region  = local.aws_region
  profile = local.aws_profile
}

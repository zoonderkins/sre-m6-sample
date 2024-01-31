terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


variable "region" {
  type = string
}

variable "role_arn" {
  type = string
}

provider "aws" {
  region  = var.region
  assume_role {
    role_arn = var.role_arn
  }
}

resource "aws_s3_bucket" "sre-m6-oidc-bucket-asdf" {
    bucket = "sre-m6-test-bbbb"
    acl    = "private"
    tags = {
        Name = "sre-m6-oidc-bucket-asdf"
    }
}
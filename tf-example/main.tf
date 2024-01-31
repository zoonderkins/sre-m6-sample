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
  region  = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::623152967016:role/oidc-Role-cvLK9cI4WdO5"
  }
}

resource "aws_s3_bucket" "sre-m6-oidc-bucket-asdf" {
    bucket = "sre-m6-test-bbbb"
    acl    = "private"
    tags = {
        Name = "sre-m6-oidc-bucket-asdf"
    }
}
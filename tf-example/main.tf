terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "sre-m6-oidc-bucket-123412341234" {
    bucket = "sre-m6-test-12341234"
    acl    = "private"
    tags = {
        Name = "sre-m6-oidc-bucket-asdfasdf"
    }
}
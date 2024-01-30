terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
}
}


provider "aws" {
  region  = "us-east-2"
}

resource "aws_s3_bucket" "sre-m6-test-qoiwueropasdc" {
    bucket = "sre-m6-bucket-1234567890"
    acl    = "private"
    tags = {
        Name = "sre-m6-oidc-bucket-asdf"
    }
}
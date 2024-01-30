provider "aws" {
  region  = "us-east-2"
}

resource "aws_s3_bucket" "sre-m6-oidc-bucket-asdf" {
    bucket = ${var.bucket_name}
    acl    = "private"
    tags = {
        Name = "sre-m6-oidc-bucket-asdf"
    }
}
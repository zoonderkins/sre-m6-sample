provider "aws" {
  region  = "us-east-2"
}

resource "aws_s3" "sre-m6-oidc-bucket-asdf" {
    bucket = variable.bucket_name
    acl    = "private"
    tags = {
        Name = "sre-m6-oidc-bucket-asdf"
    }
}
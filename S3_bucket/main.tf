terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "s3-test-nguyenle" {
  bucket = "s3-test-nguyenle"
  force_destroy = true

  versioning {
    enabled = true
  }
}
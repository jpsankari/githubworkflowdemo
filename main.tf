terraform {
  backend "s3" {
    bucket = "sankaris3bucket"       # Replace with your existing bucket name
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "sankaris3bucket-123456"  # Change to a globally unique name
  acl    = "private"
}
terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "my-terraform-tfstate-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

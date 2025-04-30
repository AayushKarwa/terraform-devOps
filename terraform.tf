terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.96.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-bucket-2029"
    key = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-state-table"
  }
}
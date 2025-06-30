terraform {
  # Assumes S3 bucket and DynamoDB table already set up
  backend "s3" {
    bucket         = "aws-ecs-terraform-tfstate-2025-su"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "aws-ecs-terraform-tfstate-locking"
    encrypt        = true
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.1"
    }
  }
}

provider "aws" {
  region = local.region
}
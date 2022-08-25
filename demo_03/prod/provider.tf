terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket          = "terraform-state-202208"
    key             = "demo_03/prod/state.tfstate"
    region          = "us-east-1"
    dynamodb_table  = "terraform-state-lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0" # terraform aws provider version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
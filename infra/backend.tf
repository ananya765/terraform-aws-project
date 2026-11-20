terraform {
  required_version = ">= 1.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket       = "tfstate-ananya-2026-58391"
    key          = "AKIAWYE7LSMMIWMBSKTD"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true   # S3-native locking (no DynamoDB needed on TF >= 1.10)
  }
}

provider "aws" {
  region = var.region
}
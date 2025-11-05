terraform {

  backend "s3" {
    bucket         = "amit-roche-tf-buck"
    key            = "dev/amit/terraform.tfstate"
    dynamodb_table = "amit-roche-tb1"
    region         = "ap-southeast-2"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # region location info
  region = "ap-southeast-2"
}


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

# calling module 

module "my-amit-module-ec2" {
    source = "./modules/ec2"
    amit-ami-id = "ami-0a25a306450a2cba3"
    vm-name = "amit-vmby-module"
    vm-size = "t2.nano"
    ec2-key-name = "amitkeyby-mode"
    private-key-algo = "RSA"
    key-size = 4096
    my-vpc-id = "vpc-02d56e9aa1ce2f114"
    my-sec-group-name = "amit-bymode-sec"
    novm = 2
  
}
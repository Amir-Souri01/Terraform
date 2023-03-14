terraform {


  backend "s3" {
    bucket = "terraform-bucket-007"
    key    = "build/airflow/terraform.tfstate"
    region = "us-east-1"
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider

provider "aws" {

  region = "us-east-1"
  #
}


resource "aws_vpc" "vpc-01" {

  cidr_block = "10.10.0.0/24"

}
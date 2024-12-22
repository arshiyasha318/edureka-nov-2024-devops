terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "***"
  secret_key = "***"
}



//create vpc
resource "aws_vpc" "devops-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "devops-vpc"
  }
}


//create subnets


//create ec2 instance

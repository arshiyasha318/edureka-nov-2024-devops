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



//create vpc1
resource "aws_vpc" "devops-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "devops-vpc"
  }
}


//create subnet 1
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.devops-vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "subnet1"
  }
}

//create subnet 2
resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.devops-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet2"
  }
}


//create ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-053b12d3152c0cc71"
  instance_type           = var.instance_type
  key_name = "aws-key-oct-2024"
  subnet_id = aws_subnet.subnet3.id
  tags = {
    Name = "thanos-server"
  }
}

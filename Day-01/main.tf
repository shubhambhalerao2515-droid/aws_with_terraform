terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "example" {
  ami           = "ami-0b40571b9c2387b15"
  instance_type = "t3.micro"
  subnet_id = "subnet-03b79abe24b4c39c1"

  tags = {
    Name = "ec2_instance_tf"
  }
}
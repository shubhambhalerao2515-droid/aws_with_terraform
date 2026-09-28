terraform {
  backend "s3" {
    bucket = "aws-terraform-remote-bakend" #this the s3 bucket name
    key    = "compute/fctp/dev/test/terraform.tfstate"
    region = "ap-south-1"
  }
}
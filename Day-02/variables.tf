variable "instance_ami_id" {
    type = string
  default = "ami-0b40571b9c2387b15"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "subnet_id" {
  type = string
  default = "subnet-0010deb7ac02411c2"
}
variable "environment" {
  type = string
  default = "dev"
}
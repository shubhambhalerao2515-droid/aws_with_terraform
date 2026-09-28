resource "aws_instance" "example" {
  ami           = var.instance_ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  associate_public_ip_address = true


  tags = {
    Name = "${var.environment}-web-server-01"
    Environment = var.environment
  }
}
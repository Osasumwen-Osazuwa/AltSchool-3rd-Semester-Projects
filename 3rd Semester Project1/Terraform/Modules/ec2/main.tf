variable "env" {}
variable "region" {}
variable "vpc_id" {}

provider "aws" {
  region = var.region
}

resource "aws_instance" "main" {
  ami             = "ami-0905a3c97561e0b69"  
  instance_type   = "t2.micro"
  subnet_id       = var.subnet_id
  key_name        = var.key_name
  security_group  = var.security_group

  tags = {
    Name = "${var.env}-ec2-instance"
  }
}

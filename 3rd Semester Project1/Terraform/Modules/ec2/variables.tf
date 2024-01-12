variable "vpc_id" {
  description = "ID of the VPC"
}

variable "env" {
  description = "Environment (dev, prod)"
}

variable "region" {
  description = "AWS region"
}

variable "subnet_id" {
  description = "ID of the subnet to launch the EC2 instance"
}

variable "key_name" {
  description = "Name of the key pair to use for the EC2 instance"
}

variable "security_group" {
  description = "ID of the security group for the EC2 instance"
}

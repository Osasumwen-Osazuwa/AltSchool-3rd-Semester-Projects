// Common variables

variable "env" {
  description = "Environment (dev, prod)"
}

variable "region" {
  description = "AWS region"
}

variable "vpc_id" {
  description = "ID of the VPC"
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

variable "docker_build_context" {
  description = "Path to the Docker build context"
}

variable "docker_image_name" {
  description = "Name for the Docker image"
}

variable "ansible_inventory" {
  description = "Path to the Ansible inventory file"
}

variable "ansible_playbook" {
  description = "Path to the Ansible playbook file"
}


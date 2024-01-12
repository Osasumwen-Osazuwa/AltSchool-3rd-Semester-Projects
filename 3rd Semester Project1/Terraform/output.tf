// Outputs for main configuration

output "vpc_id" {
  value = aws_vpc.main.id
}

output "instance_id" {
  value = aws_instance.main.id
}

output "docker_output" {
  value = "Example Docker Output"
}

output "ansible_output" {
  value = "Example Ansible Output"
}


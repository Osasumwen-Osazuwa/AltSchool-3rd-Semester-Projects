// Docker variables

variable "env" {
  description = "Environment (dev, prod)"
}

variable "docker_build_context" {
  description = "Path to the Docker build context"
}

variable "docker_image_name" {
  description = "Name for the Docker image"
}



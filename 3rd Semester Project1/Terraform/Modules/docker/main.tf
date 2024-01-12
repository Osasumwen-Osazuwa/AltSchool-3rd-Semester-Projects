// Docker configuration

resource "null_resource" "docker" {
  provisioner "local-exec" {
    command = "docker build -t project1 ."
  }

  depends_on = [
    module.ec2_dev,  
  ]
}



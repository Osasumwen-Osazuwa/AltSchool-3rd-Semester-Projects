// Ansible configuration

resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "ansible-playbook -i inventory.ini install-ansible.yml"
  }

  depends_on = [
    module.ec2_dev,  
  ]
}





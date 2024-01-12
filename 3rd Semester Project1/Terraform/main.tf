module "vpc_dev" {
  source = "./modules/vpc"
  env    = "dev"
  region = "eu-west-1"
}

module "vpc_prod" {
  source = "./modules/vpc"
  env    = "prod"
  region = "eu-central-1"
}

module "ec2_dev" {
  source         = "./modules/ec2"
  env            = "dev"
  region         = "eu-west-1"
  subnet_id      = subnet-0e0b1d0d0ef2df319  
  key_name       = project1a            
  security_group = sg-02ad36cbec8573e88  
}

module "ec2_prod" {
  source         = "./modules/ec2"
  env            = "prod"
  region         = "eu-central-1"
  subnet_id      = subnet-0c4c3f28f34e5465a  
  key_name       = project1b             
  security_group = sg-06d2683a0fdb3c4ef   
}

output "dev_instance_id" {
  value = module.ec2_dev.instance_id
}

output "prod_instance_id" {
  value = module.ec2_prod.instance_id
}

module "ansible_dev" {
  source = "./modules/ansible"
}

module "docker_dev" {
  source = "./modules/docker"
}











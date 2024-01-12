provider "aws" {
  region = "eu-west-2"  
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_elb" "web_elb" {
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  instances = aws_instance.ec2_instance[*].id
}

resource "null_resource" "export_ips" {
  provisioner "local-exec" {
    command = "echo ${join("\n", aws_instance.ec2_instance[*].public_ip)} > host-inventory"
  }
}

resource "aws_route53_zone" {
  name = "orama.click"  
}

resource "aws_route53_record" "terraform_test" {
  zone_id = aws_route53_zone.example.zone_id
  name    = "terraform-test"
  type    = "A"
  ttl     = "300"
  records = [aws_elb.web_elb.dns_name]
}





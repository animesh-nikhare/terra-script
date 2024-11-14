provider "aws" { 
  region = "us-west-1"
}

resource "aws_instance" "one" {
  count = 4
  ami = "ami-0a9271c49701613c1"
  instance_type = "t2.medium"
  key_name = "N.C-key"
  vpc_security_group_ids = ["sg-07d74320ae4e56d16"]
  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["Ansible", "Dev", "Test", "Monitoring"]
}

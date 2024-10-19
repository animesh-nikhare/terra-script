provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "example" {
  ami = "ami-0175bdd48fdb0973b"
  instance_type = "t2.micro"
  tags = {
    Name = "terra-jenkins"
    }
}

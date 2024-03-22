provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Amazon-linux-instance-2" {
  count            = 1
  ami              = "ami-0f403e3180720dd7e"
  instance_type    = "t2.medium"
  key_name         = "newkey"
  vpc_security_group_ids = [aws_security_group.allow_8080.id]
  tags = {
    name = "New-jenkins-server"
  }
}

data "aws_ami" "ami" {
  name_regex       = "Centos-*"
  owners           = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.ami.id
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ "sg-0bdb031df53cf61e0" ]
}

variable "instance_type" {}
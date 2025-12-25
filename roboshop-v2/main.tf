variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.small"
}

variable "security_groups" {
  default = ["sg-03df7f4a9485bc781"]
}

variable "zone_id" {
  default = "Z02655483UAEAXVIBG9GU"
}

variable "components" {
  default = {
    frontend ={ name = "frontend" }
    catalogue ={name = "catalogue" }
    mongodb ={ name = "mongodb" }
    user ={ name = "user" }
    redis ={ name = "redis" }
    cart ={ name = "cart" }
    mysql ={ name = "mysql" }
    shipping ={ name = "shipping" }
    payment ={ name = "payment" }
    rabbitmq ={ name = " rabbitmq" }
  }
}


resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null)}.learntechnoly.space"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null) ]
}

output "instances" {
  value = aws_instance.instance
}

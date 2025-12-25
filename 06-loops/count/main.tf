variable "components" {
  default = ["frontend", "mongodb", "catalogue"]
}

resource "aws_instance" "componen" {
  count = length(var.components)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03df7f4a9485bc781"]

  tags = {
    //Name = var.component[count.index]
    Name = element(var.components,count.index)
  }
}
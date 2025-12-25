variable "components" {
  default = [frontend", "mongodb", ]
}

# resource "aws_instance" "component" {
#   count = length(var.components)
#   ami           = "ami-09c813fb71547fc4f"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-03df7f4a9485bc781"]
#
#   tags = {
#     //Name = var.component[count.index]
#     Name = element(var.components,count.index)
#   }
# }

resource "aws_security_group" "allow_tls" {
  count = length(var.components)
  name        = element(var.components,count.index )




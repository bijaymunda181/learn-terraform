variable "security_groups" {
  default = ["sg-03df7f4a9485bc781"]
}

variable "zone_id" {
  default = "Z02655483UAEAXVIBG9GU"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    cart = {
      name = "cart"
      instance_type = "t3.micro"
    }
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
  }
}
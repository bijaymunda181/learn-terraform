module "print_ami" {
  source = "./local-module"
  instance_type = var.instance_type

}


output "print_ami" {
  value = module.print_ami
}

variable "instance_type" {
  default = "t3.micro"
}
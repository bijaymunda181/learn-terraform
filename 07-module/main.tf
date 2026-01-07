module "print_ami" {
  source = "./local-module"
}
output "print_ami" {
  value = "print-ami"
}
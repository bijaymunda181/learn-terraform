module "print_ami" {
  source = "./local-module"

}


output "print_ami" {
  value = module.print_ami
}
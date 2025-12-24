variable "fruits" {
  default = ["apple", "banana"]
}

output "fruit" {
 // value = var.fruits[2]
  value = element(var.fruits, 3)
}

variable "fruits_stock" {
  default = {
    apple = 100
  }
}

output "fruit_stock" {
  value = try(var.fruits_stock["kiwi"], 0)
}
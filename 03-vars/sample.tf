# plan variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

# List Variable
variable "fruits" {
  default = [
  "apple",
  "banana"
  ]
  // default = [ "apple", banana" ] // single line syntax
}

# Map Variable, Map of maps
variable "fruit_stock_with_prise" {
  default = {
    apple = {
      stock = 100
      price = 3
    }
    banana = {
      stock = 400
      price = 1
    }
  }
}

# Access a list Variable, List index Start From Zero
output "fruits_first" {
  value = var.fruits[0]
}

output "fruits_second" {
  value = var.fruits[1]
}

# Access Map Variable
output "fruit_stock_apple" {
  value = var.fruit_stock[apple]
}
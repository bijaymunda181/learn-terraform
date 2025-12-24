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
variable "fruit_stock_with_price" {
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

## Access Map Variable
output "fruit_stock_apple" {
  value = var.fruit_stock_with_price["apple"]["stock"]
}

output "fruit_price_apple" {
  value = var.fruit_stock_with_price["apple"]["price"]
}

output "fruit_stock_banana" {
  value = var.fruit_stock_with_price["banana"]["stock"]
}

output "fruit_price_banana" {
  value = var.fruit_stock_with_price["banana"]["price"]
}

# Variable Data Types
variable "fruit_details" {
  default = {
    apple = {
      stock = 100 # Number
      type = "washington" # String
      for_sale = true # Boolean
    }
  }
}


# Variable in a combination of any other string then it need to be with in ${}
output "fruit_details_apple" {
  value = "Apple Stock = ${var.fruit_details["apple"]["stock"]} , Apple type = ${var.fruit_details["apple"]["type"]}, Apple sale status = ${var.fruit_details["apple"]["for_sale"]}"
}

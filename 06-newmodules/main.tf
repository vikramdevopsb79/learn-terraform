variable "fruits" {}
module "main" {
  source = "./app"
  fruits = var.fruits
}
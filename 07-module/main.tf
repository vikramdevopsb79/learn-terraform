module "main" {
  source = "./app"
  fruits = var.fruits
}
variable "fruits"{}
output "test" {
  value = module.main.test
}

output "mo" {
  value = module.main.o
}
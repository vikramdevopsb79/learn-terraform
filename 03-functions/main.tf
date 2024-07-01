variable "fruits" {}
output "calculate" {
  value = "Apple price is - ${lookup(var.fruits["apple"],"quantity", 1)}, Banana Price is - ${lookup(var.fruits["banana"],"quality", 5 )}"
}
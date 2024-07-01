variable "fruits" {}
variable "fruits1" {}
output "calculate" {
  value = "Apple price is - ${lookup(var.fruits["apple"],"quantity", 1)}, Banana Price is - ${lookup(var.fruits["banana"],"quality", 5 )}"
}

output "fruitcount" {
  value = length(var.fruits1)
}
output "fruitindex" {
  value = index(var.fruits1, 2)
}
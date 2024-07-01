resource "null_resource" "test1" {
  count = length(var.fruits)
}
variable "fruits" {
  default = ["apple", "orange"]
}

#for each loop
resource "null_resource" "test2" {
  for_each = var.fruits1
}
variable "fruits1" {
  default = {
    apple = {}
    kiwi = {}

  }
}
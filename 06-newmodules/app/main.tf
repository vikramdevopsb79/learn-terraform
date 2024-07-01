variable "fruits" {}
resource "null_resource" "test" {
  count = var.fruits
}
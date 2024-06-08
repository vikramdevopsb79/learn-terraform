variable "fruits" {}
resource "null_resource" "test" {
  count = length(var.fruits)
}

output "test" {
  value = "Helloworld"
}
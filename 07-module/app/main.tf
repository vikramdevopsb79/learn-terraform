# variable "fruits" {}
# resource "null_resource" "test" {
#   count = length(var.fruits)
# }


# output "test" {
#   value = "Helloworld"
# }
#
# variable "l" {
#   default = "hi"
# }
# output "o" {
#   value = var.l
# }
output "file_path" {
  value = "filepath = ${file(path.module)}"
}
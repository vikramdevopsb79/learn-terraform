variable "y" {}
output "y" {
  value = var.y
}

variable "x" {
  default = 10
}
output "x" {
  value = var.x
}
variable "url" {}
output "url" {
  value = var.url
}
variable "l" {
  default = [
    10,
    20,
    false,
    "vikram"
  ]
}
output "l" {
  value = var.l[2]
}
output "concatenated_values" {
  value = "${tostring(var.l[0])}, ${tostring(var.l[1])}, ${tostring(var.l[2])}, ${var.l[3]}"
  description = "Concatenated values from the list variable l"
}
variable "m" {
  default = {
    course = "Devops"
    trainer = "sai"
  }
}
output "m" {
  value = var.m["course"]
  description = "course details are getting properly"
}
variable "env" {}
output "env" {
  value = var.env
}
variable "mao" {
  default = {
    course = {
      course1 = "devops"
      course2 = "aws"
    }
    trainers = {
      trainer1 = "siva"

    }
  }
}
output "m1" {
  value = var.mao["course"]
}
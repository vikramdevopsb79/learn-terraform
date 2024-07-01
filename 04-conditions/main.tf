variable "marks" {}

output "marks" {
  value = var.marks > 80 ? "First Class" : "SecondClass"
}
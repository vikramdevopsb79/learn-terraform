variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t3.micro"
    }

  }
}
variable "ami" {
  default = ""
}
variable "vpc_security_group_ids" {
  default = "[]"
}
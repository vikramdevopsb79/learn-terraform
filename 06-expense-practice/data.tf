data "aws_route53_zone" "main" {
  name         = "vikramdevops.store"
  private_zone = false
}


data "aws_security_group" "selected" {
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}
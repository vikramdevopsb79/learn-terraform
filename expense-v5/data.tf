data "aws_route53_zone" "main" {
  name         = "vikramdevops.store"
  private_zone = false
}

# output "zone" {
#   value = data.aws_route53_zone.main
# }
# to check really data is getting or not  from the hosted zone

data "aws_security_group" "allow-all" {
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

# output "sg" {
#   value = data.aws_security_group.allow-all
# }
#  to check really data is getting or not  from the security group
data "aws_route53_zone" "main" {
  name         = "vikramdevops.tech"
  private_zone = false
}

output "zone" {
  value = data.aws_route53_zone.main
}
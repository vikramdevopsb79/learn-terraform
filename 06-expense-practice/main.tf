module "source" {
  for_each = var.components
  source = "./sample"
  ami           = data.aws_ami.ami.id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.selected.id]
  name = each.key
  zone_id = data.aws_route53_zone.main.zone_id
}

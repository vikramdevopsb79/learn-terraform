module "source" {
  for_each = var.components
  source = "./app"
  ami           = var.ami
  instance_type =  each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = each.key
  }
}
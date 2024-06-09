resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    name = var.name
  }
  provisioner "local-exec" {
    command = "sleep 120; cd /home/ec2-user/expense-ansible ; ansible-playbook -i ${self.private_ip}, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=${var.name} -e env=dev expense.yml"
  }
}
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.vikramdevops.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.node.private_ip]
}
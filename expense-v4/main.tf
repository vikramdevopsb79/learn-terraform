resource "aws_instance" "ec2-nodes" {
  for_each = var.components
  ami           = "ami-090252cbe067a9e58"
  instance_type = try(each.value["instance_type"],null) == null ? "t3.small": each.value["instance_type"]
  vpc_security_group_ids = ["sg-05035daeb4cb1fd3b"]
  tags = {
    Name = each.key
  }
}


variable "components" {
  default = {
    frontend = {
    }
    backend = {
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}


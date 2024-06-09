resource "aws_instance" "ec2-nodes" {
  for_each = var.components
  ami           = "ami-031d574cddc5bb371"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = ["sg-05035daeb4cb1fd3b"]
  tags = {
    Name = each.key
  }
}


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

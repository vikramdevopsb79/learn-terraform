resource "aws_instance" "ec2-nodes" {
  count =  length(var.components)
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-05035daeb4cb1fd3b"]

tags = {
    Name = var.components[count.index]
  }
}
variable "components" {
  default =  ["frontend", "backend", "mysql"]
}


variable "fruits" {
  default = {
    apple = {}
    banaana = {}
    orange = {}

  }
}
resource "null_resource" "test" {
  for_each = var.fruits
}
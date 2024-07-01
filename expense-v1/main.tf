resource "aws_instance" "web" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-05035daeb4cb1fd3b"]

  tags = {
    Name = "Frontend"
  }

}
resource "aws_instance" "web2" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-05035daeb4cb1fd3b"]

  tags = {
    Name = "mysql"
  }

}
resource "aws_instance" "web3" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-05035daeb4cb1fd3b"]

  tags = {
    Name = "Backend"
  }

}
resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "vikramdevopsbucket"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
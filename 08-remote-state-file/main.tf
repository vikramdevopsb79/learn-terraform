resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "vikramdevopsbucket1"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
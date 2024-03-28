terraform {
  backend "s3" {
    bucket = "buckt-tf-states"
    key    = "test1/file"
    region = "us-east-1"
  }
}
resource "null_resource" "test" {}

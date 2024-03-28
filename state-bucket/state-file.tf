terraform {
  backend "s3" {
    bucket = "bknd-state-file"
    key    = "test1/file"
    region = "us-east-1"
  }
}
//resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "buckt-tf-states"
    key    = "test1/file"
    region = "US East (N. Virginia) us-east-1"
  }
}

terraform {
  backend "s3" {
    bucket = "bknd-state-file"
    key    = "tools/files"
    region = "us-east-1"
  }
}

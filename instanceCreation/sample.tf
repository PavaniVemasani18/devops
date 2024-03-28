resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instancetype
  vpc_security_group_ids = [data.aws_security_group.security.id]
}
variable "ami" {}
variable "instancetype"{}

data "aws_security_group" "security"{
  name="allow-all"
}
output "demo" {
  value = data.aws_security_group.security.id
}
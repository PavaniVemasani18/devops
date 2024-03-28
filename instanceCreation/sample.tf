resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instancetype
  vpc_security_group_ids = [data.aws_security_group.security.id]
  tags = {
    name = var.instanceName
  }
}
variable "ami" {}
variable "instancetype"{}
variable "instanceName"{}

data "aws_security_group" "security"{
  name="allow-all"
}
output "demo" {
  value = data.aws_security_group.security.id
}
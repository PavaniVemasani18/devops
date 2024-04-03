resource "aws_instance" "prometheus" {
  ami = var.aws_ami
  instance_type = var.aws_instanceType
  vpc_security_group_ids = [data.aws_security_group.security.id]
  tags = {
    Name = var.tools_name
  }
}
data "aws_security_group" "security" {
  name = "allow-all"
}

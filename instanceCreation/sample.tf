resource "aws_instance" "test" {
  ami = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.security.id]
}
data "aws_security_group" "security"{
  name="allow-all"
}

output "demo" {
  value = data.aws_security_group.security.id
}
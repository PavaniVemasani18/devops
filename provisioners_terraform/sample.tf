resource "aws_instance" "page" {
  ami = "ami-036c2987dfef867fb"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.security.id]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "dnf install nginx",
      "systemctl start nginx"
    ]
  }

}
data "aws_security_group" "security" {
  name = "allow-all"
}
 resource "aws_instance" "frontend" {
   ami = data.aws_ami.aws
   instance_type = var.instanceType
   vpc_security_group_ids = [data.aws_security_group.security.id]

 }

 resource "null_resource" "test" {
   provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = var.sshUser
      password = var.sshPass
      host     = aws_instance.frontend.public_ip
    }
    inline = [
      "sudo dnf install nginx",
      "sudo systemctl start nginx"
    ]
  }

 }
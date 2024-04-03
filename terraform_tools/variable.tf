variable "tools" {
  default = {
    promotheus = {
      ami = var.ami
      instance_type=var.instanceType
    }
  }
}

variable "ami" {
  default = "ami-05f020f5935e52dc4"
}
variable "instanceType"{
  instance_type="t3.small"
}

output "ami" {
  value = var.tools.promotheus.ami

}
output "instance_type" {
  value = var.tools.promotheus.instance_type
}

// here key is a "promotheus" value is a instance_type
//load the values form main.tfvars

variable "tools" {
  default = {
    promotheus = {
      ami = "ami-05f020f5935e52dc4"
      instance_type="t3.small"
    }
  }
}

variable "ami" {}
variable "instanceType"{}


output "ami" {
  value = var.tools.promotheus.ami

}
output "instance_type" {
  value = var.tools.promotheus.instance_type
}

// here key is a "promotheus" value is a instance_type
//load the values form main.tfvars

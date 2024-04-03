variable "tools" {
  default = {
    promotheus = {
      ami = var.ami
      instance_type=var.instanceType
    }
  }
}
variable "ami" {}
variable "instanceType"{}


output "ami" {
  value = var.ami

}
output "instance_type" {
  value = var.instanceType
}
// here key is a "promotheus" value is a instance_type
//load the values form main.tfvars

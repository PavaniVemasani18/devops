//module "prometheus" {
//  for_each = var.tools
//  source = "./modules/app"
//  tools_name = each.key
//  aws_ami = each.value
//  aws_instanceType = each.value
//}
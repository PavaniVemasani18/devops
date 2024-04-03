module "prometheus" {
  for_each = var.tools
  source = "./modules/app"
  tools_name = each.key
  ami = each.value
  instance_type = each.value
}
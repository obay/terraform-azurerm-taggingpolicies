module "required_tags_on_resource_group" {
  source                   = "./required_tags_on_resource_group"
  location                 = var.location
  root_management_group_id = var.root_management_group_id
}

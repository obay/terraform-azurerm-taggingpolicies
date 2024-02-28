module "inherited_custom_tags_inherited_from_resource_group" {
  source                   = "./inherited_custom_tags_inherited_from_resource_group"
  location                 = var.location
  root_management_group_id = var.root_management_group_id
}

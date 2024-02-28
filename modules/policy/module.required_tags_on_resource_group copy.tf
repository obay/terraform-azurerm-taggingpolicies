module "required_tags_on_resources" {
  source                   = "./required_tags_on_resources"
  location                 = var.location
  root_management_group_id = var.root_management_group_id
}

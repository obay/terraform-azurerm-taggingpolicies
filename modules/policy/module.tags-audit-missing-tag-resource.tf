module "tags-audit-missing-tag-resource" {
  source                   = "./tags-audit-missing-tag-resource"
  location                 = var.location
  root_management_group_id = var.root_management_group_id
}

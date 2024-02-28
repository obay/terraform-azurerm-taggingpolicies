module "policy" {
  source                   = "./modules/policy"
  location                 = var.location
  root_management_group_id = data.azurerm_management_group.root_management_group.id
}

resource "azurerm_management_group_policy_assignment" "required_tags_on_resource_group" {
  name                 = "assignment2"
  display_name         = "Custom - Tags required on resource group"
  policy_definition_id = azurerm_policy_set_definition.required_tags_on_resource_group.id
  management_group_id  = var.root_management_group_id
  location             = var.location
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_management_group_policy_assignment" "inherited_custom_tags_inherited_from_resource_group" {
  name                 = "assignment1"
  display_name         = "Custom - Audit for required tags on resources"
  policy_definition_id = azurerm_policy_set_definition.inherited_custom_tags_inherited_from_resource_group.id
  management_group_id  = var.root_management_group_id
  location             = var.location
  identity {
    type = "SystemAssigned"
  }
}

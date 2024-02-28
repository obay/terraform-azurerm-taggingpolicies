resource "azurerm_management_group_policy_assignment" "audit_required_tags_on_resources" {
  name                 = "assignment4"
  display_name         = "Custom - Audit for required tags on resources"
  policy_definition_id = azurerm_policy_set_definition.audit_required_tags_on_resources.id
  management_group_id  = var.root_management_group_id
  location             = var.location
  identity {
    type = "SystemAssigned"
  }
}

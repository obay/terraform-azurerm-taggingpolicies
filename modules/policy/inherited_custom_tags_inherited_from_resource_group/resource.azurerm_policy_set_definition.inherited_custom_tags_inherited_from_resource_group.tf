resource "azurerm_policy_set_definition" "inherited_custom_tags_inherited_from_resource_group" {
  name                = "custom-tags-inherited-from-resource-group"
  policy_type         = "Custom"
  display_name        = "Custom - Inherited tags from resource group if missing"
  management_group_id = var.root_management_group_id

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ea3f2387-9b95-492a-a190-fcdc54f7b070"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Environment"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ea3f2387-9b95-492a-a190-fcdc54f7b070"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Owner"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ea3f2387-9b95-492a-a190-fcdc54f7b070"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "ProjectName"
          }
        }
    VALUE
  }
}

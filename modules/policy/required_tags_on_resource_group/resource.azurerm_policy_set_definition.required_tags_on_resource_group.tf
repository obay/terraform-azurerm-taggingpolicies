resource "azurerm_policy_set_definition" "required_tags_on_resource_group" {
  name                = "required-tags-on-resource-group"
  policy_type         = "Custom"
  display_name        = "Custom - Tags required on resource group"
  management_group_id = var.root_management_group_id

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/96670d01-0a4d-4649-9c89-2d3abc0a5025"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Environment"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/96670d01-0a4d-4649-9c89-2d3abc0a5025"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Owner"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/96670d01-0a4d-4649-9c89-2d3abc0a5025"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "ProjectName"
          }
        }
    VALUE
  }
}

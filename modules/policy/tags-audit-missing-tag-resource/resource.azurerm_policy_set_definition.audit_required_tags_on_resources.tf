resource "azurerm_policy_set_definition" "audit_required_tags_on_resources" {
  name                = "audit-required-tags-on-resources"
  policy_type         = "Custom"
  display_name        = "Custom - Audit for required tags on resources"
  management_group_id = var.root_management_group_id

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.tags-audit-missing-tag-resource-createdby.id
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "CreatedBy"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.tags-audit-missing-tag-resource-department.id
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Department"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.tags-audit-missing-tag-resource-environment.id
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Environment"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.tags-audit-missing-tag-resource-owner.id
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Owner"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.tags-audit-missing-tag-resource-projectname.id
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "ProjectName"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.tags-audit-missing-tag-resource-purpose.id
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Purpose"
          }
        }
    VALUE
  }
}

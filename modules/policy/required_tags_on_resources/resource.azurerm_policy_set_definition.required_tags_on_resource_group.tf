resource "azurerm_policy_set_definition" "required_tags_on_resources" {
  name                = "required-tags-on-resources"
  policy_type         = "Custom"
  display_name        = "Custom - Tags required on resources"
  management_group_id = var.root_management_group_id

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "CreatedBy"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Department"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Environment"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Owner"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "ProjectName"
          }
        }
    VALUE
  }
  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/871b6d14-10aa-478d-b590-94f262ecfa99"
    parameter_values     = <<VALUE
    {
          "tagName": {
            "value": "Purpose"
          }
        }
    VALUE
  }
}

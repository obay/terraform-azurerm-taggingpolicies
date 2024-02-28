resource "azurerm_policy_definition" "tags-audit-missing-tag-resource-environment" {
  name                = "tags-audit-missing-tag-resource-environment"
  policy_type         = "Custom"
  mode                = "Indexed"
  display_name        = "Audit a tag on resources: Environment"
  management_group_id = var.root_management_group_id
  parameters          = <<PARAMETERS
{
  "tagName": {
    "type": "String",
    "metadata": {
      "displayName": "Tag Name",
      "description": "Name of the tag, such as 'environment'"
    }
  }
}
PARAMETERS
  policy_rule         = <<POLICY_RULE
{
  "if": {
    "field": "[concat('tags[', parameters('tagName'), ']')]",
    "exists": "false"
  },
  "then": {
    "effect": "audit"
  }
}
POLICY_RULE
}


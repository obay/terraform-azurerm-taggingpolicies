# Azure Tagging Policies

This repository contains a set of Azure Policy definitions that can be used to enforce tagging on Azure resources.

The policy is designed to be assigned to a managment group.

## Tagging Taxonomy

The policy is designed to enforce a specific tagging taxonomy. The taxonomy is as follows:

On the resource group, the following Tags must exist:
Owner: The owner of the resource
Environment: The environment the resource is deployed to
Project: The project that the resource is associated with

On the resources within the resource group, the following Tags must exist:
CreatedBy
Purpose
Department

All tags from the resource group will be inherited by the resources within the resource group if not defined on the resource.


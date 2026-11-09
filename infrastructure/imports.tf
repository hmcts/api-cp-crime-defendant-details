locals {
  administrators_product_group_ids = {
    "sps-api-mgmt-sbox" = "/subscriptions/bd2864ed-4f3e-45ed-9c6a-8d179674bab1/resourceGroups/rg-sps-platform-sbox/providers/Microsoft.ApiManagement/service/sps-api-mgmt-sbox/products/cp-crime-defendant-details/groups/administrators"
  }
}

# APIM auto-attaches the administrators group to every new product, so the
# first apply in each instance fails until that link is imported.
import {
  for_each = contains(keys(local.administrators_product_group_ids), var.api_mgmt_name) ? toset(["administrators"]) : toset([])
  to       = module.product.azurerm_api_management_product_group.access_control_groups[each.key]
  id       = local.administrators_product_group_ids[var.api_mgmt_name]
}
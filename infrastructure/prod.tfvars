api_mgmt_rg   = "rg-sps-platform-prod"
api_mgmt_name = "sps-api-mgmt-prod"

apim_product = {
  name                          = "cp-crime-defendant-details"
  subscription_required         = true
  subscriptions_limit           = 20
  approval_required             = false
  published                     = true
  product_access_control_groups = ["developers", "administrators", "guests"]
}

entra_tenant_id = "0d0315f6-3c04-4edb-ac37-b05f580cc122"
entra_client_id = "41cf9491-7fbe-4ece-a2d0-f253f9a60915"

apis = {
  defendantdetails = {
    openapi_spec_path = "../src/main/resources/openapi/openapi-spec.yml"
    display_name      = "Crime Defendant Details API (dl)"
    path              = "amp/dl"
    service_host      = "prdamp01-appgw.prd.lv.cjscp"
    service_path      = "/dl"
    revision          = "1"
  }
}

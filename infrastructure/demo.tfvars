api_mgmt_rg   = "rg-sps-platform-demo"
api_mgmt_name = "sps-api-mgmt-demo"

apim_product = {
  name                          = "cp-crime-defendant-details"
  subscription_required         = true
  subscriptions_limit           = 20
  approval_required             = false
  published                     = true
  product_access_control_groups = ["developers", "administrators", "guests"]
}

entra_tenant_id = "db827888-77df-4707-b3d9-24a3dfe32889"
entra_client_id = "c9cbc781-aa83-4701-a5c2-836db21027db"

apis = {
  defendantdetails = {
    openapi_spec_path = "../src/main/resources/openapi/openapi-spec.yml"
    display_name      = "Crime Defendant Details API (dl)"
    path              = "amp/dl"
    service_host      = "sitamp01-appgw.sit.nl.cjscp"
    service_path      = "/dl"
    revision          = "1"
  }
}
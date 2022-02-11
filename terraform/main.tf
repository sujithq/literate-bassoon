resource "azurerm_resource_group" "rg" {
  name     = join("-", ["rg", local.vs, local.env, "01"])
  location = "westeurope"
}

resource "azurerm_resource_group" "rg" {
  name     = join("-", ["rg", local.vs, local.env, "01"])
  location = "westeurope"
}

resource "azurerm_storage_account" "st" {
  name                     = join("-", ["st", local.vs, local.env, "01"])
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_replication_type = "LRS"
  account_tier             = ""
}

terraform {
  required_version = "1.12.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3a734e32-021d-4243-89ff-c3495e6aa4da"
}


resource "azurerm_resource_group" "rg" {
  name     = "rg_abhi"
  location = "West US"
}

resource "azurerm_mssql_server" "ravi-sql-server" {
  depends_on = [ azurerm_resource_group.rg ]
  name                         = "abhiserver123"
  resource_group_name          = "rg_abhi"
  location                     = "West US"
  version                      = "12.0"
  administrator_login          = "adminusersql"
  administrator_login_password = "Abhi@123@123"
}
resource "azurerm_mssql_server" "ravi-sql-server1" {
  depends_on = [ azurerm_resource_group.rg ]
  name                         = "abhiserver1234"
  resource_group_name          = "rg_abhi"
  location                     = "West US"
  version                      = "12.0"
  administrator_login          = "adminusersql"
  administrator_login_password = "Abhi@123@123"
}

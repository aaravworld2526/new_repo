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

# This Terraform configuration sets up Azure resources for a basic SQL Server deployment.
# It specifies the required Terraform and provider versions, authenticates to Azure,
# creates a resource group, and provisions an Azure SQL Server instance.
# You can extend this configuration by adding databases, firewall rules, or other resources as needed.
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


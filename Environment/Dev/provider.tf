terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
backend "azurerm" {
    resource_group_name = "Apple"
    tenant_id            = "ecc8db67-d45e-4b38-9f31-423f3b5ca490"  
    storage_account_name = "stgactionmode"                             
    container_name       = "stgcontainer121"  
    key                  = "prod.terraform.tfstate"                             
  }
  
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "f732a1d0-ce01-4a76-a731-84b6a6286211"
}

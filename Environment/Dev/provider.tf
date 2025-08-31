terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
backend "azurerm" {
    resource_group_name = "Infra-RG"
    tenant_id            = "2e038d55-8828-4c61-9bd1-862031ee51bb"  
    storage_account_name = "infrastorage143"                             
    container_name       = "infracontainer"  
    key                  = "terraform.tfstate"                             
  }
  
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "07181b5e-cb73-4072-8605-0c0f9f4ae28f"
}

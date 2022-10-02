terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.25.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "rg_tf_remote_state"
      storage_account_name = "tfazurebarpodremotestate"
      container_name       = "terraform-state"
      key                  = "terraform.tfstate"
  }
}

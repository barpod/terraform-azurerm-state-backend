provider "azurerm" {
  features {}
}

module "tf-remote-state" {
    source = "../../modules/tf-remote-state"

    resource_group_name=var.resource_group_name
    location=var.location
    storage_account_name=var.storage_account_name
    storage_container_name=var.storage_container_name
    storage_account_tier=var.storage_account_tier
    storage_account_replication_type=var.storage_account_replication_type
    storage_account_access_tier=var.storage_account_access_tier
    storage_container_access_type=var.storage_container_access_type
}
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "epicbooktfstate01dob" # Update this to the name that worked
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
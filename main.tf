# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgtest" {
  name     = "sandbox3-test"
  location = "West US 2"
  
  tags = {
    environment = "Test"
	app = "rtc"
  }
}
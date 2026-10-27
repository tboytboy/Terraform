terraform {
  required_version = ">= 1.4.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0, < 5.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

resource "azurerm_network_interface" "vm" {
  name                = "${"<%=customOptions.VMName%>"}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                = <%=customOptions.VMName%>
  computer_name       = <%=customOptions.VMName%>
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = <%=customOptions.azureVMplan%>

  admin_username = var.admin_username
  admin_password = var.admin_password

  network_interface_ids = [
    azurerm_network_interface.vm.id
  ]

  source_image_id     = var.source_image_id
  secure_boot_enabled = true
  vtpm_enabled        = true

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }
}

output "vm_private_ip_address" {
  description = "The VM's private IPv4 address."
  value       = azurerm_network_interface.vm.private_ip_address
}

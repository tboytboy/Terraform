variable "resource_group_name" {
  description = "Existing resource group for the VM and network interface."
  type        = string
  default     = "Test-East-US2"
}

variable "location" {
  description = "Azure region for the VM and network interface."
  type        = string
  default     = "East US 2"
}

variable "subnet_id" {
  description = "Existing subnet to attach the VM network interface to."
  type        = string
  default     = "/subscriptions/04573a48-89a8-419c-9dc6-c951dcb6f612/resourceGroups/Test-East-US2/providers/Microsoft.Network/virtualNetworks/Test-East-US2/subnets/default"
}

variable "source_image_id" {
  description = "Shared image version ID for Windows25-TrustedLaunch."
  type        = string
  default     = "/subscriptions/da85fb0f-0270-45f2-8e70-e9dffa811bcd/resourceGroups/ThuanProject3-Test/providers/Microsoft.Compute/galleries/TestGallery/images/Windows25-TrustedLaunch/versions/0.0.1"
}

variable "vm_name" {
  description = "Name of the Windows virtual machine."
  type        = string
  default     = "win25-test-01"
}

variable "vm_size" {
  description = "Azure VM size. Standard_D2s_v5 provides 2 vCPUs and 8 GiB memory."
  type        = string
  default     = "Standard_D2s_v5"
}

variable "admin_username" {
  description = "Windows administrator username to configure during VM provisioning."
  type        = string
}

variable "admin_password" {
  description = "Windows administrator password to configure during VM provisioning."
  type        = string
  sensitive   = true
}

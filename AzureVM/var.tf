variable "client_id" {
  description = "Azure service principal application/client ID supplied by the Morpheus cloud Terraform profile."
  type        = string
}

variable "client_secret" {
  description = "Azure service principal client secret supplied by the Morpheus cloud Terraform profile."
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Deployment subscription ID supplied by the Morpheus cloud Terraform profile."
  type        = string
}

variable "tenant_id" {
  description = "Microsoft Entra tenant ID supplied by the Morpheus cloud Terraform profile."
  type        = string
}

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
  description = "Shared image version ID for Windows2025-TrustedLaunch."
  type        = string
}

variable "vm_name" {
  description = "Name of the Windows virtual machine."
  type        = string
  default     = "win25-test-01"
}

variable "vm_size" {
  description = "Azure VM size. Standard_D2ls_v7 provides 2 vCPUs and 4 GiB memory."
  type        = string
  default     = "Standard_D2ls_v7"
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

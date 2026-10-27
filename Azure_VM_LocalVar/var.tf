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

variable "vm_size" {
  description = "Azure VM SKU compatible with the selected image's disk controllers and available regional quota."
  type        = string
}

variable "admin_username" {
  description = "Windows administrator username to configure during generalized VM provisioning."
  type        = string
}

variable "admin_password" {
  description = "Windows administrator password supplied through a secure Morpheus input."
  type        = string
  sensitive   = true
}

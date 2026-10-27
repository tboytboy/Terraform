// Morpheus renders these option inputs before Terraform runs.
locals {
  vm_name             = "<%= customOptions.VMName %>"
  resource_group_name = "<%= customOptions.resourceGroupName %>"
  location            = "<%= customOptions.azureLocation %>"
  subnet_id           = "<%= customOptions.azureSubnetId %>"
  source_image_id     = "<%= customOptions.azureImageId %>"
}

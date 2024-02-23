# Output the public IP addresses of the virtual machines

data "azurerm_public_ip" "example" {
  count               = var.vm_count
  name                = "example-public-ip-${count.index}"
  resource_group_name = var.resource_group_name
  depends_on = [ azurerm_public_ip.example ]
}

output "public_ip_addresses" {
  value      = [for idx in range(var.vm_count) : azurerm_public_ip.example[idx].ip_address]
  depends_on = [data.azurerm_public_ip.example]
}

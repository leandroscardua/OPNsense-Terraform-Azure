resource "azurerm_linux_virtual_machine" "opnsense" {
  name                = "opnsense"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = ""
  admin_username      = var.opn_user_name
  admin_password      = var.opn_user_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.opnsense-nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = ""
    offer     = ""
    sku       = ""
    version   = ""
  }
}
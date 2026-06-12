resource "azurerm_windows_virtual_machine" "vmw" {
  for_each            = var.windows
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = each.value.username
  admin_password      = each.value.password
  network_interface_ids = [each.value.network_interface_ids]
    


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2025-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_linux_virtual_machine" "vml" {
  for_each            = var.linux
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = each.value.username
  admin_password      = each.value.password
  disable_password_authentication = false
  network_interface_ids = [each.value.network_interface_ids]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
  offer     = "ubuntu-24_04-lts"
  sku       = "ubuntu-pro"
  version   = "latest"
  }
}
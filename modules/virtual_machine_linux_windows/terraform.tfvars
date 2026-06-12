
windows = {
  vm1 = {
    name                  = "vm-jassi-win"
    rg_name               = "RAW"
    location              = "Central India"
    size                  = "Standard_D2s_v3"
    username              = "jassinuser"
    password              = "jassivm@345678"
    network_interface_ids = "/subscriptions/ec4e0908-f827-4232-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/networkInterfaces/jassi-nic"
  }
}
linux = {
  vm2 = {
    name     = "vm-dakait-linux"
    rg_name  = "RAW"
    location = "Central India"
    size     = "Standard_D2s_v3"
    username = "dakaitnuser"
    password = "jassivm@345678"
    network_interface_ids  = "/subscriptions/ec4e0908-f827-4232-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/networkInterfaces/dakait-nic"
  }
}







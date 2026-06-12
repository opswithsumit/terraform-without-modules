nics = {
  nic1 = {
    name     = "jassi-nic"
    location = "Central India"
    rg_name  = "RAW"

    ip_configuration = {
      name                          = "jassi"
      subnet_id                     = "/subscriptions/ec4e0908-f827-4232-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/virtualNetworks/vnet1-dhurandhar-one/subnets/subnet-hamza"
      private_ip_address_allocation = "Dynamic"

    }
  }
  nic2 = {
    name     = "dakait-nic"
    location = "Central India"
    rg_name  = "RAW"
    ip_configuration = {
      name                          = "Dakait"
      subnet_id                     = "/subscriptions/ec4e0908-f827-4232-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/virtualNetworks/vnet2-dhurandhar-two/subnets/subnet-rehman"
      private_ip_address_allocation = "Dynamic"
    }
  }
}
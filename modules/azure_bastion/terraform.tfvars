alam = {
  bast = {
    name             = "AzureBastionSubnet"
    rg_name          = "RAW"
    vnet_name        = "vnet1-dhurandhar-one"
    address_prefixes = ["10.15.3.0/24"]
  }
}


pips = {
  pip1 = {
    name              = "dhurandhar-ip"
    location          = "Central India"
    rg_name           = "RAW"
    allocation_method = "Static"
    sku               = "Standard"
  }
}

bastions = {
  bastion1 = {
    name                 = "bastion-sp-aslam"
    location             = "Central India"
    resource_group_name  = "RAW"
    config               = "configuration"
    #subnet_id            = "/subscriptions/ec4e0908-f827-4132-8415-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/networkInterfaces/"
    #public_ip_address_id = "/subscriptions/ec4e0908-f827-4132-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/networkInterfaces"
  }
}
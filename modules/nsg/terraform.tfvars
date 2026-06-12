nsgs = {
  nsg1 = {
    name     = "jassi-nsg"
    location = "Central India"
    rg_name  = "RAW"

    security_rule = {
      name                       = "hamza-rule"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "3389"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }

  }

  nsg2 = {
    name     = "dakait-nsg"
    location = "Central India"
    rg_name  = "RAW"

    security_rule = {
      name                       = "dakait-rule"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }

}
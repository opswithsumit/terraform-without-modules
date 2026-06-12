resource "azurerm_subnet" "bastion-subnet" {
  for_each             = var.alam
  name                 = each.value.name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_public_ip" "pip" {
  for_each            = var.pips
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}
resource "azurerm_bastion_host" "bastion" {

  for_each            = var.bastions
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = each.value.config
    subnet_id            = azurerm_subnet.bastion-subnet["bast"].id
    public_ip_address_id = azurerm_public_ip.pip["pip1"].id
  }
}
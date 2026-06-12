peers = {
  peer1 = {
    name           = "jassi-peer"
    rg_name        = "RAW"
    vnet_name      = "vnet1-dhurandhar-one"
    remote_vnet_id = "/subscriptions/ec4e0908-f827-4232-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/virtualNetworks/vnet2-dhurandhar-two"
  }
  peer2 = {
    name           = "dakait-peer"
    rg_name        = "RAW"
    vnet_name      = "vnet2-dhurandhar-two"
    remote_vnet_id = "/subscriptions/ec4e0908-f827-4232-8515-290ee500dad5/resourceGroups/RAW/providers/Microsoft.Network/virtualNetworks/vnet1-dhurandhar-one"
  }
}
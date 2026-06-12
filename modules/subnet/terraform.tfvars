subnets = {
  snet1 = {
    name             = "subnet-hamza"
    rg_name          = "RAW"
    vnet_name        = "vnet1-dhurandhar-one"
    address_prefixes = ["10.15.1.0/24"]
  }
  snet2 = {
    name             = "subnet-rehman"
    rg_name          = "RAW"
    vnet_name        = "vnet2-dhurandhar-two"
    address_prefixes = ["10.16.2.0/24"]
  }
}
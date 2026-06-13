# single map  name = each.key and location = each.value

#rgs = {
  
   # rg_csk  = "Central India"
   # rg-rcb = "Central India"
   # rg-dc = "westus"
 # }  */            




# rgs = ["rg1","rg2","rg3"]   -------this is list with toset(var.rgs)


# nested map   name = each.value.rg_name and locatio = each.value.location
rgs = {
  rg1 = {
    rg_name = "DON"
    location = "Central India"
  }
  rg2 = {
    rg_name = "SAW"
    location = "westus"
  }
} 
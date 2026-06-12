This basic landing zone project is created by not using modules concept , Insted we have used differnt folder struture for each resoucres.
Created first RG-RAW
Inside it Two differnt VNETS
In each VNET one differnt subnets
Creatd NIC for both VM
Inside Subnet created Windows and Linux VM and attched NIC id to it 
Created NSG rules for both VM subnets for inbound and outbound traffic 
Created VNET peering between two VNETS
Created Azurebastionsubnet and bastion and public IP 
<img width="500" height="199" alt="image" src="https://github.com/user-attachments/assets/32a19162-b5ea-470b-a838-dc31d02d986a" />

**Traffic Flow Breakdown**
1. External Access to Bastion:
The flow begins with external users initiating a secure connection to the bastion host. Azure Bastion is typically used to provide secure RDP/SSH access to virtual machines without exposing them to the public internet.
2. Bastion to First VM (`vm-jassi`):
The bastion host routes the traffic into the first virtual network, VNET-Dhurandhar-one (address space `10.15.0.0/16`). The traffic enters subnet-hamza and connects to the virtual machine named vm-jassi through its network interface (nic1). In this setup, `vm-jassi` acts as a jumpbox or intermediate machine.
3. Cross-Network Communication (VNET Peering):
For `vm-jassi` to communicate with the second virtual machine, the traffic must cross network boundaries. It travels over a VNET peering connection, which securely bridges `VNET-Dhurandhar-one` and `VNET-Dhurandhar-two` using Microsoft's private network backbone.
4. First VM to Second VM (`vm-dakait`):
After crossing the VNET peering, the traffic enters the second virtual network, *VNET-Dhurandhar-two (address space `10.16.0.0/16`). It is routed into subnet-rehman, finally reaching the target Linux virtual machine, vm-dakait, via its network interface (nic2).
Resource Group: All of the interconnected resources are organized within a single Resource Group named rg-raw
Security: Both virtual networks feature a Network Security Group (NSG) attached to them. These NSGs act as virtual firewalls, ensuring that only authorized traffic (like the flow described above) is permitted to pass through the subnets and network interfaces.

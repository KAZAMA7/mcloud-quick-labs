# Define variables
variable "location" {
  description = "The Azure region to deploy the resources"
  default     = "East US" # Update with your desired region
}

variable "vm_count" {
  description = "Number of virtual machines to create"
  default     = 3 # Update with your desired number of VMs
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  default     = "adminuser" # Update with your desired admin username
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  default     = "Puppet@123" # Update with your desired admin password
}

variable "resource_group_name" {
  type    = string
  default = null
}

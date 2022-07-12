resource "azurerm_container_group" "containergroup" {
  name                = var.container_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Public"
  os_type             = "Linux"
 
  container {
    name   = var.container_name
    image  = var.image_name
    cpu    = var.cpu_core_number
    memory = var.memory_size

    ports {
        port     = var.port_number-1
        protocol = "TCP"
      }
    ports {
        port     = var.port_number-2
        protocol = "TCP"
      }

    volume {
      name                 = "jenkins-volume"
      mount_path           = "/var/jenkins_home"
      storage_account_name = azurerm_storage_account.aci_storage.name
      storage_account_key  = azurerm_storage_account.aci_storage.primary_access_key
      share_name           = azurerm_storage_share.container_share.name
    }
  }
}

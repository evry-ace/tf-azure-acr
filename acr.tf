resource "azurerm_container_registry" "registry" {
  name                = var.registry_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  admin_enabled       = true
  sku                 = var.sku
}

output "registry_url" {
  value     = azurerm_container_registry.registry.login_server
  sensitive = true
}

output "registry_user" {
  value     = azurerm_container_registry.registry.admin_username
  sensitive = true
}

output "registry_pass" {
  value     = azurerm_container_registry.registry.admin_password
  sensitive = true
}

output "registry_id" {
  value = azurerm_container_registry.registry.id
}

output "registry_configure" {
  value = <<CONFIGURE

Authenticate to the Container registry by running the following command:

$ docker login \
  -u $(terraform output registry_user) \
  -p $(terraform output registry_pass) \
  $(terraform output registry_url)
CONFIGURE
}

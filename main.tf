resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_search_service" "search" {
  name                = "${var.search_name}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location            = "${var.location}"
  sku                 = "${var.sku}"
  replica_count       = "${var.replica_count}"
  partition_count     = "${var.partition_count}"
}

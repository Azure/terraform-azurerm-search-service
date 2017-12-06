module "search" {
  source              = "../../../"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  search_name         = "${var.search_name}"
  sku                 = "${var.sku}"
  replica_count       = "${var.replica_count}"
  partition_count     = "${var.partition_count}"
  hosting_mode        = "${var.hosting_mode}"
  tags                = "${var.tags}"
}

resource "aiven_pg_database" "this" {
  count                  = var.create ? 1 : 0
  project                = var.project
  service_name           = var.service_name
  database_name          = var.database_name
  lc_collate             = var.lc_collate
  lc_ctype               = var.lc_ctype
  termination_protection = var.termination_protection
}
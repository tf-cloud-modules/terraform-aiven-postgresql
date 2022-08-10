provider "aiven" {
}

module "pg" {
  source       = "../.."
  project      = var.project
  service_name = var.service_name
}

module "pg_user" {
  source       = "../../modules/pg_user"
  project      = module.pg.project
  service_name = module.pg.service_name
  username     = var.username
}

module "pg_database" {
  source        = "../../modules/pg_database"
  project       = module.pg.project
  service_name  = module.pg.service_name
  database_name = var.database_name
}